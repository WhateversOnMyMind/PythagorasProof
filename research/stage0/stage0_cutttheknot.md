# Stage 0: cut-the-knot Pythagorean theorem proofs (taxonomy by mechanism)

Source: https://www.cut-the-knot.org/pythagoras/index.shtml (fetched in 2 chunks; summarised by WebFetch's small model, so mechanisms are terse and some rows are low-confidence, marked "?"). Base URL B = https://www.cut-the-knot.org/pythagoras/ . Subpage names given relative to B unless absolute. Page lists #1-#122 (with 54k, 107', 107'', 109-110 grouped).

| # | name/author | core mechanism | figure | URL |
|---|---|---|---|---|
| 1 | Euclid I.47 (Bride's Chair) | SAS-congruent triangles, equal areas via shared base/parallels; two rectangles fill hypotenuse square | squares on sides | morey.shtml |
| 2 | Thabit ibn Qurra | rotate two triangles 90 deg, rearrange region into c^2 square | squares / dissection | Curriculum/Geometry/HingedPythagoras3.shtml |
| 3 | Four-triangle square | 4 triangles + (a-b)^2 hole inside c^2 square: c^2=(a-b)^2+2ab | square in square | index |
| 4 | Bhaskara II | 4 triangles around c^2 hole in (a+b)^2 square, area count | square in square | index |
| 5 | Garfield (1876) | trapezoid area two ways (3 triangles) | trapezoid | GarfieldsGhost.shtml |
| 6 | Trigg/Mentock/Brozinsky | similar triangles from altitude: a^2=cx, b^2=c(c-x) | altitude | LipogrammaticProof.shtml, PythagorasBySimilarity.shtml |
| 7 | Euclid VI.31 | similar figures on sides: areas scale as squares of sides | similar figures on sides | euclid.shtml |
| 8 | from #7 (Nikolin, Arioni) | two area computations of composite shape using similarity ratios | similar figures | index |
| 9 | Laisnez/Isaac/Zhou bi suan jing | rigid-piece rearrangement of (a+b)^2 / c^2 | square tiling/dissection | ArrangePyth.shtml, Pyth9PWW.shtml, HingedPythagoras.shtml |
| 10 | Chiba Tanehide (1830) | rearrangement of #3 triangles | dissection | HingedPythagoras2.shtml |
| 11 | Leibniz/Yanney-Calderhead/Hardisky | intersecting chords in circle radius c: a^2=(c+b)(c-b) | circle | IntersectingChordsTheorem.shtml |
| 12 | Eves | shear two small squares then slide | shear | index |
| 13 | gen. of #6 | similar-triangle ratios give cc'=aa'+bb' | altitude/similar | index |
| 14 | Dudeney/Perigal | dissection of large square into 4 pieces + small square | dissection | Perigal.shtml |
| 15 | Friedrichs/Annairizi | tessellation by two square sizes, superposition | tiling | PythLattice.shtml |
| 16 | da Vinci/D. King | equal quadrilaterals (45 deg) give equal hexagons | hexagon | index |
| 17 | Pappus | generalisation to parallelograms on any triangle via shear | parallelograms | PappusPyth.shtml |
| 18 | Thabit ibn Qurra | non-right generalisation via similar triangles (law-of-cosines-like) | general triangle | index |
| 19 | original | add similar triangle to a side, area balance | similar triangles | index |
| 20 | original | similar triangles on each side, area equalities (#7+#19) | similar figures | euclid.shtml |
| 21 | Scott Brodie | Ptolemy's theorem on inscribed rectangle | circle/rectangle | proofs/ptolemy.shtml |
| 22 | Scott Brodie | power of a point, tangents from right-angle feet | circle | PPower.shtml |
| 23 | Heron | triangle area by Heron's formula vs (1/2)ab | triangle | herons.shtml |
| 24 | Thabit/Multatuli | two equal pentagonal regions after removing triangles | dissection | Pyth69PWW.shtml |
| 25 | Yanney (1903) | shearing argument equating areas to AB^2 | shear | index |
| 26 | Casselman applet | similar triangles | altitude | external (sunsite UBC) |
| 27 | van Schooten/Dacar | hinged dissection of #26 pieces | dissection | DoublePythLattice.shtml |
| 28 | Liu Hui (doubtful)/Lietzmann | dissection (attribution disputed) | dissection | external |
| 29 | mechanical | torque / mechanical balance | physics | mech.shtml |
| 30 | Poo-sung Park (1999) | 4 congruent isosceles triangles around a square | tiling | Pyth30.shtml |
| 31 | Condit/Ernst | altitudes from hypotenuse midpoint, area evaluations | midpoint | index |
| 32 | Watkins/Rogers | two congruent triangles, area of ADE two ways | area two ways | index |
| 33 | Simonson | algebra via incircle (?) | incircle | index |
| 34 | Simonson | geometric view of #33 | incircle | index |
| 35 | Pacek | cracked domino dissection | dissection | index |
| 36 | Bottcher/Stein | dissection (swivel) | dissection | Bottcher.shtml, PythBySwivel.shtml |
| 37 | D. King | applet demonstration (?) | dissection | Proof37.shtml |
| 38 | D. King | two hexagon tessellations, remove triangles | tiling | PythHexLattice.shtml |
| 39 | J.B. Sutton | circle centred at A; similar triangles DBC, EBC (secant/tangent-like) | circle | index |
| 40 | M. Hardy | differential: y dy - x dx = 0 (FLAWED/circular) | calculus | index |
| 41 | original | three scaled copies of triangle form a rectangle | similar copies | proof41.shtml |
| 42 | Oliver/Mollmann/Rigby | incircle radius; area two ways | incircle | index |
| 43 | Hoehn/Molokach | power of a point with tangent a | circle | Hoehn.shtml |
| 44 | A. Rose | parallel lines, similar triangles | similar | index |
| 45 | Rogers/Liu Hui | a+b=c+d then rearrangement | incircle-ish dissection | index |
| 46 | Tao Tong | area of triangle ABD two ways | area two ways | index |
| 47 | J. Kawamura | quadrilateral area from perpendicular diagonals (d1 d2/2) | orthodiagonal | index |
| 48 | Dobbs | trapezoid area two ways | trapezoid | index |
| 49 | Dobbs/Rogers | square on legs; quadrilateral area | area two ways | index |
| 50 | Rogers | four triangles completed into rectangles | rectangles | index |
| 51 | Dobbs/Elliott | rotated triangle; area of resulting shape | rotation | index |
| 52 | deLemos | trapezoid area two ways | trapezoid | index |
| 53 | Hoehn | angle bisector + similar triangles | bisector | index |
| 54k | Hoehn family | one-parameter family generalising #53,#41 | similar | index |
| 55 | Hazard (1929) | generalisation to parallelograms, equal areas | parallelograms | PythInPara.shtml |
| 56 | Yanney-Calderhead | one diagram, "4864 proofs" (many similar-triangle/area combos) | extended diagram | Proof56.shtml |
| 57 | Yanney-Calderhead | same, extended sides | extended diagram | index |
| 58 | Yanney-Calderhead | construct BD=AB; similar triangles | similar | index |
| 59 | Yanney-Calderhead | intersecting chords, radius a (FLAWED: fails isosceles case) | circle | IntersectingChordsTheorem.shtml |
| 60 | Yanney-Calderhead | intersecting chords, radius b (FLAWED: isosceles) | circle | index |
| 61 | Yanney-Calderhead | intersecting chords, radius = altitude; no exceptions | circle | index |
| 62 | van Lamoen | symmedian point at midpoint of altitude | symmedian | symmedians.shtml |
| 63 | van Lamoen | square-centre configuration (Bottema without Bottema) | square centres | Bottema.shtml |
| 64 | van Lamoen/Loomis/Bui | reduction to isosceles case (Socrates) | isosceles special case | half_sq.shtml |
| 65 | van Lamoen | lemma on orthodiagonal quadrilaterals | orthodiagonal | BridesChair.shtml |
| 66 | van Lamoen | apply #65 lemma via rotation | orthodiagonal+rotation | Orthodiagonal2.shtml |
| 67 | Sina Shiehyan | circumcircle tangent, perpendiculars to hypotenuse | circle/tangent | Sina.shtml |
| 68 | parallelogram law | Pythagoras from parallelogram identity | parallelogram | ParallelogramIdentity.shtml |
| 69 | multiple | several viewpoints on one configuration | mixed | Proof69Complete.shtml |
| 70 | Loomis #20 | orthodiagonal quadrilateral area two ways | orthodiagonal | index |
| 71 | Loomis #101 | power of a point, y^2=2xz | circle | PythAG.shtml |
| 72 | Versluys/Lasvergnas | rearrangement of squares | dissection | PythLoomis25G.shtml |
| 73 | weininjieda/Versluys/Hawkins | area of triangle ABD in three parts | area two ways | index |
| 74 | Abul Wafa | dissection of unequal squares | dissection | AbulWafaPythagoras.shtml |
| 75 | Heron (isosceles) | Heron's formula on isosceles triangle | triangle | herons2.shtml |
| 76 | Loomis #27/Adams | dissection with lines parallel/perp to sides | dissection | PythLoomis27G.shtml |
| 77 | Huygens (1657) | equal-base parallelograms/triangles (Euclid I.41) | shear/parallelograms | HuygensPyth.shtml |
| 78 | Dijkstra | two similar triangles; general form with signum (law of cosines flavour) | general triangle | Dijkstra.shtml |
| 79 | Wajnberg | intersecting chords in a new circle | circle | proof79.shtml |
| 80 | Grossman/Houston/Gheysens | back-to-back triangles, isosceles areas (trig) | trig | Proof80.shtml |
| 81 | P. Voets | shear + altitude decomposition | shear | index |
| 82 | Ryoo/Loomis/Y-C | angle bisector + similar triangles | bisector | index |
| 83 | J. Stevens (Dijkstra gen.) | extension of #41 construction | similar | Stevens.shtml |
| 84 | J. Zimba | sine/cosine subtraction formulas | trig addition | TrigProof.shtml |
| 85 | Bui Quang Tuan | Broken Chord Theorem (Archimedes) | circle | BrokenChordPythagoras.shtml |
| 86 | Bui Quang Tuan | Bottema's theorem | square centres | PythFromBottema.shtml |
| 87 | J. Molokach | three trapezoids, area | trapezoid | Pyth3Trapezoids.shtml |
| 88 | S. Anderson (? chunk boundary ambiguous; 2nd fetch said Star of David) | inscribed Star-of-David configuration (low confidence) | hexagram | PythStarOfDavid.shtml |
| 89 | Molokach | parallelogram from special diagram | parallelogram | proof89.shtml |
| 90 | Molokach | solves a differential equation (suspected circular; page says no vicious circle) | calculus | CalculusProofCorrectedVersion.shtml |
| 91 | Molokach | Gauss shoelace formula | coordinates | proof91.shtml |
| 92 | G. Speranza | dissection, interactive | dissection | Curriculum/Geometry/SperanzaPyth.shtml |
| 93 | G. Ferrarese | symmetric treatment of Perigal dissection | dissection | PerigalII.shtml |
| 94 | (unnamed) | derivative of Heron's area formula vanishes at perpendicular sides | optimisation/Heron | HeronsDerivative.shtml |
| 95 | Bui Quang Tuan | orthocenter construction | orthocenter | PythagorasOrthocenter.shtml |
| 96 | Molokach | two proofs from one diagram | mixed | wiki-math ...SerendipitousProofOfThePythagoreanTheorem |
| 97 | E. Alandete | straightforward dissection (PWW) | dissection | Puzzle1.pdf |
| 98 | Molokach | area determinant formula (PWW) | coordinates/determinant | Proof98.shtml |
| 99 | D. Hardisky | dissection puzzle | dissection | Proof99Solution.shtml |
| 100 | J. Arioni | limit of convergent geometric series | limit/series | Proof100.shtml |
| 101 | Dao Thanh Oai | generalisation BC^2=AB*BHb+AC*CHc, reduces at right angle | altitudes/general triangle | NuBe-Emet.shtml |
| 102 | M. Brafman | algebraic from diagram | algebra | Proof102.shtml |
| 103 | T. Foster III | trapezoid property from Carpets theorem | carpets/area | Proof103.shtml |
| 104 | A.G. Samosvat | elegant dissection | dissection | Samosvatov.shtml |
| 105 | Bui Quang Tuan | power of a point | circle | Bui105.shtml |
| 106 | Bui Quang Tuan | areas of triangles in circle with perpendicular chords | circle | m/Geometry/ThreeAreasInCircle.shtml |
| 107 | Tran Quang Hung | outward triangles on sides with altitudes (generalisation) | generalised figures | Pyth107.shtml |
| 107' | offshoot | lines parallel to sides at distance r, equal areas | parallels | index |
| 107'' | offshoot | squares and circumscribing rectangles, equal areas | rectangles | Pyth107C.shtml |
| 108 | Tran Quang Hung | further generalisation | generalised figures | m/Geometry/BuratinoPyth1.shtml |
| 109-110 | N. Luzia | two trig proofs, half-angle formulas | trig | Proof109.shtml |
| 111 | N. Luzia | analytic geometry: perpendicular bisector meets x-axis | coordinates | Proof111.shtml |
| 112 | Molokach | trig, double-argument formulas | trig | TrigProof2.shtml |
| 113 | Molokach | semicircle diagram | circle | Proof113.shtml |
| 114 | Bui Quang Tuan | area of special equilateral triangle two ways | equilateral | Proof114.shtml |
| 115 | N. Dimalaluan Jr. | diagram-based (mechanism unclear) | ? | Proof115.shtml |
| 116 | Nam Go Heo | proof without words | ? | none |
| 117 | A. Navas | equilateral triangles | equilateral | Proof117.shtml |
| 118 | Polster & Ross | 60/120 degree angles | non-right-angle construction | Proof118.shtml |
| 119 | Molokach | three right isosceles triangles (PWW) | isosceles triangles | Proof119.shtml |
| 120 | T. Foster | rearranged parallelogram (PWW) | parallelogram | Proof120.shtml |
| 121 | A. Stacey | limit argument, maybe calculus | limit | Proof121.shtml |
| 122 | (unnamed) | proof by contradiction | contradiction | proof122.shtml |

## Flawed / circular flags
- #40 Hardy: "grain of salt"; drops dx^2, dy^2 and uses Pythagoras itself (circular).
- #59, #60 Yanney-Calderhead: fail for isosceles right triangles (limit fix questioned); #61 repairs.
- #90: suspected circular; page says panel found no vicious circle.
- #28: attribution to Liu Hui doubtful (not flagged as wrong).

## Mechanism families (approximate; proofs may belong to several; counts from rows above)
- Area rearrangement / dissection / hinged / tiling (incl. square-in-square, Perigal, tessellation): 2,3,4,9,10,14,15,16,24,27,28,30,35,36,37,38,45,50,72,74,76,92,93,97,99,104 (+12? shear) ~ 26
- Area computed two ways (trapezoid, triangle, quadrilateral, orthodiagonal, determinant/shoelace): 5,31,32,42,46,47,48,49,52,70,73,87,91,98,103,114 ~ 16
- Similar triangles (altitude/bisector/ratios): 6,13,18,19,26,39,41,44,53,54k,58,78,82,83,56,57 ~ 16
- Similar/general figures on sides (area scales as square), parallelogram generalisations: 7,8,17,20,55,68,89,101,107,107',107'',108,120 ~ 13
- Circle: intersecting chords/power of point/tangent/Ptolemy/broken chord/semicircle: 11,21,22,43,59,60,61,67,71,79,85,105,106,113 ~ 14
- Shear / equal-base parallelograms (Euclid I.41 style): 1,12,25,77,81 ~ 5
- Trigonometry (addition, half/double angle): 80,84,109-110,112 ~ 5
- Calculus / limits / series / optimisation: 40,90,94,100,121 ~ 5
- Heron's formula: 23,75,94 ~ 3
- Incircle / inradius + area: 33,34,42,45 ~ 4
- Coordinates / analytic: 91,98,111 ~ 3
- Special centres/Bottema/symmedian/orthocenter/orthodiagonal lemma: 62,63,65,66,86,95 ~ 6
- Reduction to isosceles/special case; equilateral/60-120 deg constructions: 64,114,117,118,119 ~ 5
- Physical/mechanical: 29 ; Contradiction: 122 ; Unclear: 88,115,116 ; Misc multi-view: 56,57,69,96
- Notable gaps vs. this list: no vector/complex-number proof, no Stewart/Apollonius-theorem, no Cavalieri-as-such, no number-theoretic/Pythagorean-triple proof, no tangent-length incircle proof beyond #42.

## URLs fetched
- https://www.cut-the-knot.org/pythagoras/index.shtml (offset 0): success (truncated at ~100k chars, summarised)
- https://www.cut-the-knot.org/pythagoras/index.shtml (offset 100000): success
- No subpages or Wayback fetched (not needed for reachability). Mechanisms for most rows come from the index summary only, not subpages.
