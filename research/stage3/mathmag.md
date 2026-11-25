# Stage 3 search: Mathematics Magazine (ISSN 0025-570X / 1930-0980)

Method: Crossref bibliographic queries filtered to both ISSNs (title, author and DOI only; Crossref has no abstracts for these), Semantic Scholar and Unpaywall DOI lookups, web search, Nelsen PWW text and TOC pages, cut-the-knot, arXiv.

Limits: Math Mag article full text was unavailable for every item. T&F and JSTOR returned 403 or a client challenge, and Unpaywall reported is_oa=False for all of them. Judgements on Math Mag items below rest on title, author and secondary descriptions. Items whose content could not be seen are marked "title only". Nobody has seen the figure of any of the "Area of a Right Triangle" PWWs.

## Bottom line
- No Math Mag item is EXACTLY any of C1-C9. Nothing found for excircle/exradius, Pitot, harmonic division, power of the incenter, or an inscribed square on the hypotenuse in Math Mag. Crossref queries for "excircle", "exradii", "tangential trapezoid Pitot", "harmonic division angle bisector" and "squares inscribed" returned no relevant Pythagoras-proof titles.
- The only well-established near-duplicate is the incircle area endgame (C4/C8/C9 final step): xy = r(x+y+r), area = xy, and (r+x)^2+(r+y)^2 = (x+y)^2. It is SAME or VARIANT as the last step, not as the route to it. See the Dulio-Laeng and Rigby/Oliver entries below.

## Per-candidate (3 closest each)

### C1 (incircle-excircle homothety, (s-c)/(s-a) = (s-b)/s)
1. cut-the-knot proofs #33/#34/#42/Rogers (Shai Simonson; Rogers "how the Pythagorean proposition turns on the inscribed circle"), https://www.cut-the-knot.org/pythagoras/index.shtml . Mechanism: incircle tangent lengths only, with area = rp or an algebraic identity. No excircle. RELATED.
2. Chakraborty, "Pythagorean theorem from Heron's formula - another proof", arXiv 1702.03207 (Resonance 2016). Mechanism: Heron, not circles. RELATED (weak). The same goes for cut-the-knot #23 and #75.
3. Math Mag "The Area of a Right Triangle" PWWs (see C9). Title only. RELATED.
Verdict: no hit. Nothing seen with excircle, r_a = s-b, or a bisector homothety. Appears novel within this source.

### C2 (power of the incenter wrt circle on diameter AB)
1. cut-the-knot proof #79, "Pythagorean theorem from the intersecting chords theorem", https://www.cut-the-knot.org/pythagoras/proof79.shtml . Mechanism: intersecting chords on circles centred at the vertices or with radius a leg/altitude. Not the incenter. RELATED.
2. cut-the-knot proof #22 (Brodie): power of a point, a^2 = xc and b^2 = yc, using circles on the legs as diameters. RELATED.
3. CTK Exchange thread (dcforum 694) mentioning the intersecting chords relation r*R_c = (p-a)(p-b) through I and A, B. Fragmentary. Link: https://www.cut-the-knot.org/htdocs/dcforum/DCForumID4/694.shtml (seen only through search snippet). RELATED. This is the one to chase, because r*r_c = (s-a)(s-b) is the identity in the brief.
Math Mag: nothing found. Verdict: no SAME. The CTK thread has the key identity without a Pythagoras proof (unverified, snippet only).

### C3 (inscribed square on the hypotenuse, corner triangles similar)
1. Bailey, "Squares Inscribed in Angles and Triangles", Math Mag 1998, 10.1080/0025570x.1998.11996652. Title only. RELATED (squares in triangles generally, no Pythagoras proof known).
2. Price and Bernhart, arXiv math/0701554. The harmonic and symphonic squares at the right angle, with side formulas ab/(a+b) and abc/(ab+c^2). Uses similarity but sits at the right angle. RELATED.
3. Mauldon, "Similar Triangles", Math Mag 1966, 10.1080/0025570x.1966.11975709. Title only, not Semantic Scholar-indexed. RELATED at most.
Verdict: no hit for a hypotenuse-square derivation of the Pythagorean theorem.

### C4 (Pitot's theorem on a tangential right trapezoid)
1. No Pitot/Pythagoras item found in Math Mag. The Crossref query "tangential trapezoid Pitot" only returned unrelated titles (Treeby 2026, "Surface Area Minimization in Pyramids over Tangential Polygons", is about pyramids).
2. Dulio and Laeng, arXiv 1910.08396 gives the target identity ab = r(a+b+c) (via area, "|ABC| = r(r+s+t)") but not by Pitot. VARIANT as to the end result only.
3. cut-the-knot #42 (Oliver, Math Gazette 81, 1997, pp 117-118; Jelenski/Moellmann earlier). Area = rp, r = p-c. RELATED/VARIANT as to the endpoint.
Verdict: the route via Pitot is novel as far as found. The end identity is known.

### C5 (harmonic division (A,P;I,I_a) projected to CA)
1. Nothing in Math Mag (Crossref "harmonic division angle bisector" returned only unrelated harmonic series titles; Larsson 1958 "Harmonic Sets and Circles", 10.2307/3029050, is title only).
2. Kung, "PWW: A Line through the Incenter of a Triangle", Math Mag 2002, 10.1080/0025570x.2002.11953131. Title only. RELATED (incenter, no Pythagoras).
3. cut-the-knot "Four Incircles in a Right Triangle" (https://www.cut-the-knot.org/m/Geometry/FourIncirclesInRightTriangle.shtml, seen only through a search snippet). Similarity plus excircle, giving r_2 = (r/p)(p-b). RELATED.
Verdict: no hit.

### C8 (inradii of the two altitude sub-triangles, r + r1 + r2 = h)
1. cut-the-knot "Three Incircles in a Right Triangle" (sangaku, Iwate; Fukagawa and Pedoe 1989), https://www.cut-the-knot.org/Curriculum/Geometry/ThreeIncirclesInRightTriangle.shtml . The page proves r1+r2+r3 = CD using r = (leg+leg-hyp)/2 scaled by similarity, then area. It USES Pythagoras, and the page says the argument "may be seen as the converse of one of the proofs of the Pythagorean theorem". The result is SAME as the claim; the proof route is VARIANT. A tangent-length-based, Pythagoras-free version would be the candidate's novelty.
2. Wolfram Demonstration "Incircles in Right Triangles" (https://demonstrations.wolfram.com/IncirclesInRightTriangles/). Same sangaku. Page text not retrieved. RELATED.
3. Dulio and Laeng, arXiv 1910.08396 (the endpoint ab = r(a+b+c)). RELATED.
No Math Mag item found.

### C9 (A-excircle area decomposition: area = r_a (s-a) = (s-a)(s-b) = ab/2)
1. Math Mag PWW, "The Area of a Right Triangle", Pinter 1998 (10.1080/0025570x.1998.11996663, Math Mag 71, p. 314) and Nelsen 2007 (10.1080/0025570x.2007.11953449, Math Mag 80, p. 45). Title only; no abstract or figure was seen. Presumably the incircle/tangent-segment area formula (area = xy, product of the hypotenuse tangent segments). That is an inference from the title and from the brief's own mention, not something I checked. I could not confirm that these PWWs involve the incircle at all. RELATED to the same area = (s-a)(s-b) fact for the incircle (x = s-a, y = s-b). Not an excircle. Flag for a human check at JSTOR or T&F.
2. Dulio and Laeng, "A right path to cyclic polygons", arXiv 1910.08396. Theorem 2 proves the area of a right triangle = st (product of the hypotenuse tangent segments) from |ABC| = r(r+s+t) and |ABC| = (s+r)(t+r)/2. Theorem 4 then derives Pythagoras as (s+r)^2+(r+t)^2 = (s+t)^2. This is the closest hit for the identity (s-a)(s-b) = area. SAME (identity and Pythagoras endgame), VARIANT (the route is the incircle, not the A-excircle).
3. cut-the-knot #42 plus Rigby 1996 note (r^2+rx+ry = xy gives (r+x)^2+(r+y)^2 = (x+y)^2, https://www.cut-the-knot.org/pythagoras/index.shtml). Same incircle area-twice trick. VARIANT.
Also mathpages https://mathpages.com/home/kmath832/kmath832.htm states area = pq (hypotenuse segments). SAME fact, no excircle.
Verdict: the xy-area route is published (Dulio-Laeng 2019 arXiv, Rigby 1996, Oliver 1997). The A-excircle route (area = r_a(s-a)) was not found.

## Other Math Mag items read or noted (not matching any candidate)
- Kung 1993 PWW "Area and the Projection Theorem of a Right Triangle" (10.1080/0025570x.1993.11996064): title only.
- Lin 1999 PWW "The Product of the Perimeter of a Triangle and Its Inradius is Twice the Area" (10.1080/0025570x.1999.11996756): the area = rp fact used in C4, C8, C9. Title only.
- Oxman and Stupel 2018 PWW "An Elegant Property of an Isosceles Right Triangle" (10.1080/0025570x.2018.1503035): no abstract.
- Jepsen 2007 "Fitting One Right Triangle in Another" (10.1080/0025570x.2007.11953482): title only.
- Veljan 2000 "The 2500-Year-Old Pythagorean Theorem" (10.1080/0025570x.2000.11996853): survey of proofs, text not seen.
- Bhatnagar and Shrivastava, "An Uncountable Number of Proofs of the Pythagorean Theorem" (Math Mag 2024, 10.1080/0025570x.2024.2401764; arXiv 2301.06812): self-similar dissections. A grep of the arXiv text found no incircle, excircle, Pitot or inscribed-square content.
- Nelsen 2024 "The Incircle of an Arbelos" (10.1080/0025570x.2024.2336858): arbelos inradius via a cyclic quadrilateral, not Pythagoras.
- Pythagoras PWWs seen only by title or summary: Molokach 2019 (rearranges to a single square), Cantone 2020 (dissection), Nicollier and Peperko 2018 (Loomis-style puzzle), Heo 2017 (Ptolemy), Perng 2019 (Huygens variant). Also Nelsen's PWW series "Pythagorean Theorem I-VI" in PWW I (6 proofs); the PWW I OCR text (https://dn720001.ca.archive.org/0/items/proofs-without-words-roger-nelsen/Proofs%20without%20Words%20-%20Roger%20Nelsen_text.pdf) has no incircle, excircle or inscribed-square entries (the OCR is poor). PWW II and III tables of contents could not be fetched (AMS 403, MAA 521, Cambridge 302).
- Dissecting Circles to Prove a Square, arXiv 2507.02896: circle-segment area proof, no relation to the candidates.

## Query / URL log
All Crossref calls: https://api.crossref.org/works?query.bibliographic=<Q>&filter=issn:0025-570X (and issn:1930-0980)&rows=12-25&select=title,DOI,issued,author. Every one succeeded unless noted. A few 1930-0980 calls returned non-JSON (err) for "excircle right triangle Pythagorean", "inscribed square hypotenuse Pythagorean" and "squares inscribed in right triangle".
Queries: "Pythagorean theorem proof without words"; "right triangle incircle inradius proof without words"; "excircle right triangle Pythagorean"; "inscribed square hypotenuse Pythagorean"; "Pitot theorem Pythagorean theorem"; "area of right triangle product of hypotenuse tangent segments"; "incircle"; "inscribed circle right triangle"; "excircle"; "inradius"; "tangent circles Pythagorean"; "Pythagorean theorem circle"; "semiperimeter right triangle inradius"; "harmonic division angle bisector"; "squares inscribed in right triangle"; "Pythagorean theorem new proof similar triangles"; "Pythagoras Proof Without Words incircle"; "Pythagorean theorem inscribed circle"; "Proof without words hypotenuse segments tangency"; "r = (a+b-c)/2"; "sum of inradii altitude right triangle sangaku"; "exradii right triangle"; "Japanese temple geometry sangaku"; "tangential trapezoid Pitot"; "inscribed square hypotenuse side right triangle"; "square inscribed in a right triangle side"; "radical axis power of a point Pythagorean"; "Pythagorean theorem without area"; "proof of Pythagorean theorem circles tangent"; "incenter excenter angle bisector homothety right triangle".
Crossref /works/<DOI> (author, pages; no abstracts) and Unpaywall https://api.unpaywall.org/v2/<DOI>?email=test@example.org for 13 DOIs (1998.11996663, 2007.11953449, 1993.11996064, 2019.1586232, 2020.1791531, 2018.1473701, 2018.1503035, 2000.11996853, 90.3.187, 2020.1817696 (OA via arXiv 1604.03808), 2021.1843929, 2026.2735167, 2025.2558493): all is_oa False except Navas 2020.
Semantic Scholar https://api.semanticscholar.org/graph/v1/paper/DOI:<DOI>?fields=title,abstract,tldr,openAccessPdf for the DOIs above plus 1999.11996756, 2007.11953482, 1998.11996652, 1966.11975709 (not found), 2024.2401764, 2019.1541685, 2024.2336858. Abstracts elided by the publisher for most.
Web search queries (standard unless marked): the PWW Area of a Right Triangle/incircle/hypotenuse segments; excircle plus (s-a)(s-b) = s(s-c); inscribed square on hypotenuse similar triangles; Nelsen PWW III contents; Nelsen PWW II TOC; Oxman Elegant Property; Pinter Area of a Right Triangle; Pythagorean incircle tangent lengths r = s-c (extended); incircle/excircle squares at right angle; power of the incenter / chord through incenter.
Page fetches: tandfonline.com/doi/abs/10.1080/0025570X.2007.11953449 (403); jstor.org/stable/27642918 (client challenge); cut-the-knot.org/books/pww/content.shtml (OK but no entries); bookstore.ams.org/CLRM/14 (403); old.maa.org/node/108492 (521); cambridge.org PWW III pages (302); studylib PWW (403); www.cut-the-knot.org/pythagoras/index.shtml (OK, read #22, #23, #33, #34, #42, #75, #79, Rogers); davidmorin.physics.fas.harvard.edu chapter (403); ThreeIncirclesInRightTriangle (OK); demonstrations.wolfram.com/IncirclesInRightTriangles (title only); arXiv PDFs 2301.06812, 1910.08396, 1702.03207, 2507.02896 (OK; text read); PWW I text from archive.org (OK, 156 pages, poor OCR).
