scnprojectsetup
==============

CLI tool for creating  project folder structures

Usage
-----
`scnprojectsetup name type destination`

Optional flags:
- `--no-top-folder`: create the project type folder directly in destination
- `-v`, `--verbose`
- `-c`, `--config`


Supported types:
`adv`     (Advertisement and tv commercial, etc.)
`edit`    (Editorial Project)
`epk`     (Electronic press kit)
`eps`     (Episodic (TV series, multiple episodes))
`ftr`     (Feature)
`pro`    (Promo material)
`shr`    (Short)
`sizzle`  (Sizzle Reel)
`some`    (Social Media)
`tlr`     (Trailer)
`tsr`     (Teaser)
`tst`     (Test project, camera tests, etc.)

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
	- `scnprojectsetup spec-ad_client_201106992_260224 adv /Volumes/scn_commercial`
	- Creates under `/Volumes/scn_commercial/spec-ad_client_201106992_260224/adv`
- Skip top-folder:
	- `scnprojectsetup kjarleik ftr /Volumes/ekte-kjarlighet --no-top-folder`
	- Creates under `/Volumes/kjarleik/ftr`

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
