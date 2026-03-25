scnprojectsetup
==============

CLI tool for creating VFX project folder structures from `src/config.json`.

Usage
-----
`scnprojectsetup name type destination`

Optional flags:
- `--no-top-folder`: create the project type folder directly in destination
- `-v`, `--verbose`
- `-c`, `--config`

Behavior
--------
- Default (all non-`edit`/`eps` types): create a top project folder first
	- Result pattern: `destination/name/type/...`
- With `--no-top-folder`: skip project-name wrapper
	- Result pattern: `destination/type/...`
- `edit` remains flat (no top project folder)
- `eps` remains episodic at destination root

Examples
--------
- Default top-folder:
	- `scnprojectsetup melange_yessfilm_201106992_260224 adv /Volumes/scn_commercial`
	- Creates under `/Volumes/scn_commercial/melange_yessfilm_201106992_260224/adv`
- Skip top-folder:
	- `scnprojectsetup ekte_kjarlighet_201106993_260325 ftr /Volumes/ekte-kjarlighet --no-top-folder`
	- Creates under `/Volumes/ekte-kjarlighet/ftr`

Build instructions
------------------
For new versions:
1. Update the version in `Makefile`.
2. Run `make dist`.

This clears `dist`, creates a new distribution tarball, and updates `scnprojectsetup.rb` metadata.
All previous built tarballs are kept in `../dist`.

Sandbox test checklist
----------------------
Recommended local validation before pushing:
1. `python3 -m py_compile src/scnprojectsetup`
2. `./src/scnprojectsetup --help`
3. Default top-folder check (`adv` or `ftr`)
4. `--no-top-folder` override check
5. `edit` check in an empty `_edit` destination
6. `edit` failure check in a non-empty `_edit` destination
7. `eps` sanity check (season/episode prompt flow)
