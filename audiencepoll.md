# Audience poll (postdoc, general CM, not a bosonization/Lifshitz person)

Page numbers refer to p01..p59 PNGs. Footer slide counters run 1/13 to 13/13 (title slide uncounted), backup 1/4 to 4/4.

## 1. What I took home

The talk says that a 1D fermion chain with spin can break a continuous U(1) symmetry, despite Mermin-Wagner, if you tune it to a ferromagnetic critical point where the magnetization becomes "soft" and the dispersion goes from omega ~ k to omega ~ k^2. At that point some operator (a pair of spin flips, a "nematic") has true long-range order, while the electron correlator turns into a stretched exponential. The lattice DMRG data apparently confirm this, and a large-N field theory explains the 2/3. I did NOT really understand why softness of the magnetization lets the phase order. I got "omega ~ k^2 makes the integral finite" only from a backup slide. I also could not tell what the practical message is beyond "it's possible".

## 2. Per slide

**No continuous order in one dimension (p02-p10).**
- Nine build steps. The 2+1D box is shown before 1+1D, but nobody says what "2+1D" and "1+1D" mean. Is that space+time? Is the 1+1D case the quantum chain at T=0? A non-expert needs one sentence.
- Undefined: theta_0, Lambda (p10, ln Lambda/|x|), eta (p10), rho_0, rho_s, the notation (theta theta)_{omega,k}, "tau". The "k dk / k finite" step comes too fast, and I can't see the Mermin-Wagner mechanism (an IR divergence) stated in words.
- p03: the row of arrows (the theta(x,tau) picture) has no label saying what the arrows are, and the right-hand label "theta(x,tau)" is small.
- The gray citation line (Mermin-Wagner, Hohenberg, Coleman) is tiny and is fixed at the bottom, which crowds the green and blue boxes.
- Takeaway bar at p10 only appears at the last step, fine.

**Electrons on a chain (p11-p14).**
- Fine pictorially. The V_{+-} subscript has an odd gap ("V+ -").
- The V_{++} (olive/citron) box is nearly the same colour as the on-site box, so same-spin vs on-site is hard to tell apart on a projector.
- p14: "fixed filling: 1/4 per spin species (a generic choice)" is a lot of small text with no relevance explained. "knob: Delta V = V+- - V++" is the key definition, and it is tiny and at the bottom.
- The spin-up/down arrows on the electrons are very small.

**What each term does to magnetization (p15-p18).**
- Confusing: the labels "U saves / V++ costs / V+- saves / t costs" are on the right, next to the top row ((S^z)=0), but they describe the magnetized row, in the sense of a comparison. Which row does "costs" refer to? Say "magnetizing: U saves, ..." explicitly.
- The highlighted beige box around the doubly-occupied site is never explained (it is presumably the U penalty).
- "U saves" is counter-intuitive until you realise the comparison is magnetized vs unmagnetized. This is the logic key to the whole slide and it is never spoken on the slide.
- The p18 parabola picture ("t: up electrons fill higher levels") is tiny and the two parabolas are not labelled as bands of up and down. Both lines of text at the bottom are small.
- The pumpkin text "U saves" and the citron "V++ costs" have low contrast on white.

**Tuning Delta V: a ferromagnetic transition (p19-p21).**
- The line "symmetry: spin rotations about z U(1), up<->down (Z2)" is dense at the top, and the U(1) here is spin rotation, not particle number. This matters later, because slide 2's U(1) was the phase of psi. The link between the two is never made.
- p21 figure: axes, legend (N=64, 128, 256; chi=100...800) and the exponent in the fit label are unreadable at this size. The y-axis label (S^z) is small. The "Luttinger liquid - QCP - ferromagnet" bar is too small to read.
- It is not stated what Delta V_c is numerically, which is OK, but the x-axis is labelled in ticks 3.2-3.8 and the speaker said no numbers.
- Bottom banner reads "A continuous ferromagnetic transition: the critical point we study", fine.

**Bosonization: electrons as waves (p22-p27).**
- p22: the band figure is small. "L" and "R" are tiny, as is "epsilon_F".
- p23-p24: the formula c_r(x) ~ sum_r e^{i r k_F x} e^{i sqrt(pi)(r phi_c + theta_c)}...: phi, theta, and the definition phi_{c/s} = (phi_up +- phi_down)/sqrt2 are sub-subscript sized and unreadable at the back. No word on what phi and theta ARE (density and phase fields).
- p25: charge rho = sqrt(2/pi) d_x phi_c and S^z = 1/sqrt(2pi) d_x phi_s. Since phi_s is what "counts" S^z, the claim "phi_s counts spin" is only intuitively motivated by the staircase figure on p26.
- p26: staircase figure with step sizes "steps sqrt(pi/2)" and "steps +- sqrt(pi/2)" in tiny text at the right.
- p27: "spin flip: S+ ~ e^{-i sqrt(2 pi) theta_s} raises phi_s by sqrt(2 pi)". Two steps in one: first a vertex operator of theta, then the claim that this shifts phi_s. Too fast. The dashed purple line shift (sqrt(2 pi)) is also small. The step size here (sqrt(2 pi)) vs step sqrt(pi/2) twice? Spin flip changes S^z by 1 = 2 steps of 1/2, so OK in principle, but nobody says it.
- Too much bosonization for a general audience: the new objects (phi, theta, c/s) arrive at once.

**Small Delta V: an ordinary Luttinger liquid (p28-p30).**
- p28: H = sum_nu v_nu/2 ∫ [K_nu (d theta)^2 + (1/K_nu)(d phi)^2]. K and v are undefined on the slide. "two Luttinger liquids: charge and spin" is the only gloss.
- p29: the four panels are unreadable. Titles, axes, and legend (DMRG N=256, iDMRG chi=...) are all tiny. The "central charge c = 2" panel on the right is not explained: what is the plot? I can't tell what the "S" on the rightmost panel is, or what is on its axes (log of something).
- The self-citation under this figure is gray and tiny but present, good. (Note: it is the SAME paper as the talk; with a first-author line at the top it looks odd to cite it.)
- p30: formula K_{c/s} = (1 +- U/(pi v_F) + 2(V++ +- V+-)/(pi v_F))^{-1/2} appears on a slide where ~75% of the area is empty. It is a second formula to digest, and it is not obvious why I need it. Its exponent (-1/2) and the next slide's K_s^{-2} are consistent but the audience cannot see that quickly.

**Near Delta V_c: beyond the Luttinger liquid (p31-p35).**
- p31: K_s^{-2} = 1 - (U + 2 Delta V)/(pi v_F) -> 0. The "2 Delta V" vs "V++ - V+-" link from the previous slide takes mental algebra. "magnetizing costs nothing" is a good phrase, but "K_s -> infinity" is then used as if I knew what large K means.
- p32: a lone "]" bracket floats at the right of H_s before the new terms are revealed. Looks like a bug (placeholder bracket).
- p32: the omega-k picture (Luttinger liquid straight line vs critical point parabola) is the best thing in this section but it is small, axis labels omega, k are tiny.
- p33: "kappa (d_x^2 phi_s)^2 + lambda (d_x phi_s)^4" in the purple box is the heart of the matter, but "next terms" is all the explanation. Where do they come from? Why these two? Why is lambda relevant? ("lambda relevant: interacting, no exact solution" comes at p34 in very small type.)
- p35: sudden switch to a Lagrangian L with i d_x theta d_tau phi, lambda_2, lambda_4, N-component fields. The subscript s is dropped on theta and phi. lambda is now lambda_4 and there's an unexplained lambda_2 (that appeared out of nowhere). This is the "large-N" flash; fine to flash, but the notation jump from H_s (K_s, kappa, lambda) to L (lambda_2, lambda_4, 1/4N) makes it look like a different model.
- Citations to Yang (PRB 93) and Hakim (arXiv 2508...) are tiny.
- "z = 2 Lifshitz theory" banner: jargon, never defined. z is never explained (dynamical exponent) and I only see it in the dispersion picture indirectly.

**What operator orders? (p36-p39).**
- Title changes between p38 and p39 (from "What operator orders?" to "e^{i theta} orders, breaking U(1)"), which makes the whole slide jump and the title text shifts. Layout jump.
- p36: "U(1): theta -> theta + alpha; e^{i theta} -> e^{i alpha} e^{i theta}: order parameter". This U(1) is a shift of theta, but the earlier U(1) was spin rotation about z and (from slide 1) the phase of psi. Now theta is theta_s, and the spin is S^z ~ d_x phi_s. I had to take it on faith that the spin rotation shifts theta_s.
- The commutator [phi_s(x), d_y theta_s(y)] = i delta(x-y) and "conjugate: pin one, the other fluctuates" is the crux, but it is stated in one line. Not an intuitive picture (Heisenberg uncertainty analogy would help).
- p38 panels: for the LL, e^{i theta_s} ~ |x|^{-1/(2 pi K_s)} and e^{i phi_s} ~ |x|^{-K_s/(2 pi)}; critical: exponent -> 0 so "const, order". I believe the exponents, but "faster than any power" for e^{i phi_s} is unmotivated here. The small arrows (theta_s picture) are not explained.
- "Soft magnetization => stiff spin direction": slogan; I cannot verify it. No equation in the main talk shows why a finite integral emerges (it's in backup p52-p59 and p57-p58). This is the central claim of the talk and it is only backed by a slogan.
- p39: "magnetization vertex at the critical point: <e^{i phi_s(x)} e^{-i phi_s(0)}> ~ e^{-C|x|^{2/3}} stretched exponential (large N)": the audience has not seen why this is important yet, as the electron slide comes later. Pre-announcing is OK but this is a lot of text here.

**Try to find a bare theta vertex as a lattice operator (p40-p41).**
- Title is odd: "bare theta vertex" is jargon, "lattice operator" a bit too.
- p40: S+_i ~ e^{-i sqrt(2 pi) theta_s}[cos sqrt(2 pi) phi_s + cos(sqrt(2 pi) phi_c + 2 k_F x)]. The brace under the bracket is empty until the next step, then "charge Luttinger liquid". The message is that the charge part kills the order. This needs to be said in words: the second cosine contains phi_c, which is critical-less (power-law), so S+ S- is a power law.
- p41 figure: log-log, y label |<S+_x S-_0>|, legend inside the plot overlaps with the orange envelope. The decay law "~|x|^{-...}" in the legend is cut off/too small. The title "Delta V_crit = 3.55" on top, with number, which contradicts the "no numbers" rule but is borrowed from a paper figure (acceptable). No citation under the figure here, though it is a borrowed paper figure (cited once on p29 and p43 only).
- "(S+_x S-_0): still a power law" is a negative result with a thin explanation.
- The oscillations (orange region) are not explained: are they lattice oscillations (2 k_F)?

**Pair the flips: true long-range order (p42-p44).**
- p42: O_i = S+_i S+_{i+1} ~ e^{-i sqrt(8 pi) theta_s} = e^{-2 i theta}. Here theta_s becomes theta with a rescaling that is not defined (theta = sqrt(2 pi) theta_s?). The subscript s disappears, and e^{i theta} now has the meaning of earlier e^{i sqrt(2 pi) theta_s}. This is a notation break with p36-p39 where e^{i theta} was e^{i theta_s} with exponent -1/(2 pi K_s).
- Consequently the exponents are not consistent: on p36 the vertex e^{i theta_s} decays as |x|^{-1/(2 pi K_s)}, but on p44 the O correlator is |x|^{-4/K_s} with no factors of pi. Fine if the normalisations differ, but nothing says so.
- "spin 2: a spin nematic": jargon, one line.
- "only theta: charge cancels" is the physics insight (pair has total charge zero change... actually two same-spin flips cancel the charge cosine); it is in tiny type and needs speaking.
- p43 figure: the legend (DMRG N=64,128,256; iDMRG chi=800; ~|x|^{4/K_s}) is crowded and overlaps the curves. Legend at the bottom lists Delta V - 3.20, 3.30, 3.40, 3.55 but the labels look like "Delta V - 3.20" (minus sign, not equals). Colors: blue 3.20, orange 3.30, green 3.40, red 3.55 consistent with the earlier QCP red. The vertical drop-offs at the right (gray) are finite-size cutoffs and unexplained.
- p44: "(S+) = (S-) = 0: nematic order only": the notation (S+) and the angle brackets are tiny.
- The banner "An ordered critical point in one dimension" is the real punchline, good, but arrives at the end of this slide while the physics argument (why the pair operator is U(1) charged and has the e^{-2 i theta} form) was thin.

**Stretched exponential in the electron (p45-p47).**
- p45: the figure is very busy: dashed, dotted, solid, pale background lines. Axis label C(x) undefined; there's an inset with a tiny label "lambda~ = 1200, Delta V_crit = 3.55" and "exp(-x^{2/3})" fits. Not readable from the back.
- The line "electron c_up contains e^{i sqrt(pi/2) phi_s}" is the only link between the figure and the theory. Why does the electron correlator probe the "magnetization vertex"? Because the spin part of c_up is e^{i sqrt(pi/2) (phi_s ...)}. The charge part is ignored.
- No citation under the figure.
- p47: "critical point: C(x) ~ e^{-c x^{2/3}}, inset slope ~ 2/3 (large N)". Then "Large-N prediction seen at N=1". Good claim but "N" has not been defined on the slide where "N=1" shows up (the N-component field of p35 was in tiny text).
- What the audience should conclude: that the electron is gapped-like (no quasiparticle) at the QCP? Not said.

**Order enabled by criticality (p48).**
- Summary table is clear. Comparison rows (dispersion, nematic, electron C(x)) are good. This slide has the clearest statement of the result.
- The Outlook is jargon-heavy: "quantum simulators: only short-range density interactions", "frustration-free U(1)-breaking chains", "non-Abelian order from Wess-Zumino-Witten terms". None explained; three sentences for three different topics. The Warrington/Lee citation is tiny.
- Banner: "Mermin-Wagner evaded at a z != 1 critical point, in a simple fermion chain": this is the best statement of the claim, but it should appear on slide 1 (title or second slide).

**Thank you (p49).** Fine. Email shown twice (title and here, fine). Photos good. QR code OK.

**Backup (p50-p59), light touch.**
- Berry phase (p50-p51): "Slide 1's (d_x theta)^2 assumed a finite susceptibility chi". "Slide 1" is ambiguous (is it the backup's own or the talk's). The notation rho = S^z here vs rho_0 / rho_s on slide 1 is a clash (three different rho's).
- Ferromagnetic loophole (p52-p56): the two big panels are empty/blank at the first step (large empty blue and pink boxes), looks like missing content, though it is only the build. The "Beyond Gaussian: K(d_x theta)^2 not renormalized, rho = d_x phi => |rho| = (3-d)/2" line in p56 is cryptic and in tiny type. "z != 1 forces U(1) breaking" is the actual theorem-like claim and is stuck in backup.
- Large N (p57-p59): the figure's axes and legends are unreadable. "beta = 1, N -> 1" is confusing (N=1 saddle?). "Power counting tau ~ x^{5/3}, u ~ x^{2/3}" is not derived.
- The z=2 integral (p58-p59, labelled "4/4"): the flow note says this should be the heart of "why e^{i theta} should order" and it is only in backup. For a general audience that integral (finite vs ln) is the most convincing step in the talk. It deserves a main-slide slot.

## 3. Obvious mistakes

- p32: stray right bracket "]" in H_s with nothing before it filled in (placeholder width). Looks like a typo at that build step.
- p38 to p39: slide title changes from "What operator orders?" to "e^{i theta} orders, breaking U(1)" and the content shifts, a layout jump between build steps.
- Notation drift: theta_s / phi_s on p25-p39 (subscript s) vs theta, phi with no subscript on p35 (Lagrangian), p42 (e^{-2 i theta}) and backup. Also e^{i theta_s} (exponent -1/(2 pi K_s)) vs e^{-i sqrt(8 pi) theta_s} = e^{-2 i theta}: the meaning of theta changes without comment.
- Exponents: p38 gives e^{i theta_s} ~ |x|^{-1/(2 pi K_s)}; p44 gives the pair operator ~ |x|^{-4/K_s}. If e^{-i sqrt(8 pi) theta_s} is the pair then the exponent should scale as 8 pi / (2 pi... ) times the single vertex's, so factors of pi/ 2 pi look inconsistent unless the vertex normalisation differs. At minimum, explain.
- lambda: p33 "lambda (d_x phi_s)^4" and p34 "lambda relevant", then p35 uses lambda_2 and lambda_4 (the lambda that is relevant is now lambda_4?). kappa disappears in L (replaced by a coefficient of 1/2).
- "U(1)": slide 1 (phase of psi), slide 4 (spin rotation about z), slide 8 (theta shift): never connected. rho: rho_0 (condensate), rho_s (stiffness), rho = S^z (backup), rho = charge density (p25). Four rho's.
- p21, p29, p41, p43, p45: figures borrowed from the paper are unreadable at this size. p41, p45 and p21 have no citation under them; p29 and p43 do. Inconsistent.
- p43 legend reads "Delta V - 3.20" (minus) where it should be "="; also numbers conflict with the "no numerical parameter values on slides" convention, though those are inside paper figures.
- p17-p18: label colours: "t costs" in green, "U saves" pumpkin, etc. match the Hamiltonian; OK. But the t label is placed under a row it does not describe.
- p10: "(e^{i theta_x} e^{-i theta_0}) ∝ |x|^{-eta} -> 0, no order": the eta isn't defined and K appears in neither.
- p14: text "(a generic choice)" with parentheses and a highlighted green box around "1/4 per spin species" looks like an afterthought.
- Footer counters: "13/13" on thank-you and backup "1/4": fine, but the thank-you slide is not the last slide, so the backup starts after, correct.
- p22: band picture axis labels (epsilon_k, epsilon_F) are tiny; "-k_F", "k_F" fine.
- Two slides (p31-p35) carry the same top panel while the bottom changes; layout is stable, good, but the right-hand dispersion plot is small relative to the empty bottom half of the slide.

## 4. Bigger concerns

**Pacing.** Thirteen slides and 49 pages for 10 minutes is too much. Slides 1 and 6-9 are each ~5-9 build steps. I count about 5 slides worth of formulas before the first operator argument. I would cut or compress: (a) Mermin-Wagner to two build steps (2+1D vs 1+1D integral shown once, with a one-sentence gloss on what 1+1D means), (b) the three-slide model set-up (chain, what each term does, tune Delta V) into one slide, (c) bosonization to a single slide (nobody remembers sqrt(2 pi)), (d) drop the Luttinger-liquid benchmark figure p29 unless it is readable.

**The key argument is missing from the main talk.** The core claim, that z=2 makes the phase fluctuation integral finite (so e^{i theta} orders), is only in the backup, and the main talk replaces it with "Soft magnetization => stiff spin direction". The audience has seen the integral in slide 1 for omega ~ k, so showing the same integral for omega ~ k^2 right after the dispersion plot (p33) would give the "aha". As it is, "K_s -> infinity => exponent -> 0 => order" (p38) is an extrapolation from a power law, which sounds like a trick (K -> infinity at one point; why not still just a power law with a tiny exponent?). I would ask: is it true LRO or just an exponent that vanishes at a single point, and what is the numerical evidence for the correlator at exactly Delta V_c vs near it (p43 shows the red curve flat, but finite-size/iDMRG with chi=800)?

**Main result not stated up front.** The title says "enabled by criticality" but the clear sentence "continuous symmetry is broken in 1D at a z=2 critical point" appears only at p48. State it on slide 2 as a motivation and again at the end.

**Which U(1)?** The audience hears "U(1)" for a phase of psi, spin rotation about z, and theta shifts. Say once: for the electron chain U(1) = rotation of spins about z, whose order parameter is the in-plane magnetization (S+); the paper's twist is that S+ itself does not order but the pair does. Actually this twist is the subtle bit and deserves a sentence like "single spin flip never orders because it drags a charge excitation, the pair does".

**Jargon density.** Luttinger liquid, bosonization, Lifshitz, z, nematic, large N, relevant, central charge, stiffness, saddle point, Wess-Zumino-Witten, frustration-free: at most four of these should survive for a 10-minute general talk. Lifshitz and large N are flashed without explanation.

**Figures.** Roughly seven borrowed figures are illegible in a room (p21, p29, p41, p43, p45, p57-p59). Either enlarge and crop each to the one curve that matters (e.g. only Delta V = 3.20 vs 3.55 in p43 and p45) or redraw schematics.

**Questions I would ask.**
1. Is the order at the critical point truly long-range at finite temperature, or is this a T=0 statement only (Mermin-Wagner-Hohenberg is also about T>0)? What is the finite-T fate?
2. Is the ordered critical point stable to perturbations (e.g. spin-orbit or an XY anisotropy that would gap or couple S+)? What protects z=2?
3. Is this just the ferromagnet / Lifshitz ("Landau-Lifshitz") physics in 1D, whose quadratic dispersion is already known to give ordered ground states, e.g. the quantum Heisenberg ferromagnet? What is genuinely new here?
4. How do you extract the 2/3 exponent from DMRG at N=1 when the theory is large-N, and how robust is the inset fit (range of x)?
5. Does the critical point survive away from filling 1/4 per spin, i.e. is the "generic choice" really generic?

## Top 5 issues
1. The central argument (why the omega ~ k^2 dispersion lets the phase order) is relegated to backup; the main talk has only a slogan ("soft magnetization => stiff spin direction").
2. Too much for 10 minutes: roughly 49 build steps, three set-up slides and a full bosonization dictionary before the physics starts; heavy jargon (Lifshitz, z, large N, nematic) never defined.
3. Notation drift: theta vs theta_s, e^{i theta} vs e^{-2 i theta} with unannounced rescaling, lambda vs lambda_2/lambda_4, four different rho, "U(1)" with three meanings; exponents (-1/(2 pi K_s) vs -4/K_s) look inconsistent.
4. Borrowed paper figures (p21, p29, p41, p43, p45) are unreadable and inconsistently cited.
5. Small layout bugs: stray "]" on p32, title change between p38 and p39, mislabeled "saves/costs" next to the wrong row on p15-p18, empty panels at the start of the backup slides.
