# Known proofs of the Pythagorean theorem: a mechanism taxonomy

Stage 0 of the pipeline. The raw per-source tables (with proof numbers, URLs and
fetch logs) are in `research/stage0/`:

- `stage0_cutttheknot.md`: cut-the-knot proofs #1 to #122, one row per proof.
- `stage0_loomis_physics.md`: Loomis's categories (370 proofs) and physics/dynamic proofs.
- `stage0_trig_arxiv.md`: trigonometric proofs and recent arXiv "new proof" papers.

This file condenses those tables into **core mechanisms**. A "mechanism" means the
single idea that produces the quadratic relation. Throughout, the right angle is at
$C$, the legs are $a=BC$ and $b=CA$, the hypotenuse is $c=AB$, $H$ is the foot of the
altitude from $C$, $p=AH$, $q=HB$, $h=CH$, $s=\tfrac{a+b+c}{2}$, and $r$ is the inradius.

## 1. Mechanism catalogue

Each family lists representative sources: cut-the-knot numbers are written CTK#, and
Loomis numbers are written L#. Each one-line mechanism is the part that does the work.

### A. Similarity (Loomis "algebraic", L1 to L53; CTK#6, 13, 18, 19, 26, 41, 44, 54k, 58, 78, 83)
| ID | Core mechanism | Representative |
|---|---|---|
| A1 | The altitude splits $ABC$ into two triangles similar to it, so $a^2=cq$ and $b^2=cp$, and $p+q=c$ | Euclid VI.8 and VI.31, CTK#6, L1 |
| A2 | The same altitude figure with other eliminations among the 9 proportions (Loomis counts 44) | L1 to L35, CTK#56 ("4864 proofs") |
| A3 | Mean proportionals: $h^2=pq$ and $a^2=cq$ turned into rectangle = square statements | L36 to L53 |
| A4 | Leg projections onto the hypotenuse, $c = a\cos B + b\cos A$ with cosines as ratios (this is A1 in different notation) | Michel Paul (CTK trig page) |
| A5 | Angle bisector plus similar triangles; the half-angle tangent $\tan\frac A2=\frac{a}{b+c}=\frac{c-b}{a}$ | CTK#53, 82; Kise et al. 2025 proof 2 |
| A6 | Three scaled copies of the triangle (ratios $a$, $b$, $c$) assembled into a rectangle | CTK#41, 83, Dijkstra CTK#78 |
| A7 | The symmedian point is the midpoint of the altitude; ratio $b^2:a^2$ | CTK#62, Shene's Lemoine-point proofs |

### B. Circles: chords, secants, tangents (all reduce to similarity; Loomis says so explicitly)
| ID | Core mechanism | Representative |
|---|---|---|
| B1 | Circle centred at $A$ of radius $c$ through $B$: intersecting chords give $a^2=(c+b)(c-b)$ | CTK#11, 39, L54 to L68 |
| B2 | Circle centred at a vertex of radius $a$ or $b$: tangent-secant, $a^2=(c-b)(c+b)$ | CTK#22, 43, 59, 60, L77 to L85 |
| B3 | Circle of radius $h$ (the altitude), or the Thales circle on $AB$, plus intersecting chords | CTK#61, 79, 105, 106, 113 |
| B4 | Ptolemy's theorem on the rectangle inscribed in the circumcircle | CTK#21 |
| B5 | Archimedes' broken-chord theorem | CTK#85 |
| B6 | The circumcircle tangent at $C$ with perpendiculars to the hypotenuse | CTK#67 |
| B7 | Two circles; power of a point and Ptolemy-style relations | L86, L87 |

### C. Area: dissection, rearrangement, shear (Loomis "geometric", L104 to L370)
| ID | Core mechanism | Representative |
|---|---|---|
| C1 | Four copies of the triangle in an $(a+b)$-square or around an $(a-b)$-hole | Zhoubi, Bhaskara, CTK#3, 4, 9 |
| C2 | Shear and SAS congruence: a leg square equals a rectangle on the hypotenuse | Euclid I.47, CTK#1, 12, 25, 77, 81 |
| C3 | Finite dissection of the leg squares into the hypotenuse square | Perigal, Thabit, Liu Hui, CTK#2, 14, 27, 35, 36, 74, 92, 104 |
| C4 | Pythagorean tiling: two square lattices overlaid | CTK#15, 38, Alsina-Nelsen |
| C5 | One region's area computed two ways: trapezoid, triangle, quadrilateral | Garfield CTK#5, CTK#31, 32, 46 to 52, 73, 87 |
| C6 | Area of an orthodiagonal quadrilateral as $\frac12 d_1 d_2$ | CTK#47, 65, 66, 70 |
| C7 | Determinant or shoelace area | CTK#91, 98 |
| C8 | Pappus: parallelograms on the sides of a general triangle | CTK#17, 55, Hazard |
| C9 | Hexagons (da Vinci or Mayer), Star of David, equilateral triangles with 60° rotations | CTK#16, 88, 114, 117 (Navas 2016) |
| C10 | Ziggurat or trapezoid families depending on a parameter $\theta$ | Navas, arXiv 2511.00089 |

### D. Similar figures and scaling of area
| ID | Core mechanism | Representative |
|---|---|---|
| D1 | Areas of similar figures scale as the square of the side; the altitude decomposition gives $(a/c)^2+(b/c)^2=1$ | Euclid VI.31, CTK#7, 8, 20, L88 to L92, the "Einstein" proof |
| D2 | Similar polygons erected on the three sides (Pappus-type) | L100 to L103, CTK#107, 108 |

### E. Incircle, tangent lengths, Heron
| ID | Core mechanism | Representative |
|---|---|---|
| E1 | Tangent lengths and the square at $C$ give $r=s-c$; area $=rs=\frac12ab$ | CTK#42 (Oliver, Mollmann, Rigby), CTK#33, 34 |
| E2 | Incircle "out-in" dissection: the hypotenuse tangent segments $x,y$ satisfy $xy=$ area | CTK#45, L95 to L99 (tangent-segment algebra) |
| E3 | Heron's formula against $\frac12 ab$ (Heron's original proof uses the incircle, the excircle and similarity) | CTK#23, 75, 94; Chakraborty 2017 |

### F. Trigonometric (cosine and sine taken as ratios of similar right triangles)
| ID | Core mechanism | Representative |
|---|---|---|
| F1 | Geometric subtraction formula, then set $\alpha=\beta$ | Zimba 2009, Schur 1899, Versluys 1914, CTK#84 |
| F2 | Half-angle or double-angle formulas from an isosceles triangle | Luzia 2015 (CTK#109, 110), Kise et al. 2025, CTK#112 |
| F3 | Law of sines plus a geometric series of similar triangles | Jackson and Johnson 2023/24 |
| F4 | Tangent-sum formula with an isosceles triangle | Lengvárszky 2018 |
| F5 | $45°+\theta$ angle-sum formula with isosceles right triangles on the legs | Ajay Kumar 2024 |
| F6 | Area $=\frac12 ab\sin C$, and $\int \sin x\cos x$ computed two ways | Houston, Gheysens (CTK#80), Molokach |

### G. Limits, series, calculus, variational
| ID | Core mechanism | Representative |
|---|---|---|
| G1 | A self-similar infinite dissection summed as a geometric series | Lengvárszky 2013, Bhatnagar-Shrivastava 2023, Shene, CTK#100 |
| G2 | Differential relation $c\,dc=a\,da$ from similar infinitesimal triangles | Hardy CTK#40 (flawed), Staring, Molokach CTK#90 |
| G3 | Continuous deformation from the isosceles case, or from the degenerate endpoint | L93, L94, CTK#64, 121 |
| G4 | Hadamard shape derivative of area | Cavallina 2023 |
| G5 | The derivative of Heron's area vanishes at a right angle | CTK#94 |

### H. Vectors, coordinates (usually circular, because the norm is Euclidean)
| ID | Core mechanism | Representative |
|---|---|---|
| H1 | Square the vector identity and use $\mathbf u\cdot\mathbf v=0$ | Loomis quaternionic L347 to L350 |
| H2 | Parallelogram law | CTK#68 |
| H3 | Perpendicular bisector in coordinates | Luzia CTK#111 |

### I. Special centres and configurations
| ID | Core mechanism | Representative |
|---|---|---|
| I1 | Bottema's theorem, centres of squares | CTK#63, 86 |
| I2 | Orthocenter construction | CTK#95 |
| I3 | Generalization of $BC^2=AB\cdot BH_b+AC\cdot CH_c$ to any triangle (Dao) | CTK#101 |
| I4 | Reduction to the isosceles case (Socrates) | CTK#64, 119 |

### J. Physics and dynamics
| ID | Core mechanism | Circularity | Representative |
|---|---|---|---|
| J1 | Torque on a fluid-filled right prism | lever arms come from similarity: this is A1 | Levi 2009, Tokieda 1998, CTK#29 |
| J2 | Rotation sweeps area $\frac12 r^2\,d\theta$, and the area is invariant | essentially D1 | Levi ch. 2.6 |
| J3 | Translation flux around a closed loop | area bookkeeping | Stuart Anderson |
| J4 | Springs on a semicircle (energy constant) | high: Hooke energy is quadratic | Levi ch. 2.10 |
| J5 | Kinetic energy of perpendicular pushes | high: dot product | Levi, "on ice" |
| J6 | Elastic collision of equal masses | gives only the converse; dot product | Patera 2024 |
| J7 | Moment of couples (Versluys); kinetic energy of a rotating rod (Northrup) | parallelogram of forces | L351, L352 |
| J8 | Gas pressure in a triangular box | concurrency plus similarity | Tokieda |

## 2. Meta-observations

1. **Two primitive quadratic sources only.** Every known proof manufactures the
   quadratic relation from (i) similarity, meaning a proportion cross-multiplied
   (families A, B, D, F, much of G and J), or (ii) area, meaning the product of
   lengths for a rectangle or triangle together with additivity (C, E, parts of G).
   Physics proofs import a quadratic energy, which is usually circular. **A new
   proof can therefore be new only in its configuration and route, not in its
   primitive.** We judge novelty by the figure and by which similar triangles or
   which area identity carries the quadratic content.
2. **The dominant similarity figures** are the altitude (A1 to A3), circles centred at
   vertices or on the hypotenuse (B), and isosceles extensions giving the half-angle
   tangent (A5, F2). Many "new" proofs reduce to A1 after relabelling.
3. **Tangent-circle methods are used almost only with area** (E1: $\Delta=rs$). Heron's
   classical excircle proof (E3) uses incircle–excircle similarity, but it reaches
   Pythagoras only through the full Heron formula.

## 3. Mechanisms and figures that appear unexplored

These are gaps in the sources surveyed, not claims of novelty; stage 3 checks each
candidate separately.

- **Excircles as such** (radii $r_a,r_b,r_c$, and the squares they form at $C$), used
  with similarity rather than area or Heron.
- **Power of a point for a point other than a vertex, $H$, or $O$**, for example the
  incentre. Euler's $IA\cdot IL=2Rr$ does not appear anywhere.
- **Pitot's theorem** for tangential quadrilaterals cut from the triangle.
- **Inscribed squares and rectangles** (with the side on the hypotenuse) as the source of
  the similar triangles, instead of the altitude.
- **Harmonic division and cross-ratio** (projective), for example the incentre and
  excentre dividing the bisector harmonically.
- **Radical axes** (midpoints of common tangents).
- **Circle inversion, Möbius maps**: no proof was found.
- **Menelaus and Ceva** used as the main engine.
- **Probabilistic, measure-theoretic or averaging arguments** (integral geometry).
- **Reduction from the isosceles case by a non-limit mechanism.**
