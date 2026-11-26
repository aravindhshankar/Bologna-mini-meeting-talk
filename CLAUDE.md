# Bologna mini-meeting talk — working rules for Claude

Follow the `beamer-talk` skill (kit copy in `beamer-talk/`, live copy in
`~/.claude/skills/beamer-talk`) for style, work loop, building and alignment. This file only adds
what is specific to this talk. Update it when the user changes how we work.

## What this is
10-minute talk, 10–12 slides total, LaTeX beamer, on Andriyakhina, Shankar, Senthil, Shi,
"Theory of criticality-enabled U(1) symmetry breaking in a class of 1+1D systems",
arXiv:2609.38581 (`2609.38581.pdf`, public arXiv preprint).

## Start of a session
1. Read `notes/talk_notes.md` (paper facts, figure index, decisions, Q&A, open items).
2. Do NOT re-read the PDF unless a fact is missing from the notes; add anything looked up.
3. `git status` / `git log --oneline -10`: uncommitted changes may be the user's own hand
   edits, so ask before overwriting or committing them.

## Talk-specific rules
- Audience: very general, plus a couple of experts. Each physics step gets an intuitive
  picture for the general audience; expert content goes in as a later overlay step or a small
  equation. Never label it "for the expert" (user, 2026-11-23: "sort of obnoxious").
- No specific numerical parameter values on slides (user, 2026-11-23); symbols only
  (e.g. ΔV_c). Numbers inside borrowed paper figures are fine.
- Integrals and derivations: reveal them in steps with overlays (one or two intermediate
  steps) so the punchline lands; familiar case first (e.g. 2+1D before 1+1D).
- The user's own contribution is the LATTICE MODEL (itinerant fermion chain, bosonization,
  DMRG/iDMRG). The large-N field theory is the co-authors' work and too technical for this
  audience: flash only its x^{2/3} prediction (user, 2026-11-24); the lattice slides carry the talk.
- Agreed flow (user, 2026-11-24): Mermin–Wagner → electrons on a chain → what each term
  does to magnetization → tuning ΔV (FM transition) → bosonization → small ΔV: ordinary LL
  (Fig. S4) → near ΔV_c: K_s→∞, next terms, z=2 Lifshitz → why e^{iθ} should order (slide-1
  integral at z=2) → which operator orders (S⁺ fails, nematic O) → true LRO → stretched
  exponential (large-N result flashed only; large-N slide in backup) → conclusion → ragazzi.
  The order-parameter arc is the meat of the talk.
- No \tk take-away line by default; only on slides with a real punchline, never on set-up or
  intermediate slides (user, 2026-11-24: "every slide doesn't need a take-away line").
- Colours: only the user's palette (orchid, pumpkin, citron, tomato, spinach, ... in
  preamble.tex). NO teal. NO gray boxes or panels: gray is reserved for the bottom \tk panel
  (user, 2026-11-23). Lattice drawings may use gray lines/dots.
- Hamiltonian term colours (`talk/macros.tex`): hopping `cT`=spinach, on-site `cU`=burnt orange (pumpkin+lava),
  same-spin `cVpp`=olive (citron+darkspinach), opposite-spin `cVpm`=orchid; pictures, H and the K formulas use
  them. Electrons are TikZ pics `eup`/`edn` (glossy blue ball + spin arrow).
- Lattice model facts: ΔV = V+- − V++ (V++ fixed); FM when opposite-spin repulsion wins.
- Recurring categories and colours (`talk/macros.tex`): Luttinger liquid `cLL` (blue, = the
  ΔV=3.20 curve), critical point `cQCP` (red, = the ΔV=3.55 curve), ferromagnet `cFM`.
  Avoid tomato highlights on slides with the red QCP curve.
- Our own paper (arXiv:2609.38581): from slide 8 on, cite it once only (slide 9, under Fig. 2),
  not on every slide; a lone self-citation looks odd (user, 2026-11-26). Earlier cites: slide 6
  (Fig. S4), slide 7 (large-N step).
- Thank-you slide: photos in `talk/ragazzi/` (`lisa.jpeg`, `Senthil.jpeg`, `DariusShi.jpg`).

- Slide building (user, 2026-11-24): keep ONE Sonnet builder subagent alive for the session and
  resume it with SendMessage (it already has the skill loaded); don't spawn fresh ones. It
  self-reviews its render before reporting (labels next to what they name, no touching
  elements, one colour per symbol, alignment list) so Opus only does small final touches.
  Every mistake Opus or the user fixes goes as a dated line into
  `~/.claude/skills/beamer-talk/builder_lessons.md` (+ kit copy) and is sent to the builder;
  a fresh builder reads that file at start-up (user, 2026-11-24).

## Layout
```
2609.38581.pdf          the paper (gitignored, not needed to build)
notes/talk_notes.md     facts, figure index, decisions, Q&A, open items
talk/talk.tex           main file (\input lines only); preview.tex for one section
talk/sections/NN_*.tex  one file per section
talk/figures/paper_*.png  400-dpi crops from the arXiv PDF (map in the notes)
talk/ragazzi/           collaborator photos
```
