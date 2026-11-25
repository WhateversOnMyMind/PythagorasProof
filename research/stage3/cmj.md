# Stage 3: CMJ / Forum Geometricorum novelty search

Source assigned: The College Mathematics Journal (ISSN 0746-8342). Searched by Crossref, Semantic Scholar, Unpaywall, web search and a few free pages.
**Limits:** every CMJ item below is paywalled (Unpaywall: is_oa false, or bronze landing page only; tandfonline returned 403). I could read titles only, never the article text. Verdicts on CMJ items rest on titles and are unverified. forumgeom.fau.edu did not resolve (not in the session's allowed hosts) and web.archive.org is blocked, so Forum Geometricorum was NOT checked directly. Semantic Scholar hit HTTP 429 on later queries. International Journal of Geometry and Journal for Geometry and Graphics were not searched separately, apart from the general web searches.

## Per-candidate verdict (3 closest each)

Overall: nothing found that is EXACTLY any candidate. The nearest hit is CTK forum #694 (Pestich, 2006, free text read), which is close to C2 and C9. Existing incircle proofs (Oliver 1997, Wright) use the area identity p(p-c)=ab/2 or r+tangent segments, which is where C4 and C8 end up.

### C1 (incircle-excircle homothety, r/(s-a)=r_a/s)
1. CTK Pythagoras proof #42, Jack Oliver, Math. Gazette 1997 (https://www.cut-the-knot.org/pythagoras/index.shtml). Mechanism: r=p-c, then area two ways gives p(p-c)=ab/2. RELATED. Full text (summary only; the page is an image/short text).
2. CTK forum #694 Pestich 2006 (https://www.cut-the-knot.org/htdocs/dcforum/DCForumID4/694.shtml). Mechanism: exradius relation Rc=r+Ra+Rb plus intersecting chords. RELATED. Full text.
3. Colin Wright, "Pythagoras by Incircle" (https://www.solipsys.co.uk/new/PythagorasByIncircle.html). Mechanism: ab=r^2+ar+br from area two ways. RELATED. Full text.
Verdict: no homothety or similar-triangle-on-bisector proof found. Looks novel within what I could search.

### C2 (power of the incenter, circle on diameter AB)
1. CTK forum #694, Maj. Pestich, 23 Mar 2006, "Tell Pythagoras that V. Poncelet says 'Hi.'" (https://www.cut-the-knot.org/htdocs/dcforum/DCForumID4/694.shtml). Mechanism (from fetch summary): a circle through I, A, B and the intersecting chords theorem give r*Rc=(p-a)(p-b); area = r*Rc = ab/2; expansion gives c^2=a^2+b^2. VARIANT, close: same identity (s-a)(s-b)=r*r_c with a chord-power step, but built on area = r*Rc and Rc=r+Ra+Rb, not the power r*c vs xy-r^2 on the diameter circle. Worth reading the original thread to compare. Full text, but only a summary was seen, not the raw page.
2. CTK Proof #113, "Pythagorean Theorem by Inscribed Semicircle", J. Molokach 2015 (https://www.cut-the-knot.org/pythagoras/Proof113.shtml). Mechanism: similar triangles plus intersecting chords for a semicircle's radius. RELATED. Full text.
3. CTK Proof #42 (Oliver 1997). RELATED (incircle, no chords).

### C3 (inscribed square on the hypotenuse, three corner triangles)
1. Price and Bernhart, "Pythagorean Triples and a New Pythagorean Theorem", arXiv math/0701554 (https://arxiv.org/pdf/math/0701554). Mechanism: inscribed squares in a right triangle, side abc/(ab+c^2) (as reported by search; not read in full). RELATED. They use the theorem, not prove it.
2. CTK "Pythagoras by Similarity" (https://www.cut-the-knot.org/pythagoras/PythagorasBySimilarity.shtml). Mechanism: altitude similarity. RELATED.
3. Kazdan, UPenn, "Pythagorean Theorem: Using Similar Triangles" (https://www2.math.upenn.edu/~kazdan/Pythagoras). RELATED.
Verdict: no hit for the hypotenuse-square proof; looks novel.

### C4 (Pitot's theorem on the tangent trapezoid)
1. CTK #42 (Oliver 1997). RELATED. Reaches ab=r(a+b+c) by area, not Pitot.
2. Wright, Pythagoras by Incircle: ab=r^2+r(a+b). RELATED.
3. arXiv 2507.02896 (https://arxiv.org/html/2507.02896v1), circle-segment proof. Not related in mechanism (no Pitot or incircle); listed only because it surfaced.
Searches for Pitot + Pythagoras returned nothing. Looks novel.

### C5 (harmonic division (A,P;I,I_a))
1. Conley and Jaroma, "Pythagoras by the Cross Ratio", CMJ 37(5) 2006?, DOI 10.2307/27646274 (title and authors only; Crossref lists 2006). Mechanism unknown: paywalled, no abstract. RELATED, possibly VARIANT. This is the one item needing a human or library check, since a cross-ratio proof of Pythagoras may use harmonic division.
2. Kedlaya, Geometry Unbound (https://kskedlaya.org/geometryunbound/geom-080399.pdf). Mechanism: general incenter/excenter, cross ratio background. RELATED, not a proof.
3. arXiv 2506.06304, trig and angle-bisector theorem proofs. RELATED, weak.

### C8 (r + r1 + r2 = h)
1. CTK "Inradii Relation in Right Triangle" (https://www.cut-the-knot.org/m/Geometry/FourIncirclesInRightTriangle.shtml). The identity r1+r2+r3=CD, proved by using Pythagoras (the step (a+b)^2-c^2=2ab). RELATED, same figure but circular: it assumes the theorem.
2. GoGeometry problems 22-24 (https://gogeometry.com/problem/p022_right_triangle_incircles.htm). Same identity, RELATED.
3. CTK "Three Incircles in a Right Triangle" (https://www.cut-the-knot.org/Curriculum/Geometry/ThreeIncirclesInRightTriangle.shtml). RELATED.
Whether a non-circular proof (tangent lengths only) exists elsewhere was not found. The CMJ "Proof Without Words: A Right Triangle Identity" (Nelsen, 2016, 10.4169/college.math.j.47.5.355) is title only and could be relevant; unread.

### C9 (A-excircle area decomposition)
1. CTK forum #694 (Pestich 2006), area = r*Rc and exradius relation. VARIANT/RELATED. Full text.
2. CTK #42 (Oliver 1997), area = p(p-c). RELATED.
3. John D. Cook, "Incircles and Excircles of Pythagorean triangles" (https://www.johndcook.com/blog/2026/06/25/incircle-excircle/). Uses the right-triangle assumption. RELATED, not a proof.

## CMJ items that surfaced (all titles only; paywalled)
- Basu, "A New and Rather Long Proof of the Pythagorean Theorem by Way of a Proposition on Isosceles Triangles", CMJ 47(5) 2016, 10.4169/college.math.j.47.5.356. The Basu item in the brief; this is not an excircle proof by title.
- Conley, Jaroma, "Pythagoras by the Cross Ratio", 10.2307/27646274 (see C5).
- Nelsen, PWW "A Right Triangle Identity", 2016, 10.4169/college.math.j.47.5.355 (see C8).
- Foster, PWW "Integer Right Triangle Hypotenuses Without Pythagoras", 2016, 10.4169/college.math.j.47.2.101 (bronze landing page, 403 on fetch).
- Ren, PWW "Pythagoras for a Right Trapezoid", 2014, 10.4169/college.math.j.45.3.198.
- Nirode, Krumpe, "Donuts with Pythagoras", 2022, 10.1080/07468342.2022.2099705 (rectangular donuts and Pythagorean triples; not an excircle proof).
- Crisman, Veatch, "Reinventing Heron", 2014, 10.4169/college.math.j.45.3.191; "Factoring Heron", 2009; "On Heron's Formula for the Area of a Plane Triangle", 2024, 10.1080/07468342.2024.2318191.
- Hardy, "Behold! The Pythagorean Theorem via Mean Proportions", 1986; "Leonardo da Vinci's Proof", 2016; "Reframing the Pythagorean Theorem", 2019; other PWWs.

## Query / URL log
Crossref (https://api.crossref.org/works, filter=issn:0746-8342): "Pythagorean theorem proof" OK; "Pythagoras incircle right triangle" OK; "excircle right triangle" OK; "exradii right triangle" OK; "inscribed square right triangle" 429 then OK; "Pitot theorem" OK; "harmonic division bisector" 429 then OK; "Heron formula right triangle" OK; "Basu lemmas Pythagorean" 429 then OK; "proof without words Pythagorean" OK; "incircle excircle Pythagoras" OK; "Pythagorean theorem inradius" OK. No title with excircle/Pitot/harmonic division in a geometry sense.
Crossref per-DOI + Unpaywall (api.unpaywall.org/v2/DOI?email=test@example.org): 47.5.355, 27646274, 2099705, 45.3.191, 47.5.356: all closed/no OA copy.
Semantic Scholar per-DOI: abstracts elided for most; "Donuts with Pythagoras" abstract visible. Search endpoint: 429 for 3 queries (no results).
Crossref search of Forum Geometricorum (ISSN 1534-1178): empty/no useful output.
Web search: incircle/excircle exradius r_a=s-b; Forum Geometricorum + excircle; Pitot + Pythagoras; inscribed square similar triangles; r+r1+r2=h; cut-the-knot (s-a)(s-b)=s(s-c); forumgeom + incircle; incenter/excenter similar triangles; harmonic/cross ratio; corner triangles inscribed square. None found a candidate. A web search restricted to web.archive.org was rejected (blocked domain).
WebFetch: solipsys PythagorasByIncircle OK; CTK 694 OK; arXiv 2507.02896 OK; CTK Proof113 OK; CTK pythagoras index OK (truncated at proof #88, last 17k chars unread); tandfonline Foster 403; forumgeom.fau.edu DNS fail (host not allowed); web.archive.org blocked.
