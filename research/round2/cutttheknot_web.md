# Round 2: cut-the-knot and general web search

Searcher: sub-agent, cut-the-knot plus web. Scope: R2-1 and R2-2 from BRIEF.md.

## R2-1: Ptolemy on the nine-point circle (C, M_b, M_c, H, M_a concyclic)

Result: no published proof found. Nothing on cut-the-knot or in web search combines Ptolemy with the nine-point circle or the circle on diameter C-M_c for Pythagoras.

Closest items:

1. https://www.cut-the-knot.org/pythagoras/index.shtml, Proof #21 (Scott Brodie). Mechanism: Ptolemy on a rectangle inscribed in a circle gives a²+b²=c² at once, with diagonals as diameters. Verdict: RELATED, since it is Ptolemy-to-Pythagoras but with a different figure and no altitude or midpoints. Read the full text of the proof entry.
2. https://www.cut-the-knot.org/proofs/ptolemy.shtml. Mechanism: a similar-triangles proof of Ptolemy's theorem itself, with no Pythagoras content. Verdict: RELATED (background only). Read in full.
3. https://www.tandfonline.com/doi/full/10.1080/0025570X.2023.2166328 (Math. Magazine 96(1), "A Generalization of the Pythagorean Theorem via Ptolemy's Theorem"). Mechanism: a generalization proved with Ptolemy, figure unknown. Verdict: RELATED. Title and search snippet only, because it is paywalled. This is the one item that needs a follow-up check. The academia.edu paper "Pythagoras Theorem is an Alternate Form of Ptolemy's Theorem" (https://www.academia.edu/109629522/...) was also title and snippet only, and it is likely the rectangle case.

Other web results (Wikipedia Ptolemy, geome3atc.wordpress.com, ScienceABC, researchgate 341110481 "kite changed to rectangle") are all the rectangle special case. Verdict: RELATED, snippets only.

Intermediate identities (hc=ab, bh=ap, ah=bq by Ptolemy): not found as a Ptolemy derivation anywhere. ab=ch is only given by similar triangles (Wikipedia Geometric mean theorem, and the like).

Overall for R2-1: apparently novel on this search. Residual risk is the paywalled 2023 Math Magazine paper, plus the general fact that the circle through C, H and the midpoints is a standard nine-point-circle fact.

## R2-2: b²-a² = c(p-q), pq=h², ch=ab, then (p+q)² = (p-q)²+4pq

Result: no proof found with this exact route. The identity itself does appear as an intermediate step in the Yanney and Calderhead family on cut-the-knot, but there it is combined with BL=a²/c to give a² + b² = c² directly, not with pq=h² and c⁴.

Closest items:

1. https://www.cut-the-knot.org/pythagoras/index.shtml, Proof #59 (Yanney & Calderhead 1896, Amer. Math. Monthly 3, #XVII). Mechanism: circle centred C with radius a (the short leg). Intersecting chords from A give (b+a)(b-a) = c(c-2BL), with L the foot of the altitude. Since c-2BL is the difference of the hypotenuse segments, this is the identity b²-a² = c(q-p). Then BL=a²/c finishes it. Verdict: VARIANT for the identity (the same chord and power computation, a different circle and a different finish). Read in full.
2. Same page, Proof #60 (#XVIII). Mechanism: the same with a circle of radius b. AB·BK = (b-a)(b+a), with AK=2b²/c. Verdict: VARIANT. Read in full. Proof #61 (#XIX) uses a circle of radius h (the altitude) and the chords AD² = b²-h², BD² = a²-h², 2AD·BD=2h². It is RELATED, since it brings in h² as a chord product. Read in full.
3. https://www.cut-the-knot.org/pythagoras/index.shtml, Proof #22 (Brodie, also Yanney XXIV). Mechanism: the foot H lies on both leg-diameter circles. Power of B w.r.t. the circle on CA gives a²=qc (in the brief's notation a²=cq), b²=pc, and adding gives c². Verdict: RELATED, since it is the leg rule and not the difference. Read in full.

Also read: #11 (Leibniz and Yanney, a²=(c+b)(c-b), chords), #43 (Hoehn power of a point), #71 (Loomis 101, power of A w.r.t. circle B(C)), #79 (Wajnberg, circle on diameter c with chord CE·EB = DE·EF, giving a²=c²-b²), https://www.cut-the-knot.org/pythagoras/Bui105.shtml (#105, reflections of C give 2a²=c(c-DC') and 2b²=c(c+DC'), summing gives the result; its subtracted form would be a difference identity), #113 (Molokach, inscribed semicircle). All are RELATED. Midpoint power applied to the circle on diameter CA: not found anywhere.

The identity b²-a² = c(p-q) stated on its own with the leg rule (a²=cq, b²=cp) appears only as trivial subtraction. A search found a GeoGebra "leg rule" page (https://www.geogebra.org/m/dscnupks, snippet only). Using it in the other direction, with pq=h² and ch=ab to get c⁴=(a²+b²)², was not found.

Overall for R2-2: the route is not found. But every ingredient is classical, and the b²-a² identity via power of a point with unequal chords is in Yanney 1896 (#59). The c⁴ finish via (p+q)²=(p-q)²+4pq is not found. It should be described as a variant of the Yanney circle-chord family, not a wholly new idea.

## Log (URL or query, status)

- https://www.cut-the-knot.org/pythagoras/index.shtml: 200, read in full (WebFetch and curl). No "nine-point" or "Euler circle" string on the page. The only "Ptolemy" is #21.
- https://www.cut-the-knot.org/pythagoras/Ptolemy.shtml: 404 (wrong case; the correct URL is /proofs/ptolemy.shtml)
- https://www.cut-the-knot.org/proofs/ptolemy.shtml: 200
- https://www.cut-the-knot.org/pythagoras/proof79.shtml: 200
- https://www.cut-the-knot.org/pythagoras/Proof113.shtml: 200
- https://www.cut-the-knot.org/pythagoras/Bui105.shtml: 200
- https://www.cut-the-knot.org/pythagoras/BrokenChordPythagoras.shtml: 200 (broken chord, area route, unrelated)
- https://www.cut-the-knot.org/pythagoras/Wajnberg.shtml, Wajnberg79.shtml, IntersectingChords.shtml: 404 (guessed URLs)
- Search: Pythagorean theorem proof nine-point circle Ptolemy's theorem right triangle altitude foot midpoints (standard): nothing relevant
- Search: Pythagorean theorem proof "b^2 - a^2" = c(p - q) ... power of midpoint (standard): geogebra leg rule, CTK TrigProofs, arXiv 2507.02896 (circle dissections, titles only)
- Search: cut-the-knot Wajnberg intersecting chords variant (standard): found proof79 and urem.ulb.ac.be page
- Search: Pythagorean theorem proof via Ptolemy "nine-point circle" OR "median to the hypotenuse" ... (extended): only the rectangle case, plus the Math Mag 2023 and academia items
- Search: right triangle hypotenuse midpoint power with respect to circle on leg diameter ... difference equals hypotenuse times difference of projections (standard): nothing
- Search: Ptolemy theorem right triangle circle diameter CM midpoint hypotenuse altitude foot, prove ab = c h ... (standard): nothing, only the similar-triangles proof of ab=ch
- Not done: MathWorld, AoPS, Nelsen PWW, Bogomolny's CTK Insights blog and GoGeometry specific fetches (limited time); the Math Magazine 2023 paper full text.
