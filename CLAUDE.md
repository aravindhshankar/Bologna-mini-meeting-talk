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
  picture for the general audience and one compact "for the expert" element (usually an
  overlay step or a small equation).
- The user's own contribution is the LATTICE MODEL (itinerant fermion chain, bosonization,
  DMRG/iDMRG). The large-N field theory is the co-authors' work: present it as a sketch
  (why x^{2/3}), and give the lattice slides the weight.
- Agreed flow (user, 2026-11-23): Mermin–Wagner → ferromagnetic field theory, Berry phase,
  z≠1 is the loophole → Lifshitz theory via "Luttinger liquid is a Taylor expansion; K_s→∞
  means keep more terms; K_s→∞ at finite lattice coupling = a critical point" → lattice model
  and true LRO → large-N sketch of the 2/3 stretched exponential and the numerics showing it
  → conclusion/outlook → "ragazzi" thank-you slide with collaborator photos.
- Recurring categories and colours (`talk/macros.tex`): Luttinger liquid `cLL` (blue, = the
  ΔV=3.20 curve), critical point `cQCP` (red, = the ΔV=3.55 curve), ferromagnet `cFM`.
  Avoid tomato highlights on slides with the red QCP curve.
- Ragazzi slide: collaborator photos go in `talk/ragazzi/` (`andriyakhina.jpg`, `senthil.jpg`,
  `shi.jpg`); a grey placeholder box shows until the file exists.

## Layout
```
2609.38581.pdf          the paper (gitignored, not needed to build)
notes/talk_notes.md     facts, figure index, decisions, Q&A, open items
talk/talk.tex           main file (\input lines only); preview.tex for one section
talk/sections/NN_*.tex  one file per section
talk/figures/paper_*.png  400-dpi crops from the arXiv PDF (map in the notes)
talk/ragazzi/           collaborator photos
```
