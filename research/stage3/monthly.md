# Stage 3 novelty search: The American Mathematical Monthly (ISSN 0002-9890)

Searched 2026-11-25. Legal open sources only: archive.org full-text OCR of the Monthly 1896-1899, JSTOR Early Journal Content PDFs mirrored on archive.org, Crossref, Unpaywall, web search. No personal data was sent.

## Headline findings

1. **No candidate C1-C5, C8 or C9 appears in the Monthly, at least in what I could read.** The exceptions are the near-misses below. "Read" means full text, not titles. I could not read 1900-2024 full text, because only titles and Crossref metadata are open there. The 2024 Jackson & Johnson paper returned 403.
2. **Closest hit: Yanney & Calderhead, proof XCVII.** *New and Old Proofs of the Pythagorean Theorem*, AMM 6(3), March 1899, pp. 70-71 (DOI 10.1080/00029890.1899.11999873).
   - It uses the excircle on the hypotenuse, radius r = (a+b+c)/2 = s, so it is the C-excircle, not the A-excircle of C1 and C9.
   - It decomposes the square CPOS at C, which has side r_c: r_c² = ab/2 + r_c·c.
   - Substituting r_c = s gives a²+b² = c².
   - It is the same genre as C9, an excircle that forms a square at C plus an area decomposition. It is a different circle and a different identity.
   - Verdict: **VARIANT/RELATED of C9** (see C9).
3. **Identity-level hit: proof XXVI**, AMM 4(1), Jan 1897, p. 11 (DOI 10.1080/00029890.1897.11998929), credited to Olney §971.
   - The OCR reads (AC+AB-BC)(BC+AB-AC) = (AC+AB+BC)(AC+BC-AB).
   - In the brief's notation, 2(s-a) · 2(s-b) = 2s · 2(s-c). This is **exactly the key identity (s-a)(s-b) = s(s-c)** in side form.
   - It is derived from the ratio EH:ED = HL:DL on "Fig. 20", which is the figure of two circles with centres A and B and radii b and a. Proof XXV uses the same circles in the power-of-a-point form AC²=AH·AD, BC²=BL·BE.
   - I could not see the figure, so this reading is unverified. The mechanism (two circles about the acute vertices, chord and similarity ratio) differs from every candidate.
   - It shows that (s-a)(s-b) = s(s-c) as a route to Pythagoras is 130 years old. The incircle/excircle derivations C1-C9 of that identity are not.
4. **Incircle + area proof: Loomis and Sawyer, 1901.**
   - Loomis, *Another Proof of the Pythagorean Theorem*, AMM 8(10), 1901, p. 233, DOI 10.2307/2970607. It was indirect, and the editors printed the next item after calling it circular.
   - Sawyer, *The Pythagorean Theorem*, AMM 8(11), 1901, p. 258, DOI 10.2307/2970630. This is the direct proof: tangent lengths give a+2r = b+c, and area gives r(a+b+c) = bc, hence a² = b²+c². The OCR labels the hypotenuse "a".
   - This is the standard incircle and area proof. It is **RELATED** to C4 and C8, whose final step r(a+b+c)=ab it shares. C4 and C8 are explicitly area-free.

## Per-candidate verdicts (3 closest items each)

Legend: SAME = same figure and mechanism. VARIANT = same family with a different circle, identity or route. RELATED = shares a tool only. FT = full text read. TO = title or metadata only.

### C1 (incircle-excircle homothety, similar right triangles AEI and AE'I_a)
**Verdict: no SAME or VARIANT found.**
1. Yanney & Calderhead XXVI, AMM 4(1), 1897-01. Archive.org id `sim_american-mathematical-monthly_1897-01_4_1` (ia: https://archive.org/details/sim_american-mathematical-monthly_1897-01_4_1). Mechanism: two circles about A and B, with a ratio of segments. The result is the same identity in side form. **RELATED** (identity only). FT, figure not visible.
2. Y&C XCVII, AMM 6(3), 1899-03. Excircle on the hypotenuse, area decomposition. **RELATED.** FT.
3. Sawyer 1901, DOI 10.2307/2970630. Incircle tangent lengths plus area. **RELATED.** FT.

### C2 (power of the incenter with respect to the circle on diameter AB)
**Verdict: no SAME found.** No Monthly item uses power of the incenter, or the circle on AB as diameter with the incircle.
1. Y&C XV-XIX, AMM 3(12), 1896-12, pp. 299-300. Circles centred at a vertex, with secant products such as AC·CL = DC·CE. **RELATED** (power-of-a-point route). FT.
2. Y&C XXIV and XXV, AMM 4(1), 1897-01. Circles on the legs as diameters, with AC²=AD·AB. **RELATED.** FT.
3. Y&C XXVII-XXXII, AMM 4(3), 1897-03, pp. 80-81. A circle tangent to the legs, or to a leg and the hypotenuse, with tangent-length products. These are the closest to the incircle for this candidate. **RELATED.** FT.

### C3 (inscribed square on the hypotenuse, three similar corner triangles)
**Verdict: no SAME or VARIANT found.**
1. Y&C I and V, AMM 3(3) and 3(4), 1896. Similar-triangle linear relations with elimination (these proofs derive 6 equations and eliminate). They are the same elimination technique but have no inscribed square. **RELATED.** FT.
2. Y&C XXXII, AMM 4(3), 1897-03. A circle tangent to both legs with centre at the midpoint of a constructed segment, equations eliminated to c² = a²+b². **RELATED.** FT.
3. Crossref searches on "inscribed square hypotenuse Pythagorean" returned only Maehara 1999 (Lexell, irrelevant), Sawyer and Loomis. **No hit.**

### C4 (Pitot's theorem on the tangential trapezoid, ab = r(a+b+c))
**Verdict: no SAME found.** No Pitot, trapezoid or tangential-quadrilateral Monthly item connects to Pythagoras.
1. Sawyer 1901 and Loomis 1901. They reach r(a+b+c) = ab by area. **RELATED**: the final identity is the same, and the route is different (area, which C4 avoids). FT.
2. Y&C XXIX and XXX, AMM 4(3), 1897-03. Tangent-length bookkeeping (AT = AE, BP = BF, and so on) around a circle tangent to the sides. **RELATED.** FT.
3. Crossref query "Pitot theorem tangential quadrilateral" returned nothing relevant (Monthly 2000 "When Quadrilaterals Have Inscribed Circles: 10698" is a problem item, not about Pythagoras). **RELATED** at most. TO.

### C5 (harmonic division of A, P, I, I_a, projected parallel to CB)
**Verdict: no SAME found.**
1. Babbitt 1918, *Relations in a Right-Angled Triangle*, AMM 25, p. 347, DOI 10.2307/2974152 (https://archive.org/download/jstor-2974152/2974152.pdf). It is built on angle bisectors in a right triangle (bisectors of angles A and B perpendicular to CF and CE, inradius r = ab = EF/2). It does not derive Pythagoras and does not use harmonic division. **RELATED** (bisector configuration only). FT.
2. Y&C XXX, AMM 4(3), 1897-03. A circle with centre on a leg, tangent to the other leg and the hypotenuse (a bisector-centred circle). **RELATED.** FT.
3. Crossref search "harmonic range angle bisector internal external" gave nothing relevant. **No hit.** TO.

### C8 (inradii of the two altitude subtriangles, r + r1 + r2 = h)
**Verdict: no SAME found.**
1. Babbitt 1918 (above). It draws the altitude CD and the incircles of ADC and DBC (centres c, d, with cP = Pd = r). The configuration is the same as C8 but no Pythagoras proof is given. **RELATED**, the closest in configuration. FT.
2. Sawyer 1901. **RELATED** (r(a+b+c)=ab). FT.
3. Y&C I, AMM 3(3), 1896. The altitude to the hypotenuse and three similar right triangles. **RELATED.** FT.

### C9 (A-excircle area decomposition, Area = r_a(s-a) = (s-a)(s-b) = ab/2)
**Verdict: no SAME. One VARIANT.**
1. **Y&C XCVII, AMM 6(3), 1899-03, pp. 70-71**: the **C-excircle** area proof. **VARIANT** (different excircle and a different square at C). FT (OCR of the printed page; the formula was garbled but readable as r² = ab/2 + rc, r = (a+b+c)/2).
2. Sawyer 1901. **RELATED.** FT.
3. Y&C XCV, same issue, 1899-03. Uses the area ab/2 = DE·BC/2 + AE·DE/2 with an incircle-like touching point (BE = BC, DE ⟂ AB). **RELATED.** FT.

### Non-candidate Monthly items checked (no match)
- Heo 2015, *A New Proof of the Pythagorean Theorem*, DOI 10.4169/amer.math.monthly.122.5.451. Paywalled, TO. Heo's other proof (Math. Mag.) is a Ptolemy proof. Not checked in the Monthly.
- Luzia 2016, *A Proof of the Pythagorean Theorem After Descartes*, DOI 10.4169/amer.math.monthly.123.4.386. Paywalled, TO. Per Shene's page it uses a unit circle and 1-cos x. Not confirmed.
- Jackson & Johnson 2024, *Five or Ten New Proofs of the Pythagorean Theorem*, DOI 10.1080/00029890.2024.2370240. Trigonometric, law of sines. Publisher PDF returned 403. TO.
- Lengvárszky 2013, *Proving the Pythagorean Theorem via Infinite Dissections*, DOI 10.4169/amer.math.monthly.120.08.751. Dissection. TO.
- Tokieda 1998 is *Mechanical Ideas in Geometry* (10.1080/00029890.1998.12004951). Not Pythagoras. TO.
- Brafman 2014/2015 (algebraic proofs). Gordon 2011, *Semiperimeter and Pythagorean Triples* (10.4169/amer.math.monthly.118.08.680). Triples, not a proof. Hwang & Nam 2020 (determinant). Drucker 2015. Eifler & Rhee 2008. All TO. None is incircle or excircle.
- Rosenbaum 1922 and Hazard 1929 (generalised Pythagoras). Beetle & Loomis 1928, *The Pythagorean Proposition*. TO.
- Problem 10759 (Popescu & Sinefakopoulos, 2000), inequalities with altitudes and exradii. TO.

I found **no Monthly note or problem with r_a·r_b = r·r_c** in Crossref titles. Problem texts are mostly not indexed in titles, so absence is not proof.

## Coverage notes
- Y&C series, 14 instalments by Crossref (1896-03 to 1899-03). I read these issues in full from archive.org OCR: 1896-03, 1896-04, 1896-06/07, 1896-12, 1897-01, 1897-03, 1897-06/07, 1897-10, 1897-11, 1898-03, 1899-02, 1899-03. Proofs I-C. Structure: I-XIV similar triangles; XV-XXI circle chords; XXII-XXVI circle and ratio; XXVII-XXXII tangent circles; XXXIII-XC area and dissection; XCI-XCVII area and algebra (including the excircle proof XCVII); XCVIII-C quaternion. Their bibliography lists 10 sources.
- Not read in full: 1896-02 to 1898-12 issues not in the above list (assumed not to contain instalments by the Crossref dates).
- Figures are not visible in the OCR. Statements about figures (XXVI, XXIX, XXX) are inferred from the text.
- OCR is noisy. Formulas such as XCVII were reconstructed.

## Full query and URL log

### archive.org
- `https://archive.org/advancedsearch.php?q=title:(american mathematical monthly) AND date:[1894-01-01 TO 1925-12-31]` OK, 598 items.
- `https://archive.org/advancedsearch.php?q=identifier:sim_american-mathematical-monthly_189* OR _1900*` OK, listed all issue ids. Combined issues use ids such as `..._june-july-1896_3_6-7`, `..._june-july-1897_4_6-7`, `..._august-september-1896_3_8-9`.
- `https://archive.org/download/<id>/<id>_djvu.txt` for ids `sim_american-mathematical-monthly_YYYY-MM_V_M`, YYYY 1896-1899:
  - OK (200): 1896-01..05, 10, 11, 12; 1897-01..05, 10, 11, 12; 1898-01..05; 1899-01..05, 10, 11, 12.
  - 503 (not a real issue, because the months are combined issues): 1896-06..09, 1897-06..09, 1898-06, 07.
  - Combined ids fetched OK: `june-july-1896_3_6-7`, `june-july-1897_4_6-7`, `august-september-1897_4_8-9`.
  - Not fetched: `august-september-1896_3_8-9`, 1898 combined summer issue, 1899 summer.
- `https://archive.org/download/jstor-2974152/2974152.pdf` OK (Babbitt 1918).
- `https://archive.org/download/jstor-2970630/2970630.pdf` OK (Sawyer 1901).
- `https://archive.org/download/jstor-2970607/2970607.pdf` OK (Loomis 1901).
- `https://archive.org/download/jstor-2972556/2972556.pdf` OK (Johnson 1920, irrelevant).

### Crossref (filter=issn:0002-9890)
Queries (bibliographic), all OK unless noted:
- "Yanney Calderhead new and old proofs of the Pythagorean theorem" (14 instalments listed)
- "proof of the Pythagorean theorem excircle"; "Pythagorean theorem incircle exradius right triangle"; "Pythagorean theorem inscribed square hypotenuse"; "Pitot theorem Pythagorean"
- "Jackson Johnson Pythagorean theorem"; "Lengvarszky Pythagorean"; "Tokieda Pythagorean theorem"; query.author=Tokieda 1997-1999
- "right triangle exradii inradius problem"; "Pythagorean theorem harmonic"; "Pythagorean theorem tangent segments semiperimeter"
- "proof of the Pythagorean theorem" paged offset 0/100/200/300 (60-title list of all Pythagoras-titled items, 1896-2024)
- "Pythagorean theorem proof circles tangent radius right triangle"; "similar triangles proof Pythagorean theorem"; "right triangle inscribed circle semiperimeter"; "Pythagoras proof area Heron triangle right" (from 1930)
- "exradii right triangle"; "radii of inscribed and escribed circles right triangle"; "escribed circles right triangle area product"; "inscribed square right triangle hypotenuse side"; "Pitot theorem tangential quadrilateral"; "harmonic range angle bisector internal external"

### Unpaywall
- `api.unpaywall.org/v2/<DOI>?email=test@example.org` for 10.1080/00029890.2024.2370240 (is_oa true but PDF 403), 10.4169/amer.math.monthly.122.5.451 (closed), 123.4.386 (closed), 10.2307/2974152 (OA, archive.org), 120.08.751 (closed).
- `https://www.tandfonline.com/doi/pdf/10.1080/00029890.2024.2370240?needAccess=true` 403.

### Web search
- "Jackson Johnson Five or Ten New Proofs of the Pythagorean Theorem American Mathematical Monthly 2024" gave press coverage; confirms authors Ne'Kiya Jackson and Calcea Johnson, Monthly 131(9) 739, trigonometric and law-of-sines proofs.
- "Nam Gu Heo A New Proof of the Pythagorean Theorem Monthly 2015" gave no abstract.
- "Luzia A Proof of the Pythagorean Theorem After Descartes" found Shene's page https://pages.mtu.edu/~shene/VIDEOS/GEOMETRY/GEO-HTML/Tri-Proofs/Luzia.html (unit-circle trig). Not confirmed as the Monthly paper.
- "Pythagorean theorem proof excircle exradius r_a r_b = r r_c ... (s-a)(s-b)=s(s-c)": leads, not verified: CTK Exchange thread https://www.cut-the-knot.org/htdocs/dcforum/DCForumID4/694.shtml (claims the core is (p-a)(p-b)=ab/2); cut-the-knot Proof 113 https://www.cut-the-knot.org/pythagoras/Proof113.shtml (inscribed semicircle, intersecting chords); arXiv 2507.02896 "Dissecting Circles to Prove a Square". These are outside the Monthly. Other stages may check them.
- Semantic Scholar and arXiv API: arXiv API call for Jackson/law of sines returned no entries. Semantic Scholar not used.
