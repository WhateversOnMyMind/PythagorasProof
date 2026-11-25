# Stage 0: Loomis taxonomy + physics/dynamic proofs

Source text for Part A: Loomis, *The Pythagorean Proposition* (NCTM reissue of 2nd ed. 1940), OCR from archive.org `ERIC_ED037335_djvu.txt` (the ERIC PDF, same text). OCR is noisy; proof numbers below come from Loomis's own Table of Contents (TOC) unless marked "approx". Figure numbers are not always equal to proof numbers.

## Part A. Loomis's top-level scheme

Loomis (Foreword) says there are only four kinds of demonstration, each tied to a "concept":

| Category | Basis (Loomis's words) | Count (ERIC abstract) | Core mechanism, one line | Link |
|---|---|---|---|---|
| I. Algebraic | linear relations ("Time Concept") | 109 | Equate ratios/products of lengths from similar right triangles (or circle chords/secants/tangents), then eliminate the auxiliary lengths to leave h^2 = a^2 + b^2. | https://files.eric.ed.gov/fulltext/ED037335.pdf |
| II. Geometric | comparison of areas ("Space Concept"); "foundation of which is superposition" | 255 | Dissect and compare squares on the three sides by congruence or equivalence of pieces. | same |
| III. Quaternionic | vector operation ("Direction Concept") | 4 | Square the vector identity a = b + g (or a pair like b+g, -b+g) and use the orthogonality term s(bg) = 0, or the parallelogram law. | same |
| IV. Dynamic | mass and velocity ("Force Concept") | 2 (plus quoted comments) | Equate two ways of computing a moment (couple) or a kinetic energy. | same |

Loomis's five stated conclusions (Foreword): (1) four kinds only; (2) algebraic proofs are limitless in number; (3) only ten types of geometric figure; (4) geometric proofs are limitless; (5) **no trigonometric proof is possible**.

**No trig / analytic / calculus proof (Loomis, section "Why No Trigonometric, Analytic Geometry Nor Calculus Proof Possible", pp. 244-245, TOC p. 244).** His argument, paraphrased closely:
- Trig: the fundamental formulae (sin^2 + cos^2 = 1 etc.) themselves rest on the theorem, so a "trigonometric proof" is circular. He explicitly rejects Versluys's (1914) proof 95 for using sin^2A + cos^2A = 1.
- Analytic geometry: Descartes built it on the theorem (x^2 + y^2 = r^2 / the distance formula), so "no independent proof can here appear."
- Calculus: it is an algebraic treatment of geometric variables by limits and "accepts the truth of geometry as established"; the most it gives is that as an oblique triangle's angle tends to a right angle, the square on the opposite side tends to the sum of the other two.
- Contrast: quaternions/vector analysis add a new concept (direction), so they can give genuinely new demonstrations.
- Note for us: this is a claim of circularity of a method class, not a theorem. Modern axiom-based approaches (e.g., defining trig/dot product independently of distance) can sidestep it; worth flagging when we test "unexplored mechanisms".

### I. Algebraic subcategories (TOC numbers)

| Subcategory | Core mechanism | Example proof #s | Link |
|---|---|---|---|
| A. Similar right triangles (TOC p. 23) | Drop altitude to hypotenuse; three similar triangles give 9 proportions (6 independent); pick 3 equations and eliminate the altitude and segment variables; Loomis counts 44 distinct eliminations (13 usable sets), "several thousand" possible. The standard h^2 = a^2 + b^2 comes from a^2 = h*y, b^2 = h*(h-y). | 1-35 ("Proof One" lists the 9 proportions) | ERIC pdf above |
| B. Mean proportional principle (p. 51) | Altitude is the mean proportional between hypotenuse segments, a leg is the mean proportional between hypotenuse and its adjacent segment; turn each into "square = rectangle" area equalities (Euclid-like rectangles on the hypotenuse). Uses only eqs (3), (5), (7) from Proof One. Loomis notes this can be grafted onto many geometric figures, so those become algebraic. | 36-53 | same |
| C(i)(1). One circle, chords (p. 61) | Circle with a triangle vertex as centre/with the triangle inscribed; intersecting chords theorem (product of segments equal) gives the relation. Loomis stresses the proof is true "not because of straight-line properties of the circle but because of similarity" (inscribed angles on equal arcs give similar triangles). | 54-68 | same |
| C(i)(2). One circle, secants (p. 68) | Secant-secant (power of a point) product equalities from similar triangles. | 69-76 | same |
| C(i)(3). One circle, tangents (p. 74) | Tangent-secant theorem (tangent^2 = product of secant segments). | 77-85 | same |
| C(ii). Two circles (p. 80) | Two circles through/around the triangle; power-of-a-point or Ptolemy-style relations between them. | 86-87 | same |
| D. Ratio of areas (p. 83) | Areas of similar figures are proportional to squares of homologous sides; the two small triangles' areas sum to the whole, so a^2 : b^2 : h^2 areas add (Wallis 1685, Bezout, Bullard). This is the same idea as the "Einstein" scaling proof. | 88-92 | same |
| E. Theory of limits (p. 86) | Start from the isosceles case (Socrates / Meno slave-boy figure, #93), then continuously vary the legs while holding h fixed (shorten a by x, lengthen b by y) and show the loss in one square equals the gain in the other, with equality at the degenerate endpoint (a to 0, b to c). Continuity/limit argument; it needs the endpoint check "c^2 = c^2". | 93 (Socrates, isosceles), 94 (Loomis 1925; A. R. Colburn 1922, his no. 96 in 108) | same |
| F. Algebraic-geometric complex (p. 88) | Mixed: set tangent-segment lengths x, y, z (arcs about the vertices) so the proof is algebraic in step one and area-comparing at the end; also (a+b)^2 outer-square-minus-4-triangles types. | 95-99 | same |
| G. Similar polygons other than squares (p. 91) | Construct similar triangles/polygons on the three sides; Pappus-type area theorem shows the two small ones sum to the big one (generalized Pythagoras). | 100-103 (e.g. "Hundred Five/Six" figure 100: triangles on h, a, b + Pappus) | same |

Flag: TOC ranges 1-103 vs. the ERIC abstract's total of 109 algebraic proofs do not match; the difference is probably unnumbered or variant proofs inside A. Treat numbers as approximate.

### II. Geometric proof types A-J (by square placement; 8 position types + 2)

Loomis: three squares on the sides (h on hypotenuse, a on short leg, b on long leg) can each be "exterior" (built outward) or "interior" (overlapping the triangle). 2^3 = 8 positions, plus I and J.

| Type | Square placement | Core mechanism | TOC proof #s | Link |
|---|---|---|---|---|
| A | all three exterior | Classic figure: (a) pieces congruent (dissection, Euclid I.47 shears, Pythagoras/Bride's chair, Perigal-style cuts, Thabit ibn Qurra, Leonardo-type) vs (b) pieces only equivalent (shear/same base, same height). | 104-171 | ERIC pdf above |
| B | a, b exterior; h interior | Hypotenuse square overlaps the triangle; dissect/shear by transferring the triangle's parts. | 172-193 (OCR shows "493", but pages imply 193) | same |
| C | h, a exterior; b interior | Same family with the long-leg square folded in. | 194-209 | same |
| D | h, b exterior; a interior | Short-leg square folded in. | 210-216 | same |
| E | a exterior; h, b interior | Two interior squares overlap. | 217-224 | same |
| F | b exterior; h, a interior | as E, mirrored | 225-228 | same |
| G | h exterior; a, b interior | Leg squares overlap the triangle; includes (a+b)-square/four-triangle style and Bhaskara-type figures (Loomis cites Bhaskara around here; approx). | 229-247 | same |
| H ("2-Type" in OCR) | all three interior | All squares overlap; usually 4-triangles-in-a-square plus overlap algebra. | 248-255 | same |
| I | translation of one or more squares away from the triangle | 19 sub-cases in 7 classes (translate h; a; b; h and a; ...). Core: slide a square along a line so equal-area strips/rectangles line up (parallelogram/translation arguments). | 256-305 (classes (1) 256-260, (2) 261-276, (3) 277-288, (4) 289-290, (5) 291-293, (6) 294-305, (7) one case) | same |
| J | one or more squares omitted (not drawn) | Two sub-types: (A) proof "through a square" (45 cases in 7 classes: which square is missing, and whether others are exterior/overlapping), (B) proof "through a triangle" by comparing equivalent areas of triangles/trapezoids with no squares drawn. Includes President Garfield's trapezoid (J-type triangle/trapezoid; Loomis fig. near 320s, approx #). | roughly 306-370 | same |

Loomis's classification principle: type and form of the figure determine the possible argument; each geometric proof is also written as a single equation of areas.

### III. Quaternionic (vector) proofs (Loomis figs 347-350; TOC pp. 245-248)

| Proof | Core mechanism | Source | Circularity note |
|---|---|---|---|
| One (fig 347) | a = b + g; square: a^2 = b^2 + 2 S(bg) + g^2; right angle gives S(bg) = 0. | Hardy, *Elements of Quaternions* (1881), p. 82 | Uses that "square of vector = squared length" (norm is already Pythagorean/Euclidean) and that perpendicular means scalar product zero. Circular in the usual way if length is defined via Euclid distance. |
| Two (fig 348) | Extend BH to C with HC = HB; (b+g)^2 + (b-g)^2 = 2b^2 + 2g^2 (parallelogram law); use AB = AC. | J. A. Calderhead, Am. Math. Monthly VI (1899) p. 71 | same |
| Three (fig 349) | Rectangle completed; AB^2 + HC^2 = 2AH^2 + 2HB^2 with HC = AB (diagonals of rectangle equal). | Calderhead | same |
| Four (fig 350) | Unit-circle (trigonometric-line) figure; (b+g)^2 + (-b+g)^2 parallelogram law again. | Loomis, Aug. 1900 | same |

### IV. Dynamic proofs (Loomis figs 351-352, pp. 248-251)

| Proof | Core mechanism | Source | Circularity note |
|---|---|---|---|
| 351 | Moment of a couple: sum of two coplanar couples has moment equal to the sum of the moments (b^2 + a^2); composing the forces gives a resultant couple with moment h^2. | J. Versluys (found 1877; published 1914, p. 95), citing Locke, *Mechanics for Beginners* (1891) | Needs parallelogram of forces and moment = force x arm; parallelogram diagonal lengths already encode Pythagorean-type relations. |
| 352 | Massless rod 0-p rotating about 0 with a second rod 1-2 (length 2r, masses m at each end) attached at midpoint p. Kinetic energy computed two ways: (i) via centre of mass + rotation about p, E = mW^2 (R^2 + r^2); (ii) via the two end masses with distances x, y from 0, E = (1/2) m W^2 (x^2 + y^2). Hence (x^2 + y^2)/2 = R^2 + r^2, and for x = y (rod 1-2 perpendicular to 0-p) x^2 = R^2 + r^2. | Edwin F. Northrup, *Science* n.s. 32 (Oct 7, 1910), pp. 863-864 | The point-speed law v = (distance) x (angular velocity) and K = (1/2) m v^2 are used per mass; it does not use Pythagoras per se, but the geometric identity (7) is the median/Apollonius-theorem relation, which is Pythagoras-equivalent. Comments in Science 33:457 (M. D. Hersey, 1911), 34:181-2 (A. MacFarlane, two "trig/quaternion" dynamic proofs, 1911) are quoted in Loomis. |
| "Generalisation" note | Macfarlane's vector/space-algebra generalisation: R^2 = A^2 + B^2 + 2 cos(AB)+...; Loomis quotes it as extension of the theorem, not a proof. | Quoted from Bulletin of the Quaternion Association | n/a |

Loomis also appends "A Pythagorean Curiosity" (fig 354, Waterhouse 1899): squares erected on the sides, join the outer vertices, erect squares again, etc. (a curiosity, not a proof).

## Part B. Physics / dynamic proofs

| Physics proof | Author / year | Core mechanism | Circularity note | Link |
|---|---|---|---|---|
| Water-filled prism ("fish tank") torque proof | Mark Levi, *The Mathematical Mechanic* (Princeton, 2009), ch. 2.2, p. 9; the idea (gas in a triangular box) is credited to T. Tokieda, "Mechanical Ideas in Geometry", Amer. Math. Monthly 105(8), 1998, pp. 697-703 | Right-triangular prism filled with fluid, free to rotate on a vertical axis at one corner: pressure force on each face is proportional to face area (p x h x side), acts at face midpoint; net torque about the axis must vanish, which gives (a/2)(a) + (b/2)(b) = (c/2)(c). | Medium. The lever arms need geometry: for the leg not touching the axis, similar-triangle/Thales reasoning is used (cut-the-knot: torque = CM * PM = AB/2 * h * AB); the page itself admits the arm lengths are "not justified". Also "the fluid does not spin the box" is an assumption equivalent to the theorem (Newton II + stat mech). Cut-the-knot reads it as proof from a different axiom set (Newton's laws). | https://www.cut-the-knot.org/pythagoras/mech.shtml ; https://www.cut-the-knot.org/pythagoras/MechanicalProofs.shtml |
| Pythagoras by rotation (swept-area / calculus form of the torque argument) | Levi 2009, ch. 2.6 (p. 16); cut-the-knot "Torque as a Mathematical Object" | Rotate the triangle by angle d-theta about one acute vertex; area change dS = (1/2)(a^2 + b^2 - c^2) d-theta from the area swept by rotating a segment of length r being (1/2) r^2 d-theta; area is constant so dS = 0. | Low-medium. Uses (1/2) r^2 d-theta (sector area, which relies on circle area ~ r^2, i.e. on scaling, not on Pythagoras). Page says it is "equivalent" to the torque condition, so it is a reformulation. | https://www.cut-the-knot.org/pythagoras/torque.shtml |
| Translation / swept-area version | Stuart Anderson (per cut-the-knot) | Translate triangle by a perpendicular to side a, then b perpendicular to b, then c perpendicular to c (closed loop); area flowing in and out across each side is a^2, b^2, c^2 and net flow through the closed path vanishes. | Low-medium. Relies on the unproved claim that net signed area flow across a closed path of translations is zero; the displacement vectors form the triangle (rotated 90 degrees). | https://www.cut-the-knot.org/pythagoras/torque.shtml |
| Pythagoras by springs | Levi 2009, ch. 2.10, pp. 21-23 | Point C slides frictionlessly on a semicircle with diameter AB; identical Hooke springs connect C to A and B. Tangential forces cancel everywhere on the arc (CM = CN, projections onto tangent), so spring energy (k/2)(a^2 + b^2) is constant on the arc; evaluated at the end (b = 0, a = c) equals (k/2) c^2. | Medium-high. The equilibrium argument uses the right angle at C (Thales) and congruent projections (similar triangles); Hooke energy (1/2) k x^2 is a quadratic in distance, so squared distance is already built in. Cut-the-knot says "closely tied to the result". | https://www.cut-the-knot.org/pythagoras/MechanicalProofs.shtml |
| Kinetic energy / "skater" proof ("Pythagorean theorem on ice") | Levi 2009, ch. 2 (p. 25); also SIAM News column | Puck of unit mass receives a push giving speed a, then perpendicular push giving speed b: kinetic energy adds as a^2/2 + b^2/2 (energy is additive because the second push does work against the perpendicular direction, not along it); final velocity is the diagonal c, so energy = c^2/2. | High. The step "energy gained from the second push is b^2/2 independent of the first velocity" requires that a force perpendicular to the velocity does no work, i.e. dot product zero, which is the theorem for the vector pair. Levi himself says (SIAM) it is "a physical incarnation", not rigorous. Could not retrieve SIAM text (403) so this attribution is from search snippet. | https://www.siam.org/publications/siam-news/articles/pythagorean-theorem-on-ice/ ; cut-the-knot page above |
| Galilean frame change / invariance of energy | no authoritative source found (search turned up none) | Plausible reconstruction: change to a frame moving with the perpendicular velocity; kinetic energy in the new frame differs by a cross term m v.u + (1/2) m u^2; demanding the energy change be independent of frame forces v.u = 0 for perpendicular v and u, giving |v+u|^2 = |v|^2 + |u|^2. | Maximum circularity: assumes K = (1/2) m |v|^2 with vector |.| that is Euclidean. Marked as our inference, not a documented proof. | search only (arXiv 2009.11903, gr-qc/0610011 discuss Galilean-invariant energy but not Pythagoras) |
| Elastic collision, equal masses (billiards) | R. P. Patera, "Deriving the Pythagorean Theorem Using Physics Conservation Laws" (viXra 2404.0106, 2024, unreviewed); standard in Fowler's mechanics notes | Equal masses, one initially at rest: energy conservation gives Vi^2 = Vf1^2 + Vf2^2; momentum conservation gives vector triangle Vi = Vf1 + Vf2; comparing with the law of cosines (or expanding |V|^2) forces cos(theta) = 0, i.e. final velocities are perpendicular. (In fact it proves a converse: sum-of-squares plus vector sum imply right angle.) | High: momentum conservation is a vector (parallelogram) law, and the converse step uses the dot product or law of cosines; nothing independent of Euclidean norm. Also, the physics derivation gives the converse, not the direct theorem. | https://vixra.org/pdf/2404.0106v1.pdf ; https://phys.libretexts.org/Bookshelves/Classical_Mechanics/Graduate_Classical_Mechanics_(Fowler)/16%3A_Elastic_Scattering/16.01%3A_Billiard_Balls |
| Moment of couple | J. Versluys (1877 found, 1914 published), in Loomis | Sum of two coplanar couples (equal-force pairs on perpendicular lever arms) has moment equal to the sum of the moments; composing via parallelogram of forces gives h^2. | Medium-high: parallelogram law of forces; moments as product of force and perpendicular distance. | Loomis, ERIC pdf above |
| Rotating-rod kinetic energy | E. F. Northrup, Science 32 (1910) | See Loomis IV above. | Medium: tangential velocity v = R W (circle-arc geometry), K = (1/2) m v^2 per particle; the geometric identity obtained is Apollonius/median theorem. | Loomis, ERIC pdf above |
| Gas-pressure triangle (Tokieda) | Tokieda 1998; Brodie on cut-the-knot | Uniform pressure on the sides of a triangular box; forces act along perpendicular bisectors of the sides and sum to zero (Tokieda's lemma on concurrent forces), so no net torque. | Medium. Uses concurrency of the perpendicular bisectors and similar-triangle reasoning; axiom set is Newton's, not Euclid's (Bogomolny: shows Newton's laws imply the Fifth-Postulate consequence). | https://www.cut-the-knot.org/pythagoras/PTcom3.shtml ; https://www.cut-the-knot.org/pythagoras/mech.shtml |
| Einstein's boyhood proof (scaling / dimensional analysis) | Attributed (hearsay) to Einstein; written up by M. Schroeder (*Fractals, Chaos, Power Laws*), A. Putman (Notre Dame note, "I have heard it attributed to Einstein"); Einstein only says he used similarity | Drop the altitude to the hypotenuse: two smaller right triangles X, Y similar to Z; areas scale as (hypotenuse)^2 times the area of the unit-hypotenuse triangle W, so a^2 W + b^2 W = c^2 W. | Low. Uses only area ~ (scale)^2 (similarity) and additivity of area. Does not use Pythagoras; it is the algebraic type D in Loomis. Reported also as "Einstein's most excellent proof" (Wolfram). | https://academicweb.nd.edu/~andyp/notes/PythagoreanTheorem.pdf ; https://kottke.org/15/11/einsteins-first-proof ; https://demonstrations.wolfram.com/EinsteinsMostExcellentProof/ |
| Shear (Euclid I.47, Cavalieri-style dynamic) | Euclid; UBC (Cass) animation; cut-the-knot "by sheer shearing" | Shears preserve area (thin slices slide, none changes shape; rigorous via limits or I.35); shear the leg squares along a side to rectangles of the hypotenuse square. | Low: uses only shear-invariance of area + congruence; no Pythagoras in the premises. | https://personal.math.ubc.ca/~cass/courses/m308-7b/pythagorasshear.html ; https://www.cut-the-knot.org/pythagoras/PythI47PWW.shtml |
| "Dynamic" dissection (moving pieces) and the repaired Bride's-Chair | cut-the-knot, faulty proof notes (Loomis dissection, cited as Loomis geometric proof 22; also like 26, 27, 36) | Animated rearrangement is only valid if the dissection works for all shapes; "treating pieces as moving dynamically" is described as fixing it. | Low (geometry only), but shows static dissection pictures may fail for degenerate shapes. | https://www.cut-the-knot.org/pythagoras/FaultyPythPWW.shtml |
| Light clock / time dilation | textbook special relativity | Use the theorem to derive time dilation; nothing proves the theorem. | Uses the theorem as input. Not a proof. gr-qc/0407022 derives a spacetime Pythagorean relation (Minkowski interval) from relativity principle + Euclidean geometry. | https://arxiv.org/pdf/gr-qc/0407022 |
| Hydrostatic proofs of other theorems | arXiv:2505.15843 (2025) | Water/plate equilibrium proves isoperimetric polygon and shoelace formula; the paper does not treat Pythagoras. | n/a (listed as a mechanism neighbour: equilibrium / potential-energy minimisation). | https://arxiv.org/html/2505.15843v1 |
| Self-similar proof family | "An uncountable number of proofs of Pythagoras' theorem" arXiv:2301.06812 | Nest scaled copies of the triangle-in-square figure inside the inner square, choose the orientation of each copy by a binary digit, sum the triangle areas as a geometric series. | Low; infinite-series version of the four-triangles dissection. | https://arxiv.org/html/2301.06812v3 |

Items asked for and not found as a sourced proof: "Levi's Pythagoras by rolling/sliding" (nothing found beyond the spring, torque, rotation, skater proofs; the MAA review says the book has six physical proofs: fish tank, rotation, springs, kinetic energy, and others I could not enumerate; the MAA page 403'd); "a proof by motion" in Mathematics Magazine (not located); wave / light-travel-time proofs of the theorem itself (only uses of the theorem in relativity found); Kepler (nothing found).

Ideas for later (unexplored-mechanism candidates, our inference): equilibrium or conservation arguments where the quadratic form is a Casimir/energy and a right angle is encoded by orthogonality of two independent degrees of freedom; "energy additive over orthogonal modes" appears in all high-circularity proofs, because independence of orthogonal degrees of freedom is exactly Pythagoras.

## URLs tried

Success:
- https://archive.org/advancedsearch.php?q=title%3A%28pythagorean+proposition%29&fl%5B%5D=identifier&output=json (8 hits)
- https://files.eric.ed.gov/fulltext/ED037335.pdf (200, 10 MB, downloaded)
- https://archive.org/metadata/ERIC_ED037335 , .../the-pythagorean-proposition.-2-e-loomis-elisha-s. , .../pythagoreanpropo0000loom_b2m3 (metadata OK)
- https://archive.org/download/ERIC_ED037335/ERIC_ED037335_djvu.txt (302 redirect without -L, 200 with -L; text used)
- https://www.cut-the-knot.org/pythagoras/MechanicalProofs.shtml
- https://www.cut-the-knot.org/pythagoras/torque.shtml
- https://www.cut-the-knot.org/pythagoras/mech.shtml
- https://www.cut-the-knot.org/pythagoras/PTcom3.shtml
- https://www.cut-the-knot.org/pythagoras/FaultyPythPWW.shtml
- https://arxiv.org/html/2301.06812v3
- https://arxiv.org/html/2505.15843v1
- https://vixra.org/pdf/2404.0106v1.pdf (via saved binary + pdftotext)
- https://academicweb.nd.edu/~andyp/notes/PythagoreanTheorem.pdf (via curl; www3.nd.edu URL gave 301)
- Search results only (not fetched): Wolfram Einstein demo, kottke, UBC shear pages, cut-the-knot PythI47PWW, arXiv gr-qc/0407022, phys.libretexts billiard page, Princeton/Science News Levi pages, Fowler Libretexts page (the last curl check was not completed due to a shell quoting error)

Fail:
- https://www.maa.org/node/109862 (403)
- https://www.siam.org/publications/siam-news/articles/pythagorean-theorem-on-ice/ (WebFetch 403; curl returned a 5.6 KB non-content page)
- https://www.nzdr.ru/data/media/biblio/kolxoz/M/MC/Levi...pdf (404; unofficial copy of Levi's book)
- https://archive.org/download/ERIC_ED037335/ERIC_ED037335_djvu.txt without -L (302, 0 bytes)
- https://www.researchgate.net/publication/380528651... (not fetched; search hit only)
