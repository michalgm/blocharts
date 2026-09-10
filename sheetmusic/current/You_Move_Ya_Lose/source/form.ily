% Shared section-first form assembly for BLO charts.
%
% Most of this file is Scheme, LilyPond's extension language.  A Scheme
% expression begins with #(...).  A #{ ... #} block switches temporarily
% back to LilyPond syntax and returns the music written inside it; #music
% inserts a Scheme variable into such a block.
%
% A song supplies two pieces of data:
%
%   section-definitions -- an association list (alist) keyed by symbols:
%     ((sectionOne
%        (label . <LilyPond music>)
%        (guide . <LilyPond music>)
%        (melody . <LilyPond music>)
%        ...)
%      ...)
%
%   full-form -- a list describing the order in which those sections occur:
%     (intro sectionOne (sectionTwo (fine-after . #t)))
%
% A bare name such as sectionOne is a Scheme symbol, not a variable or string.
% A parenthesized occurrence can override presentation properties for that one
% appearance of a section.  Scheme's #t and #f mean true and false.
%
% Two assemblers consume this data:
%   assemble-form       builds the actual notes for one instrument;
%   assemble-form-guide builds invisible timing plus labels, breaks, barlines,
%                       and navigation marks to overlay on the instrument.
%
% validate-section-lengths checks the data before either assembler uses it.  It
% discovers the instrument fields, requires every section to define all of
% them, and requires each part to have the same duration as that section's
% guide.

% Return the section-name symbol from either supported occurrence form:
%   sectionOne                         => sectionOne
%   (sectionOne (break-after . #f))    => sectionOne
#(define (form-entry-name entry)
  (if (symbol? entry) entry (car entry)))

% A segno-repeat form entry has the shape
%   (segno-repeat "Coda label" section ...)
% It keeps the printed navigation and unfolded MIDI order in the same form.
% `pair?' distinguishes a list from a bare symbol, and `eq?' compares symbols.
#(define (segno-repeat-entry? entry)
  (and (pair? entry) (eq? (car entry) 'segno-repeat)))

% cadr is the second item, here the text used for the Coda section label.
#(define (segno-repeat-entry-label entry)
  (cadr entry))

% cddr drops the first two items, leaving the nested list of form sections.
#(define (segno-repeat-entry-form entry)
  (cddr entry))

% A segno-with-ending entry has the shape
%   (segno-with-ending "Coda label" (repeated sections ...) (first-pass sections ...))
% Play the body, the first-pass ending, the body again, then continue at Coda.
% Unlike segno-repeat, this places the coda exit before the first-pass ending.
#(define (segno-with-ending-entry? entry)
  (and (pair? entry) (eq? (car entry) 'segno-with-ending)))

#(define (segno-with-ending-body entry) (caddr entry))
#(define (segno-with-ending-tail entry) (cadddr entry))

#(define (make-segno-with-ending music ending)
  #{ \repeat volta 2 { #music \volta 1 { #ending } } #})

% As in make-segno-guide, native navigation runs on plain skips, keeping
% jump points outside the section guides' nested first/second endings.
% The playable guide retains its repeats so it also unfolds in time with parts.
#(define (make-segno-with-ending-guide music ending coda-label)
  (let ((body-skip (skip-of-length music))
        (ending-skip (skip-of-length ending)))
    #{
      \set Score.dalSegnoTextFormatter =
        #(lambda (context return-count marks)
           (make-line-markup
            (list "D.S. al" coda-label "(with repeats)")))
      <<
        { #(make-segno-with-ending #{ #music \break #} ending) }
        {
          \repeat segno 2 {
            #body-skip
            \once \override Score.CodaMark.break-visibility = #end-of-line-visible
            \once \override Score.CodaMark.self-alignment-X = #RIGHT
            \set Score.codaMarkFormatter =
              #(lambda (mark context) (make-line-markup (list "To" coda-label)))
            \alternative {
              \volta 1 { #ending-skip }
              \volta 2 \volta #'() {
                \section
                \sectionLabel #coda-label
              }
            }
          }
        }
      >>
      \unset Score.codaMarkFormatter
      \break
    #}))

% A volta-repeat form entry has the shape
%   (volta-repeat count "heading" "pass label" section ...)
% For example, it can describe one written solo form that is played twice.
% Use #f for the heading when the first section already identifies the block.
#(define (volta-repeat-entry? entry)
  (and (pair? entry) (eq? (car entry) 'volta-repeat)))

% These small accessors give names to the positional fields above.  cadr,
% caddr, and cadddr return the second, third, and fourth list items;
% cddddr drops the first four and returns the remaining section list.
#(define (volta-repeat-entry-count entry)
  (cadr entry))

#(define (volta-repeat-entry-heading entry)
  (caddr entry))

#(define (volta-repeat-entry-label entry)
  (cadddr entry))

#(define (volta-repeat-entry-form entry)
  (cddddr entry))

% The instrument music needs repeat semantics for unfolded MIDI, but its
% navigation is engraved once by the form guide below.  A volta repeat unfolds
% predictably for MIDI; the corresponding segno symbols are supplied separately
% by make-segno-guide so they are not duplicated on every staff.
#(define (make-segno-repeat music)
  #{ \repeat volta 2 { #music } #})

% Build the return-instruction formatter from the same destination label used
% below.  In this form both passes contain identical music and Coda follows the
% repeated passage directly, so inventing an empty second alternative produces
% invalid engraving.  Supplying the wording here keeps the honest simple segno
% repeat while ensuring its instruction and destination share one source of
% truth.
#(define (make-dal-segno-al-coda-formatter coda-label)
  (lambda (context return-count marks)
    (make-line-markup (list "D.S. al" coda-label))))

% Give the invisible form guide the sole segno repeat. Its plain skip avoids
% ambiguous jump points when the visible guide ends with nested volta endings.
% `skip-of-length' makes silent spacer music exactly as long as `music'.  The
% simultaneous << ... >> block therefore overlays two equal-length streams:
% the normal section guide (labels, breaks, etc.) and the native segno repeat.
#(define (make-segno-guide music coda-label)
  (let ((navigation (skip-of-length music)))
    #{
      \set Score.dalSegnoTextFormatter =
        #(make-dal-segno-al-coda-formatter coda-label)
      <<
        { #music }
        { \repeat segno 2 { #navigation } }
      >>
      \section
      \sectionLabel #coda-label
      \break
    #}))

% Build a repeated block used for the solo form.
%
% show-navigation? is #t only while building the shared form guide.  That copy
% receives the explanatory markup and final line break.  Each instrument's
% playable music still receives the repeat itself, but not duplicate text.
#(define (make-volta-repeat
          music repeat-count heading pass-label show-navigation?)
  (if show-navigation?
      #{
        s1*0^#(make-column-markup
                (append
                 (if heading (list (make-bold-markup heading)) '())
                 (list
                  (make-bold-markup
                   (format #f "Entire solo form ~ax" repeat-count))
                  (make-italic-markup pass-label))))
        \repeat volta #repeat-count { #music }
        \textEndMark \markup \italic "Repeat entire solo form"
        \break
      #}
      #{ \repeat volta #repeat-count { #music } #}))

% Look up a property on a section definition, returning `default' when it is
% absent.  `assq' searches an alist whose keys are Scheme symbols.  An alist
% entry such as (break-after . #f) is a pair: car is the key and cdr is #f.
#(define (section-property-or-default definitions section-name property default)
  (let ((entry
         (assq property (cdr (section-definition definitions section-name)))))
    (if entry (cdr entry) default)))

% Resolve a presentation property for one occurrence.  An occurrence-level
% override wins; otherwise use the section-level value; otherwise use default.
% This is how, for example, one occurrence may request Fine without creating a
% second definition of the underlying musical section.
#(define (form-entry-property definitions entry property default)
  (let ((override (and (pair? entry) (assq property (cdr entry)))))
    (if override
        (cdr override)
        (section-property-or-default
         definitions (form-entry-name entry) property default))))

% Resolve a required property, again allowing an occurrence override.  Unlike
% form-entry-property, this deliberately has no fallback default; it delegates
% to section-property, which reports a useful LilyPond error if it is missing.
#(define (form-entry-section-property definitions entry property)
  (let ((override (and (pair? entry) (assq property (cdr entry)))))
    (if override
        (cdr override)
        (section-property definitions (form-entry-name entry) property))))

% Find the complete definition associated with a section-name symbol.
#(define (section-definition definitions section-name)
  (let ((section (assq section-name definitions)))
    (if section
        section
        (ly:error "No definition for section ~a" section-name))))

% Find one required field inside a section, such as 'bass or 'guide.
% The leading apostrophe used at call sites quotes a name into a Scheme symbol.
#(define (section-property definitions section-name property)
  (let ((entry
         (assq property (cdr (section-definition definitions section-name)))))
    (if entry
        (cdr entry)
        (ly:error "No ~a value for section ~a" property section-name))))

% These fields describe or format a section rather than supplying an instrument
% part.  Everything else whose value is a LilyPond music object is considered a
% part.  Taking the union across every section means a part missing from even
% the first section is still discovered elsewhere and reported.
#(define section-metadata-properties
  '(label guide break-after bar-after fine-after))

#(define (section-part-names definitions)
  (let section-loop ((sections definitions) (parts '()))
    (if (null? sections)
        parts
        (let property-loop
          ((properties (cdr (car sections))) (found parts))
          (if (null? properties)
              (section-loop (cdr sections) found)
              (let* ((property (car properties))
                     (name (car property))
                     (value (cdr property)))
                (property-loop
                 (cdr properties)
                 (if (and (ly:music? value)
                          (not (memq name section-metadata-properties))
                          (not (memq name found)))
                     (append found (list name))
                     found))))))))

% Moments are LilyPond's exact representation of musical time.  Comparing in
% both directions avoids relying on the printed representation of a Moment.
#(define (music-moments-equal? left right)
  (and (not (ly:moment<? left right))
       (not (ly:moment<? right left))))

% Validate one complete section registry.  The guide is the canonical duration
% because it is the timing stream used to place section-wide labels and breaks.
% ly:error aborts compilation and names the precise section and part, turning a
% subtle engraving misalignment into an immediate source error.
#(define (validate-section-lengths definitions)
  (let ((part-names (section-part-names definitions)))
    (for-each
     (lambda (section)
       (let* ((section-name (car section))
              (guide (section-property definitions section-name 'guide))
              (expected-length (ly:music-length guide)))
         (for-each
          (lambda (part-name)
            (let ((part-entry (assq part-name (cdr section))))
              (if (not part-entry)
                  (ly:error
                   "Section ~a has no ~a part" section-name part-name)
                  (let ((part (cdr part-entry)))
                    (if (not (ly:music? part))
                        (ly:error
                         "Section ~a: ~a is not music" section-name part-name)
                        (let ((actual-length (ly:music-length part)))
                          (if (not (music-moments-equal?
                                    actual-length expected-length))
                              (ly:error
                               "Section ~a: ~a has length ~a; guide has length ~a"
                               section-name part-name
                               actual-length expected-length))))))))
          part-names)))
     definitions)))

% Assemble the playable music for a single instrument by walking `form' in
% order.  Nested navigation entries recurse into this same function.  Ordinary
% entries select the requested instrument field from their section definition.
%
% make-sequential-music is Scheme's equivalent of a LilyPond { ... } sequence.
% Music objects are mutable internally, so ly:music-deep-copy prevents the same
% object from being reused and modified when a section occurs more than once.
#(define (assemble-form definitions instrument form)
  (make-sequential-music
   (map
    (lambda (entry)
      (cond
       ((segno-with-ending-entry? entry)
        (make-segno-with-ending
         (assemble-form definitions instrument (segno-with-ending-body entry))
         (assemble-form definitions instrument (segno-with-ending-tail entry))))
       ((segno-repeat-entry? entry)
        (make-segno-repeat
         (assemble-form
          definitions instrument (segno-repeat-entry-form entry))))
       ((volta-repeat-entry? entry)
        (make-volta-repeat
         (assemble-form
          definitions instrument (volta-repeat-entry-form entry))
         (volta-repeat-entry-count entry)
         (volta-repeat-entry-heading entry)
         (volta-repeat-entry-label entry)
         #f))
       (else
        (ly:music-deep-copy
         (section-property definitions (form-entry-name entry) instrument)))))
    form)))

% Small reusable LilyPond music objects used by the guide assembler.
#(define section-break #{ \break #})
#(define fine-ending #{ \bar "|." #})

% Turn a barline name such as "||" into LilyPond music.  Rejecting other types
% catches misspelled or malformed section data close to its source.
#(define (form-barline bar-type)
  (if (string? bar-type)
      #{ \bar #bar-type #}
      (ly:error "bar-after must be a bar-line string, not ~a" bar-type)))

% The standard labeling policy: read the required 'label field for the section
% occurrence.  label-maker is passed as a function so a chart could substitute
% a different policy without changing the assembly machinery.  `index' is
% accepted for that extension point even though this default policy ignores it.
#(define (default-form-label definitions entry index)
  (form-entry-section-property definitions entry 'label))

% Build the guide music for one ordinary section occurrence, in this order:
%   1. its label, when truthy;
%   2. its invisible timing guide;
%   3. Fine or an ordinary requested barline (Fine takes precedence);
%   4. a system break, unless disabled or this is the final form entry.
%
% Defaults are intentionally presentation-friendly: sections break by default,
% while bar-after and fine-after do nothing unless explicitly enabled.
#(define (form-guide-entry definitions entry index last? label-maker)
  (let* ((section-name (form-entry-name entry))
         (label (label-maker definitions entry index))
         (break-after
          (form-entry-property definitions entry 'break-after #t))
         (bar-after
          (form-entry-property definitions entry 'bar-after #f))
         (fine-after
          (form-entry-property definitions entry 'fine-after #f)))
    (make-sequential-music
     (append
      (if label (list (ly:music-deep-copy label)) '())
      (list
       (ly:music-deep-copy
        (section-property definitions section-name 'guide)))
      (cond
       (fine-after (list (ly:music-deep-copy fine-ending)))
       (bar-after (list (form-barline bar-after)))
       (else '()))
      (if (and break-after (not last?))
          (list (ly:music-deep-copy section-break))
          '())))))

% Assemble the shared guide by walking the form in order.  This mirrors
% assemble-form, but navigation wrappers are created here with their printed
% marks and explanatory text enabled.  `let loop' is a named local recursive
% function: it consumes one entry, increments index, then processes the rest.
% The result is converted to one sequential LilyPond music expression.
#(define (assemble-form-guide definitions form label-maker)
  (make-sequential-music
   (let loop ((entries form) (index 0))
     (if (null? entries)
         '()
         (cons
          (cond
           ((segno-with-ending-entry? (car entries))
            (make-segno-with-ending-guide
             (assemble-form-guide
              definitions (segno-with-ending-body (car entries)) label-maker)
             (assemble-form-guide
              definitions (segno-with-ending-tail (car entries)) label-maker)
             (segno-repeat-entry-label (car entries))))
           ((segno-repeat-entry? (car entries))
            (make-segno-guide
             (assemble-form-guide
              definitions
              (segno-repeat-entry-form (car entries))
              label-maker)
             (segno-repeat-entry-label (car entries))))
           ((volta-repeat-entry? (car entries))
            (make-volta-repeat
             (assemble-form-guide
              definitions
              (volta-repeat-entry-form (car entries))
              label-maker)
             (volta-repeat-entry-count (car entries))
             (volta-repeat-entry-heading (car entries))
             (volta-repeat-entry-label (car entries))
             #t))
           (else
            (form-guide-entry
             definitions (car entries) index (null? (cdr entries)) label-maker)))
          (loop (cdr entries) (+ index 1)))))))
