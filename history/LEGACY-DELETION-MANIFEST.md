# qtOps legacy deletion manifest

On 2026-11-13 the copies of qtOps, qtMUD and emsOps listed below were deleted. Each file in them was in one of three places first: this repository's history, `history/` (see `PROVENANCE.tsv`), or another system's own repository (Racket-MUD, teraum-mud, teraum-racket-mud). The exceptions are build output, `.gitignore` and `FUNDING.yml` husks, `_index.md` stubs, and files holding MUD account credentials. Those were dropped on purpose.

Every deleted path can be restored from the **Before** commit of its repository, for example `git checkout <before> -- <path>`. **Object** is the Git object ID (tree or blob) of the path at that commit.

Three further copies were retired without file deletions:

- `red-cup-engineering/qtops-services-section`: its two 2026-08-29 specifications are in `history/qtops-2026-specifications/`. The repository is archived.
- `emsenn/2026-06-17-superrepo-library` mounted this repository a second time. Its main branch (745adf7) no longer mounts anything, and `emsenn/2026-06-17-superrepo-legacy` now pins that commit.
- `red-cup-engineering/web-computer-game-system-engineering-services-section` mounted the MUD legacy repository at `services/mud-services-section/lib/legacy`. That mount is removed (e25d21e). The repository was renamed to `red-cup-engineering/computer-mud-systems-engineering-services-section-legacy` and is mounted by the MUD section.

## 561-group/561-group-relationality-repo-services-section

Before: `333154043bb5929061d6af643b4982b5e38ac8d1` · After: `8523e26a6e6d72c9f11a08f06f28a659ad5c9d21`

| Path | Files | Object |
|---|---:|---|
| `departments/command/personnel/emsenn/projects/archive/emsops-qtmud-library` | 39 | `2ed4c6a81616` |
| `engineering/archive/qtops` | 123 | `29d851fec1e4` |
| `library/domains/relationality/content/triage/archive/qtmud` | 2 | `8c2289bf272c` |
| `library/triage/text-to-process-someday/org/a294-20210329-org/emsops.org` | 1 | `8d517dd1aaa4` |
| `library/triage/text-to-process-someday/org/alfa/triage/src/build/--no-color/spec/qtmud_spec.cr` | 1 | `5d1274d29d6a` |
| `library/triage/text-to-process-someday/org/alfa/triage/src/build/qtmud` | 3 | `cd40b91c7e64` |
| `library/triage/text-to-process-someday/org/alfa/triage/src/qtmud` | 2 | `53faab6c66ad` |
| `library/triage/text-to-process-someday/org/alfa/triage/src/qtmud.org` | 1 | `78b7e9de3a0b` |
| `library/triage/text-to-process-someday/org/alfa/triage/will-take-time/qtmud` | 19 | `b88476155f94` |
| `library/triage/text-to-process-someday/org/alfa/triage/will-take-time/qtmud2` | 22 | `39e08818b4f6` |
| `library/triage/text-to-process-someday/personal/projects/archive/software/racket/racket-qtmud` | 14 | `8411e7c4a931` |
| `library/triage/text-to-process-someday/personal/projects/archive/software/racket/racket-qtmud-2` | 2 | `1c7b8013358e` |
| `library/triage/text-to-process-someday/personal/projects/archive/software/racket/racket-qtmud-3` | 4 | `32b09790c126` |

## causeway-services/emsenn-services-section

Before: `efac5dfa49591276243d346b345eb793d41fc825` · After: `d194f616006886446f90cf6e094719857553113c`

| Path | Files | Object |
|---|---:|---|
| `content/text/triage/emacs-services-section/raw-emacs-recovery-2026-07-29/network-github/emsenn/emacs-content-references-2026-07-29-complete/civics/tree/operations/engineering/triage/operations/engineering/research/historical-mud-experiments/triage/qtops` | 3 | `323ff7af2d24` |
| `content/text/triage/emacs-services-section/raw-emacs-recovery-2026-07-29/network-github/emsenn/emacs-content-references-2026-07-29-complete/civics/tree/operations/engineering/triage/operations/engineering/research/historical-mud-experiments/triage/racket-mud-ecosystem/emsops-qtmud-library` | 1 | `c9c085414da5` |
| `content/text/triage/emacs-services-section/raw-emacs-recovery-2026-07-29/network-github/emsenn/emacs-content-references-2026-07-29-complete/civics/tree/operations/engineering/triage/operations/engineering/research/historical-mud-experiments/triage/racket-mud-ecosystem/qtops` | 3 | `323ff7af2d24` |
| `content/text/triage/emacs-services-section/raw-emacs-recovery-2026-07-29/network-github/emsenn/emacs-content-references-2026-07-29-complete/content/tree/triage/library/emsops` | 1 | `c9c085414da5` |
| `content/text/triage/emacs-services-section/raw-emacs-recovery-2026-07-29/network-github/emsenn/emacs-content-references-2026-07-29-complete/content/tree/triage/library/qtops` | 1 | `55a998bbf4b8` |
| `content/text/triage/emacs-services-section/raw-emacs-recovery-2026-07-29/network-github/emsenn/emacs-content-references-2026-07-29-complete/content/tree/triage/org/a294-20210329-org/emsops.org` | 1 | `8d517dd1aaa4` |
| `content/text/triage/emacs-services-section/raw-emacs-recovery-2026-07-29/network-github/emsenn/emacs-content-references-2026-07-29-complete/content/tree/triage/org/alfa/triage/src/qtmud.org` | 1 | `78b7e9de3a0b` |
| `content/text/triage/emacs-services-section/raw-emacs-recovery-2026-07-29/network-github/emsenn/emacs-content-references-2026-07-29-complete/content/tree/triage/racket/qtmud` | 1 | `55a998bbf4b8` |
| `content/text/triage/emacs-services-section/raw-emacs-recovery-2026-07-29/network-github/emsenn/emacs-content-references-2026-07-29-complete/content/tree/triage/racket/qtmud2` | 1 | `4f132109eab6` |

## causeway-services/emsenn-services-section-legacy

Before: `2513d85ebc0047c6f92b9bd4274a867d26dedb28` · After: `a5ab7b65365b8da1ce394a1044934ca1e8486ccc`

| Path | Files | Object |
|---|---:|---|
| `2026-06-17-collected-texts-provenance-corpus/qtmud--002890.org` | 1 | `05dabfd86dc7` |
| `2026-06-17-emsops` | 79 | `f5ac5ff7bead` |
| `emsenn-2022-05-26-qtops` | 41 | `472303b4473c` |

## causeway-services/teraum-services-section

Before: `872ee846d66c8a683ca09b536282d20d9b3c3d9a` · After: `42a5992971ebfaf9e88b3e9c69b3a83bb6308a28`

| Path | Files | Object |
|---|---:|---|
| `tab/docs/collected-texts/qtmud--002890.org` | 1 | `05dabfd86dc7` |
| `tab/docs/qtmud-relationality.md` | 1 | `dc6948c7098f` |
| `tab/docs/sscu-sprint/qtmud-old-archive` | 1 | `fc51b355d54d` |
| `tab/docs/sscu-sprint/qtmud-research` | 1 | `c2f86d321b62` |
| `tab/from-engineering-interactive-computation-toys/mud/qtops` | 6 | `e67661b58e19` |
| `tab/from-mud-tab-emsenn/docs-emsenn-net-pub/qtmud.html` | 1 | `ac4e39396a62` |
| `tab/worlds/teraum-mud-qtops-research` | 40 | `ce130338cf02` |

## emsenn/2025-12-18-relationality

Before: `728c9ae55265c3e68ed422d24d285010f31aca8b` · After: `a65b18d0142bd7c7e324b39422a0c29948f36b8f`

| Path | Files | Object |
|---|---:|---|
| `content/triage/archive/qtmud` | 1 | `cabdaca3a0ba` |

## emsenn/2026-06-17-wsl-home-archive

Before: `488b0b88ef9814e9807e42bb418eaf33041a0e48` · After: `8003f126fbec90bf3aab7a0bddd351751059e053`

| Path | Files | Object |
|---|---:|---|
| `content/imports/collected-texts/qtmud--002890.org` | 1 | `05dabfd86dc7` |
| `content/imports/ems-pub/emsenn-net/qtmud.html` | 1 | `ac4e39396a62` |

## emsenn/20260505-relationality

Before: `c052c001f76bc154e472359ae7bd4c9388f161f2` · After: `a4e14f7cdc0fdcd78c7b6c5f87cb086972f6f010`

| Path | Files | Object |
|---|---:|---|
| `content/triage/archive/qtmud` | 1 | `cabdaca3a0ba` |

## emsenn/civics

Before: `2c271a3cc9de6307b63b498098d2dabd957ef55a` · After: `e33e5f40c69bbbdde9a386192e1b1b10898d7372`

| Path | Files | Object |
|---|---:|---|
| `operations/engineering/toys/mud/qtops` | 1953 | `8de75c4dce71` |
| `operations/engineering/triage/library/humanities/theories/philosophy/theories/relationality/triage/provenance/relationality-archive/sscu-sprint/content/triage/archive/qtmud` | 2 | `9eb03531c9df` |
| `operations/engineering/triage/operations/command/personnel/emsenn/triage/projects/archive/emsops-qtmud-library` | 139 | `87759f51b34e` |
| `operations/engineering/triage/operations/engineering/research/historical-mud-experiments/triage/qtops` | 246 | `0b3f34908a2e` |
| `operations/engineering/triage/operations/engineering/research/historical-mud-experiments/triage/racket-mud-ecosystem/emsops-qtmud-library` | 139 | `87759f51b34e` |
| `operations/engineering/triage/operations/engineering/research/historical-mud-experiments/triage/racket-mud-ecosystem/qtops` | 167 | `3cb5ab9ee20b` |

## emsenn/content

Before: `5babe7ac50dede5d376d903da58e57fc23058ad0` · After: `db880ac9033b0d1e703998396d6040f87468b3b0`

| Path | Files | Object |
|---|---:|---|
| `triage/library/emsops` | 139 | `87759f51b34e` |
| `triage/library/qtops` | 81 | `f8e1acbad187` |
| `triage/org/a294-20210329-org/emsops.org` | 1 | `8d517dd1aaa4` |
| `triage/org/alfa/triage/src/build/--no-color/spec/qtmud_spec.cr` | 1 | `5d1274d29d6a` |
| `triage/org/alfa/triage/src/build/--no-color/src/qtmud.cr` | 1 | `287dde8475e3` |
| `triage/org/alfa/triage/src/build/qtmud` | 3 | `cd40b91c7e64` |
| `triage/org/alfa/triage/src/qtmud` | 2 | `53faab6c66ad` |
| `triage/org/alfa/triage/src/qtmud.org` | 1 | `78b7e9de3a0b` |
| `triage/org/alfa/triage/will-take-time/qtmud` | 40 | `e31c2471b7df` |
| `triage/org/alfa/triage/will-take-time/qtmud2` | 34 | `92f78ae853fe` |
| `triage/racket/archive/qtmud2` | 20 | `b8498598a62d` |
| `triage/racket/qtmud` | 27 | `960aff2ae7a9` |
| `triage/racket/qtmud2` | 13 | `2a5328cae4f2` |

## emsenn/emsenn-archive-code

Before: `3c69d5cf9d3bec484f1dc22067ed9623b1bab7c6` · After: `39b2209066b586123710d3fbc00ae32e2308856d`

| Path | Files | Object |
|---|---:|---|
| `topical/arts/ludics/mud/qtops` | 376 | `ba71d6446dee` |
| `topical/arts/ludics/mud/tab/python/emsops-qtmud-library` | 124 | `e480adb1dc6d` |
| `topical/arts/ludics/mud/tab/python/qtmud-misc` | 75 | `6e7e3690659b` |
| `topical/arts/ludics/mud/tab/racket/emsops-qualities` | 3 | `fc008a349b66` |
| `topical/arts/ludics/mud/tab/racket/emsops-scribblings` | 2 | `6d57677a347c` |
| `topical/arts/ludics/mud/tab/racket/personal-projects-racket-bcf/racket-qtmud` | 13 | `0d4e7d2d0d38` |
| `topical/arts/ludics/mud/tab/racket/personal-projects-racket-bcf/racket-qtmud-2` | 12 | `0a348f18a427` |
| `topical/arts/ludics/mud/tab/racket/personal-projects-racket-bcf/racket-qtmud-3` | 6 | `8b3c2787c9d4` |
| `topical/arts/ludics/mud/tab/racket/personal-projects-racket-research/racket-qtmud` | 7 | `30145de3f929` |
| `topical/arts/ludics/mud/tab/racket/personal-projects-racket-research/racket-qtmud-2` | 13 | `99ca094d913a` |
| `topical/arts/ludics/mud/tab/racket/racket-mud-ecosystem-qtops-research` | 49 | `c3d182cb574c` |
| `topical/arts/ludics/mud/tab/racket/racket-mud-ecosystem/qtops` | 56 | `d7348cad0ebc` |
| `topical/arts/ludics/mud/tab/racket/racket-mud-qtops-relationality` | 11 | `02daf486407e` |
| `topical/arts/ludics/mud/tab/racket/racket-mud-qtops-research` | 6 | `0265b07bf835` |
| `topical/arts/ludics/mud/tab/racket/teraum-racket-mud-qtops` | 1 | `c4b60b066982` |
| `topical/information/561-group/superrepo/library/emsops` | 68 | `e446b85a829a` |

## emsenn/emsenn-archive-org

Before: `ad31497bcb7014bd8aca814ee6aea578a010eb21` · After: `bc22492807411489802cb05e200d7713b5cdf021`

| Path | Files | Object |
|---|---:|---|
| `operations/engineering/triage/old-content-triage/text-to-process-someday/org/a294-20210329-org/emsops.org` | 1 | `8d517dd1aaa4` |
| `research/operations/engineering/triage/content/speculative/other/from-text-to-process-someday/org/a294-20210329-org/emsops.org` | 1 | `8d517dd1aaa4` |

## emsenn/research-content

Before: `8a48eab3598f1f60fff1a20e81c7b28bb06ba64c` · After: `f6e72bfdd003bc1bcfd44bb719adbe2d2b84c2f3`

| Path | Files | Object |
|---|---:|---|
| `_archive/library/arts/ludics/archive/multi-user-dungeon/tab/docs/collected-texts/qtmud--002890.org` | 1 | `05dabfd86dc7` |
| `_archive/library/arts/ludics/archive/multi-user-dungeon/tab/docs/qtmud-relationality.md` | 1 | `dc6948c7098f` |
| `_archive/library/arts/ludics/archive/multi-user-dungeon/tab/docs/sscu-sprint/qtmud-old-archive` | 1 | `fc51b355d54d` |
| `_archive/library/arts/ludics/archive/multi-user-dungeon/tab/docs/sscu-sprint/qtmud-research` | 1 | `c2f86d321b62` |
| `_archive/library/arts/ludics/archive/multi-user-dungeon/tab/from-engineering-interactive-computation-toys/mud/qtops` | 6 | `e67661b58e19` |
| `_archive/library/arts/ludics/archive/multi-user-dungeon/tab/from-mud-tab-emsenn/docs-emsenn-net-pub/qtmud.html` | 1 | `ac4e39396a62` |
| `_archive/library/arts/ludics/archive/multi-user-dungeon/tab/worlds/teraum-mud-qtops-research` | 40 | `ce130338cf02` |

## lenticule-science/relationality-science-services-section

Before: `19932f4d96854a0ace16f56804f0c3dad3c0f1ff` · After: `fb09f6e1c7526ea9076fe61ee6a33c0457d6a2b8`

| Path | Files | Object |
|---|---:|---|
| `lib/legacy/2026-11-06-2026-06-17-archive-emsenn-net-6cc4dec7/src/lib/code/2026/03/11/topical/arts/ludics/mud/qtops` | 1 | `d12ff9f79e6b` |
| `lib/legacy/2026-11-06-2026-06-17-archive-emsenn-net-6cc4dec7/src/lib/code/2026/03/11/topical/arts/ludics/mud/tab/racket/racket-mud-qtops-relationality` | 11 | `02daf486407e` |

## red-cup-engineering/2026-06-17-archive-emsenn-net

Before: `d42816f2a1bd4b22b5b604d4fbe0ab65f56257ad` · After: `947862a29362bfd8409f1e6df3cd020335991f10`

| Path | Files | Object |
|---|---:|---|
| `content/emsenn-archive-org/operations/engineering/triage/old-content-triage/text-to-process-someday/org/a294-20210329-org/emsops.org` | 1 | `8d517dd1aaa4` |
| `content/emsenn-archive-org/research/operations/engineering/triage/content/speculative/other/from-text-to-process-someday/org/a294-20210329-org/emsops.org` | 1 | `8d517dd1aaa4` |
| `preservation/wsl-home-archive/content/imports/collected-texts/qtmud--002890.org` | 1 | `05dabfd86dc7` |
| `preservation/wsl-home-archive/content/imports/ems-pub/emsenn-net/qtmud.html` | 1 | `ac4e39396a62` |
| `preservation/wsl-home-archive/src/lib/git/library/relationality/content/triage/archive/qtmud` | 1 | `1d6cb5b75a71` |
| `preservation/wsl-home-archive/src/lib/git/research/library/emsops` | 79 | `f5ac5ff7bead` |
| `preservation/wsl-home-archive/src/lib/git/research/library/qtops` | 81 | `fdfdb69d853b` |
| `preservation/wsl-home-archive/src/lib/git/research/library/relationality/content/triage/archive/qtmud` | 1 | `1d6cb5b75a71` |
| `preservation/wsl-home-archive/src/lib/local/relationality-legacy/content/triage/archive/qtmud` | 1 | `cabdaca3a0ba` |
| `preservation/wsl-home-archive/src/lib/local/superrepo-legacy/library/2022-05-26-qtops` | 81 | `c0d34e18ae0e` |
| `preservation/wsl-home-archive/src/lib/local/superrepo-legacy/library/2025-12-18-relationality/content/triage/archive/qtmud` | 1 | `cabdaca3a0ba` |
| `preservation/wsl-home-archive/src/lib/local/superrepo-legacy/library/2026-07-05-emsops` | 79 | `cad843c5dffd` |
| `src/lib/code/2026/03/11/topical/arts/ludics/mud/qtops` | 376 | `ba71d6446dee` |
| `src/lib/code/2026/03/11/topical/arts/ludics/mud/tab/python/emsops-qtmud-library` | 67 | `595e5f5081a8` |
| `src/lib/code/2026/03/11/topical/arts/ludics/mud/tab/python/qtmud-misc` | 74 | `292c7bd0978b` |
| `src/lib/code/2026/03/11/topical/arts/ludics/mud/tab/racket/emsops-qualities` | 3 | `fc008a349b66` |
| `src/lib/code/2026/03/11/topical/arts/ludics/mud/tab/racket/emsops-scribblings` | 2 | `6d57677a347c` |
| `src/lib/code/2026/03/11/topical/arts/ludics/mud/tab/racket/personal-projects-racket-bcf/racket-qtmud` | 13 | `0d4e7d2d0d38` |
| `src/lib/code/2026/03/11/topical/arts/ludics/mud/tab/racket/personal-projects-racket-bcf/racket-qtmud-2` | 12 | `0a348f18a427` |
| `src/lib/code/2026/03/11/topical/arts/ludics/mud/tab/racket/personal-projects-racket-bcf/racket-qtmud-3` | 6 | `8b3c2787c9d4` |
| `src/lib/code/2026/03/11/topical/arts/ludics/mud/tab/racket/personal-projects-racket-research/racket-qtmud` | 7 | `30145de3f929` |
| `src/lib/code/2026/03/11/topical/arts/ludics/mud/tab/racket/personal-projects-racket-research/racket-qtmud-2` | 13 | `99ca094d913a` |
| `src/lib/code/2026/03/11/topical/arts/ludics/mud/tab/racket/racket-mud-ecosystem-qtops-research` | 49 | `c3d182cb574c` |
| `src/lib/code/2026/03/11/topical/arts/ludics/mud/tab/racket/racket-mud-ecosystem/qtops` | 56 | `d7348cad0ebc` |
| `src/lib/code/2026/03/11/topical/arts/ludics/mud/tab/racket/racket-mud-qtops-relationality` | 11 | `02daf486407e` |
| `src/lib/code/2026/03/11/topical/arts/ludics/mud/tab/racket/racket-mud-qtops-research` | 6 | `0265b07bf835` |
| `src/lib/code/2026/03/11/topical/information/561-group/superrepo/library/emsops` | 68 | `e446b85a829a` |

## red-cup-engineering/computer-mud-systems-engineering-services-section

Before: `0ec5a263a61df004282431857baf5b5cca056b86` · After: `5173ba72c3206e668db9bca0323373a3b1a10234`

Also removed the apps/2022-05-26-qtops mount; qtOps is now mounted inside lib/legacy.

| Path | Files | Object |
|---|---:|---|
| `lib/legacy/2026-03-11-windows-archive-qtmud-racket` | 48 | `0ff3a480d4d1` |
| `lib/legacy/2026-03-11-windows-archive-qtops-racket` | 5 | `9752af8a0058` |
| `lib/legacy/2026-05-20-qtops` | 5 | `9c3ff66d91eb` |
| `lib/legacy/restored-from-main` | 7 | `8879541b337e` |

## red-cup-engineering/emsenn-engineering-services-section

Before: `830fd81a6bc849f9daea1ecbfa8fc93160cc9830` · After: `c228c8af8bfeb2f212ae5ce5d32e617eb163c481`

| Path | Files | Object |
|---|---:|---|
| `content/text/triage/emacs-services-section/raw-emacs-recovery-2026-07-29/network-github/emsenn/repository-slices-2026-07-29/561-theory/tree/engineering/theories/tech/theories/computing/theories/interactive-computation/theories/multi-user-dungeons/governance/assets/computing/toys/mud/qtops` | 20 | `e43ffa3c9454` |
| `content/text/triage/emacs-services-section/raw-emacs-recovery-2026-07-29/network-github/emsenn/repository-slices-2026-07-29/civics/tree/operations/engineering/toys/mud/qtops` | 20 | `e43ffa3c9454` |
| `lib/legacy/2026-06-17-emsops` | 49 | `51032ae7ebe2` |
| `lib/legacy/emsenn-2022-05-26-qtops` | 41 | `32d2df82347e` |
| `lib/legacy/emsenn-2026-07-05-emsops` | 49 | `8bb3d840da6f` |

## red-cup-engineering/red-cup-engineering-legacy

Before: `f9589559d2610b2c2aa67ca4479274b1e7851b4f` · After: `7d7a5da17578ab9b55979afa15c9f4d808a9824d`

| Path | Files | Object |
|---|---:|---|
| `2026-10-24-archived-snapshot-code/lenticule-science/2026-05-20-mypc-old-research-library-uncaptured-software-residue/residue/operations/engineering/triage/old-content-triage/text-to-process-someday/personal/projects/archive/software/racket/racket-qtmud` | 8 | `b69099e800cc` |
| `2026-10-24-archived-snapshot-code/lenticule-science/2026-05-20-mypc-old-research-library-uncaptured-software-residue/residue/operations/engineering/triage/old-content-triage/text-to-process-someday/personal/projects/archive/software/racket/racket-qtmud-2` | 7 | `bdc171bd91b2` |
| `2026-10-24-archived-snapshot-code/lenticule-science/2026-05-20-mypc-old-research-library-uncaptured-software-residue/residue/operations/engineering/triage/old-content-triage/text-to-process-someday/personal/projects/archive/software/racket/racket-qtmud-3` | 5 | `d97b395fbccf` |

## red-cup-engineering/relationality-repo

Before: `89fae1eed96e03f0b7da05a10e7f3f11c74072bc` · After: `cc42525d5b0248a6c1cf9d0d4727d7b3b7cf08a3`

| Path | Files | Object |
|---|---:|---|
| `departments/command/personnel/emsenn/projects/archive/emsops-qtmud-library` | 100 | `dd4884edca84` |
| `engineering/archive/qtops` | 123 | `2d8866d7038f` |
| `library/triage/text-to-process-someday/org/alfa/triage/will-take-time/qtmud` | 11 | `3dc0944f31c4` |
| `library/triage/text-to-process-someday/org/alfa/triage/will-take-time/qtmud2` | 7 | `249a84cbccbe` |
| `library/triage/text-to-process-someday/personal/projects/archive/software/racket/racket-qtmud` | 15 | `bd14525eaf33` |
| `library/triage/text-to-process-someday/personal/projects/archive/software/racket/racket-qtmud-2` | 23 | `63c31a3fe3a2` |
| `library/triage/text-to-process-someday/personal/projects/archive/software/racket/racket-qtmud-3` | 2 | `812c9315e74b` |
