---
name: beamer-talk
description: Make or rework a conference or seminar talk as a LaTeX beamer deck in Aravindh's style (figure-led, short titles, highlighted key phrases, grey references, careful alignment), with a ready kit (preamble, macros, build and preview scripts) and a slide-by-slide workflow. Use whenever the user wants to prepare, build, restructure or polish a presentation, talk, slides or deck.
---

# Beamer talk

Distilled from the NM4QM 2026 talk, where every rule below was a correction from the user.
Kit: `template/` (copy into the project). Reference slides the user approved:
`examples/*.png` (look at them before designing a slide) and their source
`examples/reference_frames.tex` (RKKY cartoon and "Bernal bilayer graphene, no twist").

## 1. Starting a talk
1. Quiz the user on structure before building anything (plan mode is fine): event, length,
   number of slides, audience (what they already know, what needs a primer), time split
   between parts, THE take-home message, the hook for slide 1, a recurring visual if any.
2. Theme: use the kit (Madrid + seahorse, the user's highlight colours) unless the project has
   a conference-supplied theme; then ask which to use.
3. Set up the project:
   ```
   CLAUDE.md               project rules: point to this skill, add only talk-specific rules
   notes/talk_notes.md     paper facts, figure index, talk decisions (dated), Q&A prep, open items
   talk/                   copy of template/: talk.tex (\input lines only), preamble.tex,
                           macros.tex (title block, \ft, \tk, category colours),
                           sections/NN_*.tex (one per section), figures/, build.sh, preview.tex
   ```
   Fill in the title block in `macros.tex`. `git init` if there is no repo.
4. Read the source papers ONCE and put every fact the talk needs into the notes (with page or
   figure numbers). Later sessions read the notes, not the PDFs. Anything looked up later
   goes into the notes too. Record each user decision and piece of feedback there, dated.
5. Ask the user early what they dislike about any earlier deck, and write it down.

## 2. Work loop, one slide at a time
1. Discuss the slide with the user.
2. Write a short spec in chat: title, figure, at most 3 bullets or one equation, take-away line
   (usually none), overlay steps.
3. Wait for the user's OK. Do not build before it.
4. Build, render, check against the alignment list (section 4), then tell the user it is ready.
5. When the user accepts and it compiles: commit (one short message line, include the
   rebuilt PDF). Never push; the user pushes.

The user also edits the .tex by hand offline: check `git status`/`git diff` at the start of a
session and ask before overwriting or committing their uncommitted changes.

### Who does what
- Opus (main session): talks with the user, thinks (structure, physics, wording, critique)
  and fine-tunes existing frames itself: spacing, sizes, column widths, line breaks, wording,
  small TikZ nudges. (A subagent polish round cost 90–175k tokens for a few lines.)
- Sonnet subagent: a new frame, a new TikZ drawing, figure crops, a first layout.
- Haiku subagent: mechanical bulk work (renames, swapping a figure, the same edit in many places).
- Pick by a quick guess. Never let Opus and a subagent edit the same file at once.
- Lessons loop: `builder_lessons.md` (next to this file) lists every mistake the builder made.
  The builder reads it at start-up. Each time Opus or the user fixes something the builder
  should have caught, Opus appends one dated line there (in the live skill AND the kit copy)
  and tells the builder. Keep ONE builder alive per session (resume it with SendMessage). When
  its context gets large, retire it and start a fresh one: it reloads the skill and the lessons
  from disk.
- Give the subagent the exact section file and the agreed spec; it must not read the whole
  deck or the papers. It compiles, renders the changed frame(s) to PNG, checks them, reports.
  Opus then looks only at the final render.

### Building
- Iterating on one section: put it in `talk/preview.tex`, then
  `cd talk && latexmk -g -pdf -interaction=nonstopmode preview.tex`.
- Before a commit: full build of `talk.tex` with the same flags, so the tracked PDF is always
  the whole talk. After either: `latexmk -c` and `rm -f *.nav *.snm`.
- Render a page to look at: `gs -q -dNOPAUSE -dBATCH -sDEVICE=png16m -r110 -dFirstPage=N
  -dLastPage=N -sOutputFile=out.png talk.pdf` (pdftoppm may be missing). Find a page by text:
  `gs ... -sDEVICE=txtwrite -sOutputFile=p%02d.txt talk.pdf` then grep.
- `build.sh` is the user's script (opens a viewer window); Claude never runs it.
- macOS has no `timeout` command.

## 3. Slide style
**Overall.** Professional. "Goldilocks" text: only as much as needed, not more, not less.
Figures carry the slide: one dominant figure, at most 3 short bullets or one key equation.
Every element is a fact or a picture; nothing is commentary.

**The model slide** ("exactly how I like my slides", `examples/bernal_table_figure.png`): the
system drawn on the left; a compact table of what goes in and what each entry does; one row
highlighted and tied by colour to a computed figure that shows its consequence, with the key
number printed in the figure; small grey references under each element; no punchline box;
two overlay steps. The colour link does the explaining.

**Titles.** Short: one phrase of about 4–7 words ("van Hove singularities in the flat band",
"Kondo revival at the magic angle"). Never a full sentence with a colon and two clauses.

**Take-away line** (`\tk{}`, grey box at the bottom). Default: NONE. Add one only when the
slide has a real punchline ("every slide doesn't need a clickbait punchline"); do not put one
in a spec by reflex, and leave it off intermediate or set-up slides. Short; a question is fine.

**Show, don't describe.** Where a sentence would explain a feature (of a band structure, a
mechanism ...), draw or compute a picture of it instead.

**Highlights.** Inline colour blocks: `\colorbox{tomato!30}{\mystrut key phrase}` then plain
text. Colours tomato, spinach, pumpkin, orchid, citron (in `preamble.tex`), tint `!30`–`!60`.
Text without a highlight does not get read: every text line that matters carries one
highlighted key phrase; two or three per slide is the norm. Method names and key terms are good
highlights. A highlight may match the colour of the curve or category it names. Never highlight
whole paragraphs. Check the highlight colour does not collide with a category colour on that
slide (spinach/pumpkin are close to common green/orange category colours).

**Colours.** Recurring categories (regimes, phases, methods) get one fixed colour each, defined
in `macros.tex` and used across the whole deck. Text and label colours must not clash with the
curve colours of the figure they annotate. Mind colour blindness (blue vs green). No label
arrows across data: put a caption beside or under the figure.

**Words.** No commentary on other people's work ("only perturbative so far", "X is unknown"):
it reads as defensive; just cite. Cite a field fairly: several groups, not one paper standing
for many. Abbreviate only so it still reads as a word ("e-h asym.", not "e-h"). Avoid
unexplained abbreviations on the conclusion slide.

**References.** Cite the source of every borrowed figure, directly under it. Small grey full
reference under the figure or claim it belongs to, as plain text:
`{\tiny\color{citegray} Author, Journal Vol, page (year)\par}`. `citegray` is defined once in
`preamble.tex`. Two or three per slide at most. Use the journal year, not the arXiv year.

**Density and overlays.** A dense slide is fine if each ingredient is simple and explained
clearly. Bring it in step by step with `\only` / `\onslide`; the layout must not jump between
steps (reserve the space; `\onslide` keeps it, `\only` does not).

**Hook.** Slide 1 after the title must make the audience interested at once.

**Closing.** The conclusion reuses the talk's recurring picture, now complete, with a short
outcome table; the thank-you slide repeats it with collaborators and papers.

## 4. Alignment checklist (check every render before showing it)
"The alignment is something you're missing often." Fix whatever fails:
- side-by-side figures: same height, tops level, each centred in its column;
- a label, caption or text block sits centred under (or beside) the item it describes; rows of
  columns stacked on a slide use the same column widths;
- a small item next to a big one (cartoon beside a figure) is centred vertically on it
  (`columns[c]`);
- sibling blocks are symmetric: same structure, width, and line count where possible;
- text in a narrow column is all centred or all left-aligned, never mixed;
- content balanced on the page: no empty band at the bottom while the top is cramped;
- nothing wraps by one or two words (break the line deliberately instead);
- nothing sits on the title rule (see the `\ft` gotcha below).

## 5. TeX hygiene
- Keep it hand-editable: plain beamer, one section per file, a few frames each, no generated
  code, no clever macros. Prefer editing one section file per change.
- Speaker notes as `% Notes:` comments under each frame.
- `\ft{...}` does not end its paragraph: if the body starts with plain text, a figure or a
  tikzpicture (anything but `columns`), write `\ft{...}\par`.
- Text width is about 10.8 cm: size columns, minipages and TikZ pictures from that.
- Backup slides after `\appendix` (appendixnumberbeamer keeps the main count).
- The deck compiles from the repo alone; no .tex references a file outside `talk/`.

## 6. Figures
- All in `talk/figures/`, included as `\includegraphics{figures/...}`. Never rename or edit the
  user's original figure files; make a modified copy (with its script) if needed.
- Computed figures: a short script beside them, `figures/make_*.py` (on this machine run with
  `~/anaconda3/bin/python`; the default python3 has no numpy). Deck colours, fonts readable at
  slide size, key number printed in the figure.
- From a published paper or an old talk: 400-dpi PNG crop (`figures/<source>_*.png`).
- From an UNPUBLISHED draft: never commit the draft or a cropped PDF of it (it keeps the hidden
  page text); ask the user for the original figure file, or use a 400-dpi PNG. Gitignore drafts.
- Borrow figures from old talks, not their style, unless the user says otherwise.

## 7. Before the talk
- Audience test: a cheap subagent playing the audience (e.g. an expert in the neighbouring
  field) gets one image per slide plus the notes and reports what is unclear. Show the list to
  the user; they decide which points matter.
- Q&A prep and open questions go into the notes.
