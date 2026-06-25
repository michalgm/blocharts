# blocharts
Sheet Music of the Brass Liberation Orchestra

This is a repository of charts for songs played by the Brass Liberation Orchestra.
The output is available on our website at http://brassliberation.org/sheetmusic.php

Chart source files are in lilypond format, in the `lilypond_source_files` directory, and are formatted to work with pondscum (https://github.com/michalgm/pondscum), a tool to generate chart PDFs in various keys, clefs, and formats automatically from lilypond files.

Chart output files are under `sheetmusic/[current|working|archive]`

## Updating charts

### Initial setup
```
git clone https://github.com/michalgm/blocharts.git
cd blocharts
# fetch latest pondscum
git pull --recurse-submodules
```

### Generating charts from lilypond source
```
./generate_from_lilypond <output_dir> [lilypond_files]

# Example:
./generate_from_lilypond lilypond_source_files/roma-rama.ly sheetmusic/current/
```

### Updating charts on the BLO website
Make sure you have committed and pushed any changes in the sheetmusic directory
(NOTE this requires you have a config for 'blo' in your ssh config)

Run `./sync_sheetmusic.sh`

This syncs a repo checkout on the webserver. The webserver has symlinks in the public_html directory pointing to the directories under sheetmusic/ in the checkout. The sheetmusic.php file processes the files/directories in the subdir and formats it into the sheetmusic index page.