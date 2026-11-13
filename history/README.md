# qtOps history

This repository is the one home of qtOps and of everything that came before
it under the qtMUD name. Its Git history already begins with the pre-Git
qtMUD code. The package itself (`main.rkt`, `things.rkt`, `qualities/`,
`scribblings/`) is the current qtOps.

Copies of qtOps, qtMUD and emsOps were scattered across many archive
repositories. On 2026-11-13 they were consolidated here and the copies
were deleted. This directory holds every file from those copies that was
not already in this repository's history or in another system's own
repository. Each distinct file appears once.

`PROVENANCE.tsv` lists, for every file here, each place it was found.
`LEGACY-DELETION-MANIFEST.md` lists each deleted copy: repository, the
commit before deletion, the path and the file count. Everything deleted
can still be recovered from those repositories' Git history.

Nothing in this directory is part of the Racket package. `info.rkt` omits
`history` from compilation and testing.

## Generations

| Directory | What it is |
|---|---|
| `qtmud-python-1/`, `qtmud-python-2/` | qtMUD in Python (setup.py, Sphinx manual, client/service scripts). |
| `qtmud-crystal/` | qtMUD in Crystal, written as literate Org (`qtmud.org`, `shard.yml`, specs). |
| `qtmud-racket-1/` to `qtmud-racket-3/` | Racket qtMUD website docs, the "recenter" plan, and Gource renders. The Racket code itself is the start of this repository's history. |
| `qtops-snapshots/` | Files from later qtOps snapshots that differ from this repository's history: README variants and a few engine files. |
| `qtops-2026-consolidation/` | The 2026-03 plan to rebuild qtOps as `engine/` plus `library/`, with the one quality it migrated (`notable.rkt`, with tests). |
| `qtops-2026-specifications/` | The 2026-08-29 architecture and work orders for qtOps as a Modeled Unix Dimension. These came from the retired `red-cup-engineering/qtops-services-section`. |
| `emsops-qtmud-library/`, `emsops/` | emsOps, emsenn's extension library on qtOps/qtMUD: qualities, services, webserver, Teraum domains, Scribble sources and rendered docs. |
| `docs/` | Stand-alone qtMUD and emsOps documents: overviews, collected texts and the published qtMUD page. |

## Left out

- Build output: `compiled/`, `.zo`, `.dep`, egg-info, Scribble CSS/JS.
- Husks: `.gitignore` copies, `FUNDING.yml`, `_index.md` stubs.
- Files holding user account credentials (MUD account stores and pickles).
- Material from other systems that was bundled in qtOps-named archives:
  Racket-MUD (see `red-cup-engineering/racket-mud`), teraum-mud and
  teraum-racket-mud (see their `emsenn/2026-07-05-*` repositories).
  Those files remain recoverable from the commits recorded in the manifest.
