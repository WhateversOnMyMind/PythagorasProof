# Stage 3 findings: arXiv / Semantic Scholar / Crossref / web (candidates C1-C5, C8, C9)

Bottom line: no source found that is EXACTLY any candidate. Three nearby published results matter:
(a) the identity xy = r(x+y+r) (equivalently area = product of hypotenuse tangent segments) and its Pythagoras corollary are PUBLISHED: Rigby 1996, J. Oliver Math. Gazette 81 (1997) 117-118 (cut-the-knot #42), Dulio-Laeng arXiv:1910.08396 (2019);
(b) the "bisector of A, tan(A/2) computed two ways" proof is PUBLISHED: Yanney-Calderhead Am. Math. Monthly 3 (1896) = Loomis = cut-the-knot #82 (Ryoo, Monthly 2009); Kise et al. 2506.06304 section 3 is essentially this;
(c) nothing found for Pitot (C4), harmonic division (C5), power of the incenter (C2), or the square on the hypotenuse (C3).
Caveat: full-text of Loomis, the Math Gazette items and Oliver were NOT read (only cut-the-knot's summaries); arXiv search is metadata/abstract only; Semantic Scholar was rate-limited (HTTP 429) for every query.

## Per candidate (3 closest each)

### C1 incircle-excircle homothety, r/(s-a)=r_a/s
1. https://www.cut-the-knot.org/pythagoras/index.shtml  Proof #82 (Yanney-Calderhead 1896; Loomis; Ryoo, Monthly 116 (2009) 687). Bisector AD of A, DE perp AB, CD=DE=x; similar triangles give x=ab/(b+c) and (c-b)/x=a/b, so (c-b)(c+b)=a^2. Core: point on A's bisector, right triangles similar by homothety at A, tan(A/2) two ways. VARIANT (same principle; C1 uses I and I_a and tangent lengths in s, #82 uses the bisector foot on BC and no circles).
2. https://arxiv.org/abs/2506.06304 (Kise et al.) sec. 3. Same figure as #82: tan(A/2)=EC/AC=a/(b+c) by the bisector theorem, and =DC/BC=(c-b)/a by an isosceles construction, so c^2=a^2+b^2. VARIANT of C1 by the same standard as #82 (really a restatement of #82/Loomis, so the "novel" claim there is doubtful). Differences from C1: the equation is a/(b+c)=(c-b)/a, not (s-c)/(s-a)=(s-b)/s; no incircle/excircle; uses the foot P on BC (which is also C5's P) rather than I, I_a. Its sec. 4 derives the tan double-angle formula from the bisector theorem.
3. cut-the-knot #39 (J. B. Sutton, Math. Gazette 86 (2002) 72; Loomis #14): isosceles A-centered circle, a/(c+b)=(c-b)/a (half-angle at A again). RELATED.
Exact match: none.

### C2 power of incenter w.r.t. circle on diameter AB, rc = xy - r^2
1. cut-the-knot #43 (Hoehn; Yanney-Calderhead XVI): power of point with circle centre B radius b, (c-b)(c+b)=a^2. RELATED (power of a point, but tangent to a different circle, no incenter).
2. cut-the-knot proof via power of a point from C: BC tangent to circle on diameter CA gives a^2=xc, b^2=yc (x+y=c). RELATED (power of a point with right-angle tangent, no incircle).
3. arXiv:1910.08396 Thm 2/4: xy = r(x+y+r), the same final identity as C2 (xy - r^2 = rc). RELATED (identity SAME, mechanism area not power).
Exact match: none; C2's mechanism appears novel.

### C3 inscribed square on hypotenuse, no altitude/area
1. arXiv:math/0701554 (Price-Bernhart): square inscribed on hypotenuse; 1/alpha+1/beta=1/eta; side abc/(c^2+ab). RELATED (same figure but it USES Pythagoras, not a proof of it).
2. cut-the-knot index: no inscribed-square proof found (scan for "inscribed"). 
3. Web search (inscribed square on hypotenuse + Pythagorean proof) returned only the altitude/similar-triangle proofs (Kazdan notes, Euclid VI.31). RELATED at most.
Exact match: none found. Looks novel (not checked against the full Loomis text).

### C4 Pitot on tangential right trapezoid -> ab = r(a+b+c)
1. cut-the-knot #42 (Rigby 1996; J. Oliver, Math. Gazette 81 (1997) 117-118; Jelenski 1988 attributing Moellmann): area rp and area ab/2, r=p-c, so p(p-c)=ab/2. RELATED/VARIANT of the target ab=r(a+b+c) (same identity, via area; C4 avoids area with Pitot).
2. arXiv:1910.08396 eq. (1) |ABC| = r(r+s+t) and Thm 2: same identity via area. RELATED.
3. cut-the-knot #45 (D. G. Rogers; Liu Hui a+b=c+d, d=2r). RELATED (inscribed circle, same r=s-c step).
Pitot/tangential trapezoid + Pythagoras: zero hits on arXiv, Crossref, web. Exact match: none.

### C5 harmonic division (A,P;I,I_a)
1. cut-the-knot #82 / Kise sec. 3 (P = foot of A's bisector, EC=ab/(b+c)). RELATED (same point P, no harmonic/cross-ratio).
2. cut-the-knot #82 as above. RELATED.
3. None other. arXiv queries for harmonic/cross-ratio + Pythagorean returned only music/means papers.
Exact match: none; harmonic-division mechanism found nowhere.

### C8 r + r1 + r2 = h
No paper found with the altitude sub-triangle inradii (I did not search sangaku/temple-geometry sources; the sum-of-inradii relation may be classical).
1. arXiv:1910.08396 (tangent-length bookkeeping, st = r(r+s+t)). RELATED.
2. cut-the-knot #42 (Oliver/Rigby). RELATED (r(a+b+c)=ab end point).
3. cut-the-knot #46 (Tao Tong; altitude/area two ways). RELATED, weak.
Exact match: none.

### C9 A-excircle area decomposition
1. arXiv:1910.08396 Thm 2: area = st = (s-a)(s-b), i.e. area equals the product of the hypotenuse tangent segments, via incircle area decomposition and (r+s)(r+t)/2 = r(r+s+t); Thm 4 then gives (s+r)^2+(r+t)^2=(s+t)^2. Identity SAME as C9's area=(s-a)(s-b); mechanism differs (incircle, not excircle). VARIANT.
2. cut-the-knot #42 Rigby: (r+x)(r+y)=r(2r+2x+2y), i.e. xy=r(x+y+r). Same identity. VARIANT.
3. arXiv:1702.03207 (Heron's formula + circumcircle, different mechanism). RELATED, weak.
Exact match: none for the excircle decomposition itself; the identity is known.

## Other arXiv proof-of-Pythagoras papers checked (full text), none overlap
- 1502.06628 Luzia: trig half-angle formula, cos t = 1-2sin^2(t/2), limiting product. Unrelated.
- 2301.06812 Bhatnagar-Shrivastava: self-similar square/Bhaskara tilings. Unrelated.
- 1604.03808 Navas: equilateral triangles on the sides, rotations. Unrelated.
- 2309.16691 Cavallina: shape derivatives (translate the triangle). Unrelated.
- 1702.03207 Chakraborty: Heron on triangles ABO, AOC with circumcenter O. Unrelated.
- 2507.02896 Chang: circular segments and area. Unrelated.
- 2511.00089 Navas: ziggurat/pyramid area rearrangement. Unrelated.
- 1311.0816 Lemmermeyer (da Vinci), 2503.11678 (trig/Gasing triangle), 2509.03314 (spherical/hyperbolic), 2511.00007 (conics), 1310.0986 (history): not relevant.

## Query / URL log
arXiv API base https://export.arxiv.org/api/query?search_query=... (all OK; 0 results marked 0):
- all:excircle+all:Pythagorean 0; all:excircle+all:Pythagoras 0; all:exradius+Pythagorean 0; all:exradius+"right triangle" 0; all:exradii+"right triangle" 0; all:excircle+"right triangle" (1 irrelevant: 2605.27639); all:excircles+"right triangle" (same)
- all:incircle+"Pythagorean theorem"+proof 0; all:incircle+Pythagoras -> 1910.08396; all:incircle+Pythagorean -> 0809.0902 (triples, not a proof); all:incenter+Pythagorean 0; all:inradius+Pythagorean+proof 0; all:Pythagorean+"inscribed circle" -> 1102.4312 (irrelevant); all:Pythagoras+"right triangle"+incircle -> 1910.08396
- "power of a point"+incenter+Pythagorean 0; "Pythagorean theorem"+"power of a point" 0; +"intersecting chords" 0
- "inscribed square"+"right triangle" -> math/0701554; "inscribed square"+Pythagorean / +hypotenuse -> math/0701554 only
- Pitot+Pythagorean 0; Pitot+"right triangle" 0; "tangential trapezoid"+"right triangle" 0
- harmonic+"Pythagorean theorem"+proof 0; harmonic+Pythagorean (music noise only); +"cross ratio" 0; "Pythagorean theorem"+homothety -> 2511.00007 (irrelevant)
- Heron+excircle+Pythagorean 0; "angle bisector"+Pythagorean -> 2506.06304 (+1007.5264, 0809.0902, 2209.10434 not proofs); "Pythagorean theorem"+"half-angle"+proof 0; "tangent segments" 0; Descartes 0; "without area" 0; "elementary proof" 0
- ti:"Pythagorean theorem"+ti:proof; ti:Pythagoras+ti:proof; "new proof"+"Pythagorean theorem"; "proof of the Pythagorean theorem"; cat:math.HO+abs:Pythagorean/Pythagoras+proof (lists of the known papers plus 1310.0986)
- Full texts via https://arxiv.org/pdf/ID, all OK: 1502.06628 2506.06304 2301.06812 1604.03808 2309.16691 1702.03207 2507.02896 2511.00089 math/0701554 1910.08396 2511.00007 2503.11678 2509.03314 1311.0816 1310.0986.
Semantic Scholar https://api.semanticscholar.org/graph/v1/paper/search?query=... : 13 attempts incl. excircle/incircle/Pitot/inscribed square/harmonic/power-of-a-point/Heron queries; ALL FAILED with HTTP 429 (shared proxy rate limit), even after 20-s backoff. No cross-check done.
Crossref https://api.crossref.org/works?query=... (8 queries OK, one returned a non-JSON error): results were generic Wolfram Demonstrations items. Leads only: "14 New Methods to Prove the Pythagorean Theorem by using Similar Triangles" (10.20431/2347-3142.0802003, 2020; not read), Math. Gazette "Escribed and inscribed circles of Pythagorean triangles" 10.1017/s0025557200175163 (2004; likely about triples, not read, paywalled), Math. Gazette 2026 "Another trigonometric proof of the Pythagorean theorem" 10.1080/00255572.2025.2607284 (not read).
Web: https://www.cut-the-knot.org/pythagoras/index.shtml fetched OK (read proofs #33, 34, 39, 42, 43, 44, 45, 46, 53, 82); WebSearch (3 queries: excircle/exradius, inscribed square on hypotenuse, Pitot) found nothing matching; results seen: johndcook.com/blog/2026/06/25/incircle-excircle (formulas only), kazdan Penn notes. Not tried: Loomis on archive.org, JSTOR early content, Unpaywall (Gazette articles are paywalled).
