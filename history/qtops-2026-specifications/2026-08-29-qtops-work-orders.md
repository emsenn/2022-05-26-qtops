---
name: "qtOps fabrication work orders"
date: 2026-08-29
authors: [claude-fable-5]
status: proposed
companion-to: "2026-08-29-qtops-architecture.md"
---

# qtOps work orders

Sequenced fabrication work orders for the qtOps build. Each order is meant to
be completable by one focused agent session against a complete specification;
per the Central Dogma, an order that turns out to be incomplete is returned
for re-specification, never improvised past. Every order's deliverable
includes its own tests and a witness of what was actually run and observed.

Dependency shape:

    WO-1 (channel)     WO-2 (bilattice) ─┐
         │                               ├─► WO-3 (substrate) ─► WO-4 (runtime) ─► WO-7 (things/affordance)
         └───────────────────────────────┘         │                                   │
                                                   ├─► WO-5 (capability) ──────────────┤
                                                   └─► WO-6 (membrane) ────────────────┴─► WO-8 (participation) ─► WO-9 (world seeding) ─► WO-10 (interface)

Layering (owner-stated, 2026-08-30): every obsmetrologic function gets its
own services section (`scripts/<function>.mjs`, `lib/contracts/<function>.sol`);
these compose as Metrologic (`@lenticule-science/metrologic`), the JSNode-native
form of Obsmetrologia/PyMetrologic; Metrologic provides the math app to anyone
that needs it; qtOps is a Guile MUD engine that uses Metrologic and other
scripts as its leaves; metroplat adds the exchange protocols (A2A, ActivityPub,
MCP) as one package over the node functions — protocol faces never live inside
or beside the science packages. Node as the actuators, Guile as the mapper.
Primitives live once, on the registry, interdependent — never copied.

## WO-1 — Guix channel regeneration

Regenerate the Guix layer in the owner-ruled shape (2026-08-30): the entire
repository is the channel; each directory that needs one carries its own
`.scm` package definition beside its content (e.g. a section carries
`public-services-section.scm`), module names derived mechanically from
repository paths, resolved through load-path (`-L` at repository root) —
never a sidecar application or a second hierarchy mirroring the tree.
Scope: the Koios runtime package definition moves from
`guix/phezi/ochage/packages/koios-news.scm` into the koios-news section it
describes; the qtOps section gains its own `.scm` declaring the qtOps
toolchain (guile, guile-cbor, guile-gcrypt; srfi-64 available via guile
core) pinned against `channels.scm`; the proven two-hop bootstrap (see
receipt
`lib/emsenn/services/561-group/services/561-group-services-section/services/561-group-operations-services-section/services/561-group-enterprise-services-section/services/561-group-enterprise-project-management-services-section/data/records/2026-08-29-host-operations-closure.json`)
is kept at `scripts/guix/run-pinned`; root `manifest.scm` is the single
environment entry (`guix shell -m manifest.scm`), the only Guix file at
repository root. Known limit, stated honestly: `guix pull` of this
repository as an external channel would compile the 138 legacy `.scm`
carriers under `lib/legacy/` and fail; local load-path use does not, and
nothing pulls this repository as a channel today — pullability is
deferred, not claimed. Acceptance: `guix build` of at least one
per-directory package succeeds from a clean shell; `guix shell` drops
into an environment where `guile --version` matches the pin. No CLI
application, no operator wrappers — package definitions only. A section
gains a `.scm` only when something real is built, pinned, or deployed
through it — never a performative wrapper around Node packages.

## WO-2 — bilattice: compose Metrologic, port nothing

Superseded in scope by the 2026-08-30 owner-stated layering: the FOUR/Mark
operation set already lives in `@lenticule-science/metrologic`
(`/bilattice`, `/bilattice/charge`, `/chu/four`), the JSNode-native form of
Obsmetrologia/PyMetrologic. qtOps does not port it — the Guile engine uses
Metrologic and the other node scripts as its leaves. Remaining scope:
conformance tests mirroring pymetrologic's cases, run against Metrologic's
exports and filed in Metrologic's own suite where missing; the D1
converters (two legacy RMN encodings, TAB's `{pos,neg}` projection) added
to Metrologic if absent; and the Guile-side leaf-call through which qtOps
reads charge operations. Any Guile-resident charge value is a projection
of Metrologic's answer, never a second implementation.

## WO-3 — substrate: `(qtops substrate ...)`

Port the laws of `@561-group/computer`: row assertion (exactly `{e,a,v,t}`),
RFC 8949 canonical CBOR encoding, RFC 6920 `ni:` row identity (D3), durable
append and torn-line-tolerant read (OP1–OP4), fold with tombstones (D4
substrate level), converse declarations read in-trace (D8), supersede lens
driven by in-trace arity-discipline declarations (D5), bounded settle with
honest residue (D6), section/cone projection, and POSIX stat-holography.
Conformance fixtures: a shared set of on-disk traces that both this module
and `@561-group/computer` fold to byte-identical section outputs; port the
posix-holography and durable-append test intents to SRFI-64. Where the JS
tests are thin (process-runtime, typed addressing had none), write the tests
here first and file any divergence found in the JS as findings, not fixes.
Per the charter directive, this order also specifies and wraps the
`@red-cup-engineering/modeled-union-dimension` v0.2.5 contract (carrier
identity, FOUR-charge standing, ordered witnessed moves, oriented relation
carriers, authority-checked operation projection) rather than inventing a
parallel colony record.

## WO-4 — incremental runtime

The layer TAB designed and never built. Per-entity hot fibers maintained by
delta folds; disk traces remain sole truth; restart = replay. Scheduler on
delimited continuations (guile-fibers admissible later as accelerant, never
required). Concurrency admission by commutation: parallel where merges
commute, turn-taking imposed per-locus where they do not (the H¹ = 0
condition made operational). Acceptance: a benchmark world at TAB's stated
failure scale (≥16 active NPCs, ≥40 areas) ticking well under its 4.5 s
per-tick failure mark, with a forced-crash/replay test proving no loss.

## WO-5 — capability: `(qtops capability ...)`

Port the animating/metroplat CapTP value semantics: locus, cut, dualize,
admissibility; vat tables with drop/break propagation; three-party handoff
with gift-withdrawal discipline; hash-chained session transcripts; pipelining
as pre-resolution cut composition. Port the animating test suite's ~35 test
intents to SRFI-64. Include the principal disciplines: decaying
authentication, FOUR-valued Hohfeldian may/can, apex-pinned delegation,
⊥-quarantine of unrecognized provenance. Explicitly out of scope: network
transport (value semantics only, as the 2026-06-25 brick established).

## WO-5.5 — grading: the composition gate and grade reader

Implement architecture Layer 3.5 as `(qtops grade)`: the regime ladder
(thermodynamic/causal/quantum/kinetic ↔ finite/Scott/transfinite/
aperiodic) as four formal proof-artifact schemas (RMN-typed,
JSON-Schema-projected, ni:-addressed); the derived grade reader (the
TRL-cut method — maturity read off structure and witnessed traffic,
never self-reported); and the composition gate (knowledge-meet of a
consumer's declared regime/grade requirement against the producer's
derived one; non-true outcomes route as meaningful-human-control
specifies: insufficiency asks, falsification refuses, inconsistency
demands repair; upward-regime dependencies cross a witnessed
disposition seam). Wrap, do not rebuild, the five existing mechanisms
(witness records, FARE Tier A/B, untrusted-candidate/disposition,
replay ethic, MHC gate) — cite each by path. **Resurrect the shapes**
of the deleted Lean-side carriers from commit `6174c085` (Hoare
Program Carrier's triple-with-preserves structure and axiom audit; the
Finite Program Measurement schema with its qualification discipline;
the Readout Exchange's H⁰/H¹/Landauer/pebble assays; OML's
change-bundle qualification) as the thermodynamic- and
quantum-regime artifact schemas — shapes and schemas first, with the
Leader adjudicating which implementations return; also correct the
obsmetrological section README's stale present-tense claims (filed as a
finding for that section's owner, not fixed en passant). Wire Guix
composition: package definitions declare component regimes and cite
artifacts; the check runs at build/admission. Refusals derive
cultivation demands (residueNi machinery). Acceptance: an inferential
hand's output cannot reach a Tier-B fold without a witnessed
disposition, demonstrated by a test that tries; a deliberately
mis-declared regime is caught at composition; and the grade reader's
output for one real package matches a hand-derived TRL band.

## WO-6 — membrane: articulation protocol

The Guile body invoking one hand. Frame protocol: spawn + pipes + canonical
CBOR frames; the invocation is a cut carrying exactly the attenuated
authority the call needs; the return is output + a witness receipt row
appended to the acting thing's trace before results are surfaced. The
contract is one typed spec file naming every verb either side exposes,
checked at session start; every call carries an origin tag; channels are
typed, mintable, capability-scoped handles (architecture §3). First
articulation: one existing jsnode operation package invoked end-to-end with
its witness recorded. Acceptance includes a refusal test: an invocation
whose authority does not cover its request is refused at admissibility, and
the refusal is itself a recorded datum (obsticulation discipline).

## WO-7 — things, qualities, affordances

Thing = (subject, fiber). Quality = recorded installation contributing
closure rules and affordance clauses (additive merge, never clobber).
Affordance computation per actor per call (restrictedArena/affording
pattern), non-triviality filtered. Adopt the articulating potential-cell and
the dyadic-predicate vocabulary check. Include the adopted OS-lineage
mechanisms at this layer: shadow-chain interposition (revocation/audit wrap
a thing's capability without mutating the thing), per-thing heartbeat
subscriptions, and the colony-master policy thing the kernel defers to.
Acceptance: a demo trace where installing a quality on a live thing changes
its computed affordances with no code deploy, and a shadow test where a
wrapped capability is refused without the underlying thing changing.

## WO-8 — participation: characters, masks, offices, endeavors

Character records (org-owned, durable); mask = session-scoped delocation +
attenuation over a character (built on WO-5); recognition cells conferring
roles; office records creatable vacant, installation as recorded act,
duty-officer mutual-acknowledgement handoff; endeavor charters with
guild-style join/leave and computed titles; hospitality admission
(recognition-cell installation by an office) and iyúha šni session exit.
Design deliverable alongside code: the admission ceremony specification for
artificial kin — the one load-bearing social mechanism the corpus has not
yet specified. First installed office: `office:witness` (agentic-essential,
currently vacant in the polity record), held by the first qtOps character.

## WO-9 — world seeding: bare-cedar-fog's hosts and services

Model the 561 Group's actual hosts, services, and deploys as world content: `bare-cedar-fog` as a place (POSIX
holography live), the systemd user services as things with located-in edges,
Verdaccio as market square, the Cloudflare and Cloud Run regions as places,
each live deploy as a thing located there, desired-vs-actual drift charged as
⊤ cells under a chosen governing rate. Seeded services carry the NPC vitals
(architecture Layer 5, world dynamics): decaying needs, a pure decide(), and
interiority read off their contested cells. The director organ ships
observing-only in this order — tension readings, no interventions.
Acceptance: `look bare-cedar-fog` lists the systemd user services actually
running, the deploys actually live per wrangler/gcloud, and each
desired-vs-observed divergence as a held ⊤ — the concrete recurring lookup
six months of session transcripts show agents re-deriving by hand instead of
reading it once from the world — and `look` at any seeded service shows its
needs and how torn it currently is.

## WO-9.5 — economy seeding

After the world is seeded (WO-9), the economy enters the world
(architecture Layer 6): wrap the live work-lot market and pricing service
as world objects (demand/offer/policy/compact/receipt each addressable);
model the existing enterprises (Red Cup Engineering, Lenticule Science,
Coesite Operations, Causeway Services, Turntide Islands) as two-faced
things with kernel and hull edges; implement the `constitute` and `induce`
birth verbs with their evidence requirements; price always derived, never
stored; payment providers as locators with honest status. Acceptance: an
inhabitant can look at a real, historical inference exchange — demand,
offer, receipt, and pricing derivation — entirely from within the world.
This order also stands up the internal product catalog (architecture
§2c) — readouts, capability leases, graded components, warm fibers,
rehearsals/verdicts, obstruction sheets — each purchasable by an agent
session as a certificate; and the **criticality readout k** (value
released by obstruction discharge over discovery-plus-discharge cost,
derived from certificates, never performed by anyone) as the director's
primary health metric: k &gt; 1 self-sustaining, k &lt; 1 running on the
Leader's subsidy, said plainly on the ledger. Final acceptance for this
order (architecture §2d, Reading 3): the corporate record's
confessed-missing artifacts are produced as derived readings — an
incumbency register read off office-installation records, books read
off settlement receipts with unreconciled items held as ⊤ (never
plugged), and at least one real-world asset (a wallet or domain)
modeled as a shrouded thing with a witnessed custody chain and
code-refusal controls.

## WO-10 — inhabitant interfaces

REPL first (the body is Guile; the REPL is a mask-wearing session), then a
line protocol (telnet-shaped, per the TAB lineage) for human co-presence,
then MCP so agent sessions connect the same way they connect to everything
else. Every interface authenticates as a mask over a character; there are no
interface-specific privileges. All interfaces are presentation-layer clients
(architecture Layer 1.5): they may guess ahead and must correct themselves,
they render provisional (deshrouding) state as provisional, and they cannot
write history — only enact acts.

## Standing rules for all orders

- Read the architecture's adjudications (D1–D10) before writing a line.
- New files only where the order says; no edits to live services outside
  scope; the working tree is shared with concurrent sessions.
- Tests are SRFI-64, runnable via a plain `guile` invocation recorded in the
  order's witness.
- A finding about existing code is filed as a finding, never fixed en
  passant.
- Naming is ordinary (the npm-registry lesson): modules say what they are.
- Every refusal, gate, or safety hold authored in any order is a typed
  record `{state, by, at, because}` — never a bare boolean (the
  refusal-gate failure mode is empirically documented; authorless gates
  are refused at review).
- No capability inheritance: per-entity minting only (the Klein-four
  prohibition); any proxying construct is an explicit witnessed re-mint.
- The 明法 acceptance test applies to every capability, office, and
  policy definition delivered: it must survive a forgetful, rushed, or
  adversarial incumbent with the founder absent. A resource that still
  requires the Leader's taste to apply is unfinished work, not a
  deliverable.
