# Deterministic chart generation

Status: parked for later implementation.

## Goal

Running Pondscum against an unchanged LilyPond source should leave the
blocharts working tree clean. A chart should be replaced only when its source
or rendered musical content has changed.

## Current sources of nondeterminism

1. `pondscum/generate_charts/generate.php` replaces the source tagline with
   the current date. This changes the packaged source and the visible PDF
   footer when generation happens on a different day.
2. LilyPond's Ghostscript PDF step writes fresh XMP timestamps, PDF info dates,
   document UUIDs, and trailer IDs on every run.
3. ZIP archives record the newly generated files' timestamps, so the archive
   changes even when its members have equivalent content.

MIDI output was byte-for-byte stable in local testing.

## Local experiment

The test environment used LilyPond 2.26.0 and Ghostscript 10.07.1.

Setting `SOURCE_DATE_EPOCH`, including with Ghostscript's
`-dUseSOURCE_DATE_EPOCH` option, did not make repeated PDF generation
byte-for-byte deterministic. After masking only the following fields, however,
two otherwise identical PDFs produced the same hash:

- XMP `CreateDate` and `ModifyDate`
- PDF `/CreationDate` and `/ModDate`
- XMP `DocumentID`
- PDF trailer `/ID`

This suggests that content-aware comparison is practical without rendering or
rewriting the final PDF.

## Recommended design

Generate each song into a temporary staging directory instead of deleting its
published directory first.

1. If a published chart already exists, use its current generated tagline date
   for the comparison build. This prevents the footer date from masquerading
   as a musical change.
2. Generate all source, MIDI, PDF, and supporting files in staging.
3. Compare staged files with the published files:
   - Compare text and MIDI files byte-for-byte.
   - Compare PDFs after masking only the volatile metadata fields listed
     above. Do not alter either final PDF merely to perform the comparison.
   - Compare copied include files byte-for-byte.
4. If every non-archive file is equivalent, discard staging and retain the
   existing directory and ZIP unchanged.
5. If meaningful content changed, regenerate with today's tagline date if
   necessary, build the ZIP, and atomically replace the published song
   directory.

This design avoids a one-time rewrite of every existing PDF, preserves useful
metadata in published files, and prevents a failed generation from destroying
the last successful output.

## ZIP handling

Do not compare ZIP bytes to decide whether content changed. If all staged
members are equivalent, retain the existing ZIP. Rebuild it only when a member
has changed.

A deterministic ZIP could still be added later by sorting member paths,
stripping platform-specific extra fields, and normalizing member timestamps,
but it is not required for a clean no-op generation.

## Acceptance checks

- Generating an unchanged song twice leaves `git status` clean on the second
  run.
- The same remains true when the runs occur on different calendar days.
- A changed note, label, form, include, or part produces the expected diffs.
- Removing a part removes its stale generated artifacts.
- A failed generation leaves the current published output intact.
- Older scores that do not use local includes still generate normally.
