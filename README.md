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
# or, if that doesn't work
git submodule update --init --recursive
```

### Generating charts from lilypond source
```
./generate_from_lilypond <output_dir> [lilypond_files]

# Example:
./generate_from_lilypond sheetmusic/current/ lilypond_source_files/roma-rama.ly 
```

### Updating charts on the BLO website
Make sure you have committed and pushed any changes in the sheetmusic directory

#### Configure SSH access

The sync script connects to the webserver using the `blo` SSH alias. If you do
not already have an SSH key, generate a dedicated Ed25519 key:

```sh
ssh-keygen -t ed25519 -f ~/.ssh/blo_ed25519 -C "your-email@example.com"
```

Send the generated public key (`~/.ssh/blo_ed25519.pub`) to a BLO website
administrator so they can add it to the `blo` account's `authorized_keys` file.
Never share or commit the private key (`~/.ssh/blo_ed25519`).

Add [the SSH config from the wiki](https://members.brassliberation.org/doc/ssh-config-R3Akoy6n22) to `~/.ssh/config` (create the file if necessary).

Protect the SSH files and test the connection:

```sh
chmod 700 ~/.ssh
chmod 600 ~/.ssh/config ~/.ssh/blo_ed25519
ssh blo
```

The host name, user name, port, and public key are not secrets. The private key
is sensitive and must remain only on the machine where it was generated.

Run `./sync_sheetmusic.sh`

This syncs a repo checkout on the webserver. The webserver has symlinks in the public_html directory pointing to the directories under sheetmusic/ in the checkout. The sheetmusic.php file processes the files/directories in the subdir and formats it into the sheetmusic index page.