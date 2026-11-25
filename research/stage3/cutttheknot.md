# Stage 3: cut-the-knot.org findings

Source: cut-the-knot.org (Pythagorean index, 122+ proofs, and wider site). Pages read via WebFetch (summaries by a small model, so details are second-hand; #33/#34/#45 have diagrams only).

**Headline: no EXACT match for any of C1-C9 found. Closest is #42 / CTK Exchange thread 694 (C8, C9, C2 area), #113 (C1/C4 flavour), FourIncircles (C8).**

## C1 (incircle-excircle homothety, r/(s-a) = r_a/s)
1. #42 (Jack Oliver), index.shtml: incircle, area = r*p, c=(a-r)+(b-r) so r=p-c, p(p-c)=ab/2. RELATED. Uses the r=s-c tangent-square fact but then area, which C1 avoids.
2. Proof #113 (Molokach), https://www.cut-the-knot.org/pythagoras/Proof113.shtml: inscribed semicircle, r/(c-a)=a/b by similar triangles, plus chords. RELATED. Similar right triangles with a circle tangent at a vertex, but different circle and no excircle.
3. ThreeCirclesThroughIncenter, https://www.cut-the-knot.org/Curriculum/Geometry/ThreeCirclesThroughIncenter.shtml: I and I_C on the bisector, II_C diameter. RELATED (lemma only; no Pythagoras).
Also: #115 (https://www.cut-the-knot.org/pythagoras/Proof115.shtml) similar triangles r/(a+c)=a/b plus an area step; a tangent-circle-by-similarity flavour. RELATED, weak.

## C2 (power of the incenter wrt circle on diameter AB)
1. CTK Exchange 694, https://www.cut-the-knot.org/htdocs/dcforum/DCForumID4/694.shtml (Maj. Pestich): uses a circle through I, A, B and intersecting chords to get r*R_c=(p-a)(p-b); equates to area ab/2, giving Pythagoras. VARIANT (closest of all). Circle through I,A,B is not the circle on diameter AB, and the finish uses area; the poster himself notes it is nearly #42. This is a forum post, not a published proof page.
2. #79 (Wajnberg), https://www.cut-the-knot.org/pythagoras/proof79.shtml: intersecting chords in the circumcircle (diameter AB), midpoint chords, DE*EF = CE*EB. RELATED. Same circle, but the point is a side midpoint, not the incenter.
3. #43 / #11 / #105 (https://www.cut-the-knot.org/pythagoras/PPower.shtml, index, https://www.cut-the-knot.org/pythagoras/Bui105.shtml): power of a point with circle radius b or c, or circumcircle with doubled triangle. RELATED. Power of a point, not at the incenter.

## C3 (inscribed square on hypotenuse, three similar corner triangles)
1. SquareInTriangle, https://www.cut-the-knot.org/Outline/Geometry/SquareInTriangle.shtml: square CKFL (corner at C, not on hypotenuse), proportions/bisectors; does not derive Pythagoras. RELATED, weak.
2. Square in the Chair, https://www.cut-the-knot.org/Curriculum/Geometry/SquareInChair.shtml: square inscribed at C. RELATED, weak.
3. #41 (https://www.cut-the-knot.org/pythagoras/proof41.shtml) / #54k family: scaled copies of the triangle, linear equation in the scale. RELATED in spirit (similar copies, no area), but not a hypotenuse-square.
Not found: any cut-the-knot proof with a square with a side on the hypotenuse. (The arXiv Price-Bernhart paper math/0701554 appeared in search; it computes the two inscribed squares but is not a proof of Pythagoras. Not read.)

## C4 (Pitot)
1. Search "site:cut-the-knot.org Pitot theorem Pythagoras": no cut-the-knot page at all.
2. #45 (Douglas Rogers, Liu Hui identity a+b=c+d, d = incircle diameter), index.shtml: RELATED. This is the tangent-length fact (equivalently Pitot degenerate case) but used as a rearrangement, not with the parallel tangent and trapezoid.
3. #42 and #113 above. RELATED, weak.

## C5 (harmonic division, projection)
1. Harmonic ratio properties, https://www.cut-the-knot.org/pythagoras/HarmonicRatioProperties.shtml (internal/external bisectors give harmonic quadruple). RELATED (lemma only).
2. External Angle Bisectors, https://www.cut-the-knot.org/Curriculum/Geometry/ExternalAngleBisector.shtml. RELATED (lemma only).
3. #82 (Loomis/Ryoo, bisector of A, similar triangles, (c-b)(c+b)=a^2), index.shtml and #53/#54k. RELATED. Bisector plus similarity, no harmonic division, no excircle.
No Pythagorean proof via harmonic division found on the site.

## C8 (inradii of altitude sub-triangles, r + r1 + r2 = h)
1. FourIncirclesInRightTriangle, https://www.cut-the-knot.org/m/Geometry/FourIncirclesInRightTriangle.shtml (the search tool's text says r1+r2+r3=CD for the three triangles ABC, ADC, BDC; actual page fetched under ThreeIncircles, see 2). Ambiguous; see 2.
2. ThreeIncirclesInRightTriangle, https://www.cut-the-knot.org/Curriculum/Geometry/ThreeIncirclesInRightTriangle.shtml: statement r1+r2+r3 = CD (altitude). The proof uses inradius = (a+b-c)/2 and similar triangles, then Pythagoras, and the page says it can be read as the CONVERSE of a Pythagorean proof. VARIANT / near-EXACT in the statement (same identity as C8's r+r1+r2=h) but the proof here ASSUMES Pythagoras; C8 derives Pythagoras from it using tangent lengths. Flag this: the identity is already on the site, in the converse direction.
3. FourIncircles page (FourIncirclesInRightTriangle): derives a relation among the three similar triangles' inradii using r=kS/(p-c) and x=p-a etc.; uses Pythagoras. RELATED.
4. PythRectSangaku, https://www.cut-the-knot.org/pythagoras/PythRectSangaku.shtml: Fukushima sangaku, r1^2+r2^2=r3^2 at maximal rectangle; no r+r1+r2=h. RELATED, weak.

## C9 (A-excircle area decomposition, area = r_a(s-a) = (s-a)(s-b))
1. CTK Exchange 694 (see C2): r*R_c = (p-a)(p-b) = area, via exradius relation R_c = r + R_a + R_b, then Pythagoras. VARIANT. It uses the exradius R_c on the hypotenuse, not r_a, and abandoned as the same as #42. Not on a main proof page.
2. Heron proofs #23 (https://www.cut-the-knot.org/pythagoras/herons.shtml) and #75 (https://www.cut-the-knot.org/pythagoras/herons2.shtml): S^2 = p(p-a)(p-b)(p-c) expanded in a,b,c. RELATED (no excircle or tangent segment reading; page contains no (s-a)(s-b)=s(s-c)). Also Heron's formula proof, https://www.cut-the-knot.org/Curriculum/Geometry/HeronsFormula.shtml (x=s-a etc., S^2=sxyz). RELATED.
3. #42 (incircle area). RELATED.

## Other checked pages
- #33, #34: diagrams only; #33 said to be an incircle dissection (see #42). Unreadable here.
- #22 (Brodie, altitude foot and power of a point), #61/#59/#60 (chord circles, radius a,b,h), #11 (Leibniz/Yanney-Calderhead chords), #53, #54k, #82, #85 (https://www.cut-the-knot.org/pythagoras/BrokenChordPythagoras.shtml, broken chord + areas), #106, #107 (https://www.cut-the-knot.org/pythagoras/Pyth107.shtml, altitude circles, power of a point; no incircle), #111 (analytic): none involve incircle/excircle at the core.
- #104 Samosvat (https://www.cut-the-knot.org/pythagoras/Samosvatov.shtml): dissection justified by equal tangent segments; not an incircle/excircle derivation as far as readable.

## URL log
OK (fetched): index.shtml (two ranges); proof79; PPower; SquareInTriangle; PythRectSangaku; Proof115; Samosvatov; Bui105; Proof113; Pyth107; herons; BrokenChordPythagoras; FourIncirclesInRightTriangle; ThreeIncirclesInRightTriangle; DCForumID4/694; ThreeCirclesThroughIncenter; Proof111; proof41.
Not individually fetched (taken from index/search snippets): #22, #33, #34, #42, #45, #53, #82, #54k (index text only), herons2, HarmonicRatioProperties, ExternalAngleBisector, HeronsFormula, SquareInChair, Proof106, Proof61 pages, arXiv math/0701554, arXiv 1910.00418, arXiv 1711.10750 (Haga paper lists r*r_a=r_b*r_c for right triangle).
Searches: "site:cut-the-knot.org excircle Pythagorean theorem proof"; "site:cut-the-knot.org inscribed square right triangle hypotenuse Pythagorean"; "site:cut-the-knot.org Pitot theorem Pythagoras" (no Pitot page); "cut-the-knot right triangle incircle exradii r r_c = r_a r_b identity"; "cut-the-knot.org power of incenter right triangle circle diameter hypotenuse"; "cut-the-knot.org right triangle incircle tangent segments area equals product of hypotenuse segments"; "site:cut-the-knot.org harmonic division angle bisector internal external right triangle incenter excenter".
No failures or paywalls. Index fetch was truncated (read in two parts, #88 onward covered). A dedicated cut-the-knot page for r*r_c = r_a*r_b was NOT found (only the forum thread 694).
