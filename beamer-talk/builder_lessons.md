# Builder lessons (beamer-talk)

Mistakes the slide builder made and Opus or the user had to fix. The builder reads this file
at the start of every session. Opus appends a line each time it spots a new one, so the same
mistake never comes back. One line per lesson, with the date and a short example.

## Labels and annotations
- Every label sits right next to the thing it names: a curve's name goes at the start of the
  curve, an annotation at the feature it describes. (2026-11-24: step-size labels floated at
  the far left, away from any step.)

## Spacing
- A label on a plot never crosses a curve. Put it at the curve's end or in clear space,
  then check the render. (2026-11-24: "critical point" sat on the parabola.)
- No element touches or starts on another one; leave a clear gap between curves, electrons,
  lines and labels. (2026-11-24: φ_c curve began on the chain line.)

## Colour
- A symbol has ONE colour everywhere on the slide: formula, picture and label. Check every
  \color against the spec. (2026-11-24: φ_s orchid in cartoon, cFM in formula.)

## Alignment
- A sub-line under a centred box or formula is centred too, never indented by hand.
  (2026-11-24.)

## Legibility and impact
- The point of a small picture must be obvious at a glance at slide size. If the picture
  shows a difference (↑ sea filled higher than ↓), exaggerate it and make the picture fill
  its tile. A tiny drawing in a big empty box reads as weak. (2026-11-24: hopping tile.)
- Large tinted tiles with little inside look empty and generic. Size containers to their
  content, or make the content fill them. (2026-11-24.)
- Don't overcorrect: "make it bigger" means in proportion to its neighbours, not dominating
  the slide. (2026-11-24: the hopping bands grew bigger than the chains they explained.)
- Parallel items (verdicts, labels for each term) share ONE format and ONE place. Don't move
  one into a caption somewhere else. (2026-11-24: "t: costs" sat apart from the U/V list.)

## Equations
- A key equation that doesn't fit a column gets the full text width, with the picture moved
  beside a shorter block. Never split it over two lines with a \phantom indent. (2026-11-24:
  H_s with the next terms.)
- Use \frac, not \tfrac, for fractions in displayed key equations: a tiny 1/K_s is unreadable.
  (2026-11-24.)
- Annotate parts of one equation in ONE consistent way, e.g. underbraces for both the term
  that vanishes and the new terms. (2026-11-24.)

- Never shrink the slide's key formula below \small to make it fit a column: change the layout
  instead (full-width row). (2026-11-24: S+ in \scriptsize on 'Which operator orders?')

## Balance
- After the last overlay, the content block is vertically balanced: no big empty band at the
  bottom, and an inset sits close to what it explains, not floating far below. (2026-11-24.)

## Physics in pictures
- Arrows imply processes. Never draw an arrow that suggests a process the model does not
  have. (2026-11-24: an arrow from the ↓ band to the ↑ band beside "hopping t" read as
  spin-flip hopping, but t is same-spin hopping.)

## Take-away lines
- No \tk by default. Only add one when the spec asks for it. (2026-11-24.)
