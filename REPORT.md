# Report: the Pythagorean theorem via the incircle–excircle homothety

**Selected candidate:** C1.
**Honest novelty rating (revised after review):** LIKELY KNOWN as a mechanism. At best it
is a short route through the standard Heron lemma, not a new mechanism. The first rating
(NEW, low-to-moderate confidence) is kept in §5 for the record; §5a explains the downgrade.
**Round 3 (volume arguments):** nothing survived; see §5d and §6 ("Why new proofs are hard").
**Lean status:** builds with no `sorry`, and the theorem relies only on Lean's standard
kernel axioms (§8).

## 1. Statement and notation

Let triangle $ABC$ have a right angle at $C$, with $a=BC$, $b=CA$, $c=AB$ and
$s=\frac{a+b+c}{2}$.

- The **incircle** has centre $I$ and radius $r$. It touches $BC$, $CA$ and $AB$ at
  $D$, $E$ and $F$.
- The **$A$-excircle** has centre $J$ (usually written $I_a$) and radius $r_a$. It
  touches segment $BC$ at $D'$, line $CA$ beyond $C$ at $E'$, and line $AB$ beyond $B$
  at $F'$.

**Theorem.** $c^2=a^2+b^2$.

## 2. The proof

1. **Equal tangents.** Tangent segments drawn from one point to a circle are equal,
   because the right triangles they form are congruent (HL). Adding segments then gives:
   - for the incircle: $AE=s-a$ and $CE=CD=s-c$;
   - for the excircle: $AE'=AF'$, $BD'=BF'$ and $CE'=CD'$. From
     $AE'=b+CE'$ and $AF'=c+BF'=c+(a-CE')$ we get $CE'=s-b$ and $AE'=s$.

2. **The right angle makes two squares at $C$.**
   - $CEID$ has right angles at $C$, $E$ and $D$, so it is a rectangle. Its adjacent
     sides $CE$ and $CD$ are equal, so it is a square, and $r=EI=CE=s-c$.
   - In $CD'JE'$, the angle at $C$ lies between ray $CB$ and the ray opposite $CA$. That
     angle is the supplement of a right angle, so it is right too. The same argument
     gives $r_a=E'J=CE'=s-b$.

3. **Both centres lie on the bisector of angle $A$.** The equal-tangent congruences
   give $\angle EAI=\angle FAI$. Angle addition (ray $AI$ crosses segment $BC$) then
   gives $\angle EAI=\tfrac12\angle BAC$. In the same way, $\angle E'AJ=\tfrac12\angle BAC$.

4. **Homothety at $A$.** The right triangles $AEI$ and $AE'J$ (right angles at $E$ and
   $E'$) have equal angles at $A$, so they are similar. Hence
   $$\frac{EI}{AE}=\frac{E'J}{AE'}\quad\Longrightarrow\quad\frac{s-c}{s-a}=\frac{s-b}{s}.$$

5. **Algebra.** Cross-multiplying gives $s(s-c)=(s-a)(s-b)$. In terms of the sides, that
   is $(a+b)^2-c^2=c^2-(a-b)^2$. Therefore $2a^2+2b^2=2c^2$. ∎

Area is never used. Only one similarity is used, and it is not the altitude similarity.

## 3. Lemma list (from the circularity audit)

| # | Lemma | Derived from | Lean name |
|---|---|---|---|
| L1 | Equal tangents from a point, plus equal angles with the centre line | HL congruence | `equal_tangents` |
| L2 | A tangent quadrilateral with a right angle at the vertex is a square: radius = tangent length | rectangle axiom + L1 | `square_at_vertex` |
| L2a | The incircle corner angle $\angle ECD$ is the right angle | ray invariance | `incircle_corner_right` |
| L2b | The excircle corner angle $\angle E'CD'$ is right (linear pair) | linear pair + ray invariance | `excircle_corner_right` |
| L3 | The centre of a circle tangent to both sides of angle $A$ makes half the angle | L1 + angle addition + ray invariance | `half_angle` |
| L4 | Homothety ratio $EI\cdot AE'=E'J\cdot AE$ | AA similarity of right triangles | `homothety_ratio` |
| L5 | $(s-a)(s-b)=s(s-c)\Rightarrow c^2=a^2+b^2$ | field algebra | `core_algebra` |

**Not used:** the distance formula, $\sin^2+\cos^2=1$, inner products, norms, rotation
invariance, the law of cosines, area, Heron's formula, and the altitude.

## 4. Core mechanism and closest prior work

**Core mechanism.** The two tritangent circles inscribed in angle $A$ are homothetic from
$A$. The right angle at $C$ pins down both radii as tangent lengths, $r=s-c$ and
$r_a=s-b$, because each circle forms a square at $C$. The homothety ratio then forces
$s(s-c)=(s-a)(s-b)$.

Closest prior work, from the stage-3 search (seven sources; logs in `research/stage3/`):

1. **CTK #82** (Yanney & Calderhead, *Amer. Math. Monthly* 3, 1896; restated in Kise,
   Uehara and Shinzato, arXiv:2506.06304 §3). This is the nearest proof.
   - Let $P$ be the foot of the $A$-bisector on $BC$. The circle centred at $P$ through
     $C$ is tangent to $AB$ at $E$, with $PC=PE=x$ and $AE=b$.
   - The bisector theorem gives $x=\frac{ab}{b+c}$.
   - The quadratic step is $\triangle BEP\sim\triangle BCA$ (common angle $B$), which
     gives $\frac{c-b}a=\frac xb$.
2. **Yanney & Calderhead XXVI** (*Amer. Math. Monthly* 4(1), 1897, p. 11, after Olney §971).
   It reaches **the same identity** $(AC+AB-BC)(BC+AB-AC)=(AC+AB+BC)(AC+BC-AB)$ by
   harmonic division of $AB$ by the diameters of the orthogonal circles centred at $A$
   and $B$ through $C$.
3. **The incircle-and-area proof** (Bauer 1891 per Loomis Fig. 84; Sawyer 1901; Oliver
   1997 = CTK #42): $r=s-c$ together with area $=rs=\frac12ab$. Also
   **Y&C XCVII** (1899): the $C$-excircle with an area decomposition.
4. **Heron's formula via excircles** (classical). It contains the homothety
   $r/(s-a)=r_a/s$ for a *general* triangle, and reaches Pythagoras (CTK #23) only through
   a second similarity, area, and Heron's formula.
5. **Pestich**, CTK Exchange thread 694 (2006, a forum post). Intersecting chords in the
   circle $AIB$ give $r\,r_c=(s-a)(s-b)$, which is then set equal to the area.

## 5. Why it differs, and the honest novelty rating

- **Against #82.** Both proofs live in the "bisector of $A$ / $\tan\frac A2$" family,
  and the circle of #82 is homothetic to C1's two circles. The quadratic step is
  different, though:
  - #82 uses an angle-$B$ similarity together with the bisector theorem;
  - C1 uses the homothety between *two* circles inscribed in angle $A$, with both radii
    fixed by the right-angle squares.

  Neither argument contains the other, and no trivial step converts one into the other.
  In ratio terms, #82 equates $\frac a{b+c}$ with $\frac{c-b}a$, while C1 equates
  $\frac{s-c}{s-a}$ with $\frac{s-b}s$; these two pairs are related only through the
  mediant rule.
- **Against Y&C XXVI and Pestich.** The identity is the same, but the mechanism differs:
  vertex-centred orthogonal circles with harmonic division, or chords in the circle $AIB$
  followed by area.
- **Against E1 (incircle + area) and Heron.** C1 is area-free. It is *not* "Heron's
  proof plus trivial steps". Instead, it *removes* Heron's second similarity, its area
  step and its formula, replacing all three with the observation that the right angle
  squares the excircle as well.

**Rating: NEW, with low-to-moderate confidence.** No source we could read contains this
proof. The risk is real, however:

- the figure (incircle, excircle, right angle) is classical;
- the target identity has been known since 1897;
- the half-angle family is crowded.

**Sources we could not read** are the main residual risk: *Math. Gazette* 74.31
(Okumura 1990, "Incircles and excircles of right-angled triangles"), 89.21 (Clarke 2005),
*CMJ* "Pythagoras by the Cross Ratio" (2006), and Forum Geometricorum (unreachable). A
library check of these would settle the question. We would not be surprised if a short
note somewhere contains C1.

**Runner-up: C2** (power of the incentre with respect to the Thales circle). It was not
found anywhere. It was downgraded to borderline because its "centre version" is the known
B1 mechanism applied to a half-size triangle, so C2 is a pivot-shift of B1.

The other candidates were rated LIKELY KNOWN, KNOWN, or rejected: C6 was circular and C7
was a wrapper around A1. Details are in CANDIDATES.md.

## 5a. Revised rating after external review

A reviewer checked the mathematics; it is correct and not circular. The same reviewer
raised three novelty objections. I followed each one up.

1. **It is the standard Heron lemma.** The step $\frac{r}{s-a}=\frac{r_a}{s}$ is the usual
   first similarity in the incircle–excircle proof of Heron's formula. C1 takes that
   general lemma and substitutes the right-triangle radii from (Q). The argument in §5,
   that C1 is "not Heron plus trivial steps" because it drops Heron's area step and
   second similarity, is true but weak. A referee can fairly describe C1 as *Heron's
   proof, specialised*. I agree with that description.
2. **The identity is published, along with its equivalence to Pythagoras.** For a right
   triangle, C1's equation $s(s-c)=(s-a)(s-b)$ is $r\,r_c=r_a\,r_b$, because $r_c=s$ and
   $r_b=s-a$. I verified two papers:
   - H. L. Price and F. Bernhart, *Pythagorean Triples and a New Pythagorean Theorem*,
     arXiv:math/0701554 (2007). Their "Circle Theorem" gives $r_1r_4=r_2r_3$ and says
     "Proof of these claims is elementary".
   - F. Bernhart and H. L. Price, *Heron's Formula, Descartes Circles, and Pythagorean
     Triangles*, arXiv:math/0701624 (2007), §2. It writes: "Let the angle at vertex C be a
     right angle. In other words, the Pythagorean equation holds … (6) is transformed to
     $r_2\cdot r_3=r_1\cdot r_4$". The same paper gives Heron's formula as
     $G^2=r_1r_2r_3r_4$.

   Both run in the direction Pythagoras ⇒ identity, and neither contains the homothety
   derivation. They do show that the facts are well known in exactly this circle setting.
3. **Unread sources whose titles match closely.** These are now the deciding sources.
   All are closed access; Unpaywall finds no open copy of any of them.
   - Okumura, *Math. Gazette* 74.31 (1990), "Incircles and excircles of right-angled
     triangles", doi 10.2307/3619828.
   - D. W. Hansen, "On the radii of inscribed and escribed circles of right triangles",
     *Mathematics Teacher* 72(6) (1979) 462–464, doi 10.5951/mt.72.6.0462. The stage-3
     search missed it.
   - The follow-ups to Hansen, found by Crossref: "… — A Second Look", *Two-Year College
     Math. J.* (1983), doi 10.2307/3026760; and Hansen, *Mathematics Teacher* 96(5) (2003)
     358, doi 10.5951/mt.96.5.0358.

   If any of these derives $c^2=a^2+b^2$ from the in-/exradii, C1 is KNOWN.

**Cut-the-knot re-check** (on the reviewer's advice). `pythagoras/herons.shtml` (#23) and
`pythagoras/herons2.shtml` (#75, Loomis algebraic 107, plus the Molokach variant) prove
Pythagoras from Heron's *formula*: by expanding the product, or by applying it to isosceles
triangles. Neither uses the excircle homothety or exradii. `Curriculum/Geometry/HeronsFormula.shtml`
does not mention excircles. So cut-the-knot does not contain C1, but this changes nothing
in points 1 and 2.

**Revised rating: LIKELY KNOWN as a mechanism.** If the four sources above do not contain
it, the honest label is *a short, area-free route to Pythagoras through the standard Heron
homothety lemma, using the fact that a right angle makes both the incircle and the
$A$-excircle squares at $C$*. It is a pleasant observation, not a new mechanism. **No
candidate from this run should be presented as a genuinely new proof.**

## 5b. Round 2 (after the review): no NEW candidate

Round 2 applied the lessons of round 1. It avoided the in-/excircle cluster and the
half-angle family, and it checked novelty at the level of the intermediate identity. Eight
candidates were proposed (CANDIDATES.md, Round 2), and six were eliminated by my own
reduction tests before any search:

| Candidate | Reduces to |
|---|---|
| Apollonius circle | cotangent double-angle formula |
| Brocard point | tangent–secant |
| Mixtilinear incircle | Casey's theorem, circular |
| Euler line | chord proof B1 |
| Simson line | no quadratic content |
| √bc-inversion | no quadratic content |

The two survivors were searched across cut-the-knot and the web, arXiv and Crossref, and
Loomis plus all of Yanney–Calderhead. Neither was found, but both reduce to known proofs:

- **R2-1 (Ptolemy on the nine-point circle).** The homothety at $C$ with ratio ½ turns it
  into Ptolemy on the circumcircle with the antipode and the reflection of $C$. That is a
  pivot of the rectangle proof (CTK #21; Loomis 63–68). Its outputs are the altitude
  relations. **LIKELY KNOWN.**
- **R2-2 (difference and product of the hypotenuse segments).** The difference identity
  $c(p-q)=b^2-a^2$ is Krueger's (1746; Loomis 72, Y&C XXII). The product $pq=h^2$ is
  Hoffmann's (1818). Only the elimination $(p+q)^2=(p-q)^2+4pq$ is new, and that is a
  trivial recombination. **LIKELY KNOWN.**

**Conclusion after two rounds.** Nothing has survived as genuinely new. All 17 candidates
reduce, after a homothety, a pivot shift or an algebraic elimination, to the altitude
similarity, vertex-circle power, Ptolemy on the rectangle, the incircle-and-area proof, or
a trigonometric identity. The remaining unread sources (Okumura 1990, Hansen 1979/83/2003,
Heo 2017, Tran 2023, Conley–Jaroma 2006) need library access.

A third round is worthwhile only with a **different quadratic source**: something other
than similarity, area, or power of a point. The options I see are a solid-geometry
(volume) argument, a measure-theoretic or probabilistic argument that does not collapse to
projections, or a combinatorial/tiling invariant. Otherwise further rounds will
rediscover recombinations, as Loomis already noted.

## 5c. Final check against the paywalled sources

The user downloaded the six closed-access sources through school JSTOR access, and I read
all of them (details in SEARCH_LOG.md).

- **Hansen (1979), Long (1983) and Hansen (2003)** use the Pythagorean theorem to derive
  the radius identities. None proves Pythagoras from them.
- **Hansen (2003)** is the closest item found. It has C1's figure: the tritangent centres
  lie on the $45°$ lines through $C$, which is exactly the "squares at $C$". Its Theorem 5
  (Fig. 4) has C1's collinearity computation, run in the direction Pythagoras ⇒ collinearity.
- **Long (1983)** states the general identity $r_ar_b-rr_c=rac{a^2+b^2-c^2}{2}$.
- **Okumura (1990)** is about common tangents and contains no proof.
- **Heo (2017)** and **Conley–Jaroma (2006)** are Ptolemy-type proofs: on a trapezoid, and
  on the rectangle via cross ratios. They are related to R2-1 and C5 but are not those
  candidates.

**Final verdict.** C1 is not published as a proof of Pythagoras, but it is the converse of
Hansen's 2003 collinearity computation, made synthetic by the standard Heron homothety
lemma. It stays **LIKELY KNOWN as a mechanism**. It is a short, area-free converse route,
not a new proof idea. No candidate from either round is NEW.

## 5d. Round 3: volume arguments (no NEW)

**Brief.** Find a proof whose squares come from a 3D *volume*, not from similarity, area,
power of a point or projection. Allowed: boxes, prisms, pyramids ($V=\tfrac13Bh$ by
dissection or Cavalieri on parallel sections), additivity, and congruence or similarity of
solids. Rejected at once: Cavalieri that reduces to planar area addition, projection onto the
triangle's plane, volume formulas derived with the distance formula or Pythagoras (slant
heights, space diagonals), and prisms over the triangle. Details and audits are in
CANDIDATES.md (Round 3); the search log is `research/round3/search.md`.

**Two screens, applied before searching.**

- *Flattening test.* If every volume term is (planar area) × (one common height) × (a
  constant such as $1,\tfrac12,\tfrac13,\tfrac16$), the argument is a planar area argument.
- *Degree test.* Pythagoras has degree 2 and a volume identity has degree 3, so a length must
  be divided out. If it is the same length in every term we are back in the flattening test.

**Six candidates.**

| # | Idea | Result |
|---|---|---|
| R3-1 | Orthoscheme $A\!-\!C\!-\!B\!-\!D$ ($BD\perp$ plane $ABC$); volume from each of its four right-triangle faces | Gives only $ab=ch$ (the altitude/area identity), times $\tfrac w6$. **KNOWN** |
| R3-2 | Pyramids on the three erected squares with a common apex | In-plane squares: area identity times $\tfrac t3$ (excluded by the brief). Vertical squares: $\tfrac13abc$ twice. **KNOWN / no content** |
| R3-3 | "3D Zhoubi": hull of the $(a+b)$-square and the inscribed $c$-square at height $H$ | Reduces to the planar Zhoubi identity (below). **KNOWN** |
| R3-4 | Trirectangular tetrahedron, volume in three ways, then degenerate to 2D | **Circular.** De Gua's theorem is proved with the 2D theorem |
| R3-5 | Box with two skew face-diagonals, $V=\tfrac13pqr=\tfrac16e_1e_2r\sin\varphi$ | **Rejected:** projection plus the distance formula |
| R3-6 | Disphenoid flatness: a right triangle is the degenerate four-congruent-faces tetrahedron | **Circular:** converse of the space distance formula |

**The only candidate with a real solid, R3-3.** Take the bottom face to be the square of
side $a+b$ at $z=0$. Take the top face to be the inscribed square of side $c$ at height $H$,
with each top vertex above a division point of a bottom side. Let $T=\tfrac13\cdot\tfrac{ab}2H$
be the volume of each of the four corner tetrahedra that the hull omits from the box
$(a+b)\times(a+b)\times H$. Two computations of the hull volume use only boxes and
$V=\tfrac13Bh$:

$$V=c^2H+4\Bigl(\tfrac12abH-T\Bigr)\qquad\text{and}\qquad V=(a+b)^2H-4T .$$

Equating them, $T$ and $H$ both cancel and what remains is

$$c^2+2ab=(a+b)^2\iff a^2+b^2=c^2 .$$

That is the planar Zhoubi / Bhaskara identity, word for word (CTK #3, #4, #9). The solid
appears on both sides, so its 3D content cancels exactly. A third computation, Simpson's
prismatoid rule with mid-section area $\tfrac14\bigl(3(a+b)^2+c^2\bigr)$, gives the same
result but needs a planar octagon area. I checked all of these numerically against a
convex-hull volume on random right triangles (`research/round3/checks.py`); they agree to
every printed digit.

**Search results** (`research/round3/search.md`). Loomis's 370 proofs contain no volume or
solid-geometry proof; the only space-geometry passage (lines 19630–19700 of the OCR) states
the 3D generalisation in vector language. The cut-the-knot Pythagoras index (#1–#122) has no
stereometric proof. cut-the-knot's "Analogues and Generalizations" page proves de Gua with
$h^2=k^2+p^2$. G. Whitney (studioinfinity.org, 2022) says the 3D theorem gives the 2D one only
with extra planar input, and proves the 3D theorem "using the regular PT". Web, arXiv and
Crossref searches return only generalisations (de Gua, $k$-volumes by projection), Cavalieri
used *with* Pythagoras, or planar dissections. Not read: Gazette 61.22 (Bunday 1977) and 62.23
(Hull, Perfect, Heading 1978), paywalled; their titles and snippets are about the 3D theorem
(projection and coordinate proofs).

**Outcome.** No candidate is NEW, so nothing was formalized in Lean. (The toolchain is also
not installed in this container; it would have had to be set up with `elan` first.)

## 6. Why new proofs are hard

This section explains why 23 candidates in three rounds ended with no new proof. It is a
summary of the evidence in CANDIDATES.md, KNOWN_PROOFS.md and `research/`, not a theorem.

### 6.1 Taxonomy: where the square can come from

A proof must produce a *product* of two lengths from the configuration, because lengths
alone only add. The configurations supply many linear data (tangent lengths, bisector
ratios, harmonic ranges, hypotenuse segments), and the quadratic step always multiplies two
of them. There are only three ways to do this.

| Source of the product | Mechanism | Families (KNOWN_PROOFS.md) |
|---|---|---|
| **Proportion** | Similar triangles: $\frac xy=\frac zw\Rightarrow xw=yz$. Chords, secants, tangents and power of a point are similar triangles (Loomis says so for B). Sine and cosine as ratios of similar right triangles | A, B, D, F, much of G and J |
| **Area** | A rectangle has area $xy$; area is additive and invariant under shear and congruence | C, E, parts of G |
| **Imported metric** | $|\mathbf v|^2=\mathbf v\cdot\mathbf v$, the distance formula, a Pythagorean-based trig identity, a quadratic energy | H, parts of F and J. Circular unless the ingredient is proved separately |

Volume is not a fourth row. Section 6.3 shows that it collapses into the first two.

### 6.2 Why the list is short

The theorem fails in hyperbolic and spherical geometry, so every proof must use the parallel
postulate or one of its equivalents somewhere. (I am not claiming a full equivalence here;
the failure in the non-Euclidean models is the standard fact I rely on.) The postulate enters
Euclidean geometry through a few consequences: similar non-congruent triangles exist,
rectangles exist, parallelograms on the same base and height have the same area. The first
carries proportion and the second and third carry area. Each of the 55 sub-mechanisms in
KNOWN_PROOFS.md appears to pick one of these carriers and then choose a figure. Novelty in the
figure is easy. I found no novelty in the carrier, and I suspect there is none to find, because
the carriers are what the theory of proportion and the theory of area are built from.

### 6.3 Why volume does not help

1. **Similarity of solids scales by $k^3$.** If a solid splits into two pieces similar to it,
   with ratios $k_1,k_2$, then $k_1^3+k_2^3=1$. Pythagoras needs $k_1^2+k_2^2=1$. Cubic
   scaling cannot give it.
2. **Volume formulas factor through planar area.** Each allowed formula is (planar area) ×
   (perpendicular length): a box is $xyz$, and a pyramid is $\tfrac13Bh$. For the identity
   to be degree 2, the perpendicular length must be the same in every term, or be related to
   the others by a planar similarity. That is the flattening test, and every non-circular
   candidate failed it.
3. **The solid cancels.** The one candidate with a genuinely 3D figure (R3-3) has the same
   solid on both sides, so $H$ and the tetrahedra drop out and the planar Zhoubi identity
   remains.
4. **The converse direction is the only real 3D content.** De Gua's theorem is a true,
   non-trivial 3D statement, but all its proofs use the 2D theorem, projection (excluded by
   the brief) or coordinates (circular here).

### 6.4 Reduction patterns

Each candidate was reduced, before searching, by one of these patterns.

- **P1 Rescaling.** The new figure is a homothetic or scaled image of a known one.
  R2-1 is Ptolemy on the circumcircle scaled by $\tfrac12$ at $C$. R2-2 is Krueger's circle
  scaled by $\tfrac12$ at $A$.
- **P2 Moved reference point.** The same computation is run from a different centre, circle
  or apex. C2 moves the power-of-a-point computation from $O$ to the incentre $I$. C9 swaps
  the incircle for the excircle. R2-4 swaps a vertex circle for a Brocard circle. R2-6
  moves to the reflected vertex. C5 re-expresses Y&C XXVI.
- **P3 Different order of elimination.** The same relations among a known set of lengths are
  solved in a new order. C3, C4 and C8 each re-eliminate within the altitude system or the
  incircle-and-area system. Loomis counts 44 eliminations for the altitude figure alone.
- **P4 Converse or specialisation.** The route is a known computation run backwards, or a
  known lemma with right-triangle values substituted. C1 is the converse of Hansen's
  collinearity computation and a specialised Heron lemma. R2-3 is the cotangent
  double-angle formula.
- **P5 Hidden metric (circular).** The step that looks synthetic needs $d^2-R^2$, a space
  diagonal, a slant height or a Gram determinant. C6, R2-5, R3-4, R3-5 and R3-6.
- **P6 Extrusion or wrapper.** Extra machinery (averaging over directions, a height, a
  solid) multiplies or divides every term by the same factor and cancels. C7, R3-1, R3-2
  and R3-3.
- **P7 Vacuous.** The figure is real but carries no quadratic information. R2-7 and R2-8.

### 6.5 Evidence: all 23 candidates

| Round | # | Idea | Primary pattern | Reduces to | Rating |
|---|---|---|---|---|---|
| 1 | C1 | Incircle–excircle homothety | P4 | Heron lemma; converse of Hansen 2003; half-angle (F, E3) | LIKELY KNOWN |
| 1 | C2 | Power of the incentre in the Thales circle | P2 | B1 at $O$ | LIKELY KNOWN |
| 1 | C3 | Inscribed square on the hypotenuse | P3 | A1 (zero-width rectangle) | LIKELY KNOWN |
| 1 | C4 | Pitot trapezoid | P3 | E1 (similarity replaces the area step) | LIKELY KNOWN |
| 1 | C5 | Harmonic division of the bisector | P2 | Y&C XXVI (B), restates C1 | LIKELY KNOWN |
| 1 | C6 | Radical axis | P5 | needs $d^2-R^2$ | REJECTED-CIRCULAR |
| 1 | C7 | Averaging over directions | P6 | A1 at one direction | REJECTED-WRAPPER |
| 1 | C8 | $r+r_1+r_2=h$ | P3 | A1 + E1 | KNOWN |
| 1 | C9 | Excircle area | P2 | E1 | KNOWN |
| 2 | R2-1 | Ptolemy on the nine-point circle | P1 | B4 | LIKELY KNOWN |
| 2 | R2-2 | Sum and product of hypotenuse segments | P1 | Krueger (B1/B2) + Hoffmann (A3) | LIKELY KNOWN |
| 2 | R2-3 | Apollonius circle | P4 | F (cotangent double-angle) | KNOWN |
| 2 | R2-4 | Brocard point | P2 | B2/A1 | KNOWN |
| 2 | R2-5 | Mixtilinear incircle | P5 | Casey needs $t^2=d^2-(r_1-r_2)^2$ | REJECTED-CIRCULAR |
| 2 | R2-6 | Euler line of the doubled triangle | P2 | B1 | KNOWN |
| 2 | R2-7 | Simson line | P7 | none | FAILS |
| 2 | R2-8 | $\sqrt{bc}$-inversion | P7 | none | FAILS |
| 3 | R3-1 | Orthoscheme, four faces | P6 | $ab=ch$ (A1/area) | KNOWN |
| 3 | R3-2 | Pyramids on erected squares | P6 | area (excluded) / tautology | KNOWN |
| 3 | R3-3 | 3D Zhoubi | P6 | Zhoubi / Bhaskara (C1) | KNOWN |
| 3 | R3-4 | Trirectangular tetrahedron | P5 | uses 2D Pythagoras | REJECTED-CIRCULAR |
| 3 | R3-5 | Box with skew diagonals | P5 | projection, C6 | REJECTED |
| 3 | R3-6 | Disphenoid flatness | P5 | space distance formula | REJECTED-CIRCULAR |

Tally by primary pattern: P1 × 2, P2 × 5, P3 × 3, P4 × 2, P5 × 5, P6 × 4, P7 × 2 (23 in all).

Tally by rating: **0 NEW**, 7 LIKELY KNOWN (C1–C5, R2-1, R2-2), 8 KNOWN (C8, C9, R2-3, R2-4,
R2-6, R3-1, R3-2, R3-3), and 8 rejected as circular, a wrapper, or without quadratic content
(C6, C7, R2-5, R2-7, R2-8, R3-4, R3-5, R3-6).

### 6.6 What this does and does not show

- It does **not** prove that no new proof exists. An absence of search hits is weak evidence,
  and several sources remain unread (Gazette 61.22 and 62.23, Maor's sidebar "A Most Unusual
  Proof", Nelsen's *Proofs Without Words* volumes page by page).
- It **does** show that a proof which is new in its *figure* is easy to produce, and that
  such a proof almost always reduces to a known one by P1–P4, or is circular (P5), or
  carries a factor that cancels (P6).
- A genuinely new proof would need either a new carrier of the parallel postulate (not just
  a new figure) or an argument that is not a product of two lengths at all. The directions
  still untried are those listed in §5b and §9: inversion or Möbius maps as the main
  engine, Menelaus or Ceva as the main engine, and a measure-theoretic argument that does not
  reduce to projections (C7 did).
- The honest summary of all three rounds: **no candidate is new.** The best result of the
  project is C1, "a short route through the standard Heron lemma", and R3-3 is a nice
  geometric picture of Zhoubi's identity, not a new mechanism.

## 7. Pipeline summary

| Stage | Output |
|---|---|
| 0 | KNOWN_PROOFS.md: 10 mechanism families, 55 sub-mechanisms, with gaps listed (raw data in `research/stage0/`) |
| 1–2 | 9 candidates (C1–C9) aimed at those gaps, with lemma lists. C6 was rejected as circular (radical axis needs $d^2-R^2$), C7 as a wrapper (averaging reduces to A1) |
| 3 | 7 parallel source searches (cut-the-knot, arXiv, Loomis, Gazette, Math. Magazine, CMJ, Monthly), each logging every query and URL |
| 4 | Ratings: C1 NEW; C2 NEW, then downgraded to borderline; C3, C4, C5 LIKELY KNOWN; C8, C9 KNOWN |
| 5 | No further round was needed, because a NEW candidate survived |
| 6–7 | C1 was selected and formalized in Lean 4 |
| Round 2 | 8 candidates, 6 eliminated by pre-screens, 2 searched; none NEW (§5b, §5c) |
| Round 3 | Volume arguments only: 6 candidates, flattening and degree screens, search of Loomis, cut-the-knot, web, arXiv, Crossref; none NEW, so no Lean (§5d, §6) |

## 8. Lean formalization

**Location:** `lean/`. The toolchain is `leanprover/lean4:v4.37.0-rc1` with Mathlib master.
Mathlib supplies **only** the real numbers and the tactics `linarith` and
`linear_combination`. No module whose name contains `Geometry`, `Euclidean`,
`InnerProduct` or `Trigonometric` is imported, even transitively; the check script
verifies this.

**Axiom system** (`PythagorasProof/Axioms.lean`). It is a minimal, self-contained
Birkhoff-style system. Its primitives are `dist`, strict betweenness `Bet`, and an angle
measure `ang` in degrees. All axioms are fields of the class `Synthetic.Plane`, so they
are explicit hypotheses rather than global `axiom`s. Each one is a standard theorem of
plane geometry that does not depend on Pythagoras:

| Axiom | Content | Status in classical geometry |
|---|---|---|
| `dist_comm`, `bet_symm`, `bet_ne`, `bet_add` | basic properties of segments and betweenness; segment addition | Birkhoff's ruler postulate |
| `ang_comm`, `ang_ray`, `ang_add`, `ang_linear` | angle symmetry, an angle depends only on its rays, angle addition, linear pair | Birkhoff's protractor postulate |
| `hl` | HL congruence of right triangles | absolute (neutral) geometry |
| `rect` | three right angles make a rectangle with equal opposite sides | Euclidean (parallel postulate) |
| `sim` | AA similarity of right triangles | Birkhoff's similarity postulate |
| `incircle`, `excircle` | the incircle and the $A$-excircle exist and touch where stated | concurrency of angle bisectors |

**Consistency evidence.** `lean/model_check.py` tests every axiom, including the existence
witnesses, on 20,000 random instances in the Euclidean model $\mathbb R^2$. All instances
pass. A fully formal model inside Lean was not built, since it would need Mathlib's
Euclidean geometry, which the brief excludes; see DECISIONS.md.

**Proof files:**

- `PythagorasProof/Lemmas.lean`: L1–L4, each proved separately from the axioms.
- `PythagorasProof/Main.lean`: L5 (`core_algebra`) and the main theorem:

```lean
theorem Synthetic.pythagoras {P : Type*} [Synthetic.Plane P] {A B C : P}
    (hC : ang A C B = 90) : dist A B ^ 2 = dist B C ^ 2 + dist C A ^ 2
```

**Final build status** (`lean/scripts/check.sh`):

- `lake build`: **Build completed successfully (1863 jobs).**
- `#print axioms Synthetic.pythagoras`: `[propext, Classical.choice, Quot.sound]`, which
  are Lean's standard kernel axioms only.
- There are no `sorry`, `admit` or `axiom` declarations in the project.
- The import scan found no geometry, Euclidean, inner-product or trigonometry modules.
- `model_check.py` passes: all axioms hold on every sampled instance.

**Caveat.** Taking similarity and congruence as axioms follows the brief's "allowed"
list: similarity, area additivity, Thales, intersecting chords and congruence. The
formalization therefore certifies that **the proof is correct relative to these
classical principles**. It does not derive them from Hilbert's or Tarski's axioms; doing
so would amount to formalizing the theory of proportion (as GeoCoq does), which is far
larger than this project.

In plain terms, Lean checks the algebra and the order of the steps. It does **not** check
that the geometry avoids Pythagoras; that rests on the axioms. A reader should therefore
confirm that none of the axioms is normally *proved* with Pythagoras:

- **`hl` (HL congruence).** This is the one to watch. Many textbooks prove it from the
  Pythagorean theorem: "the third sides are $\sqrt{c^2-a^2}$". A Pythagoras-free proof
  exists in absolute geometry. Place the two triangles on opposite sides of the common
  leg, so that the hypotenuses form an isosceles triangle. Its base angles are equal
  (Euclid I.5), and the triangles are then congruent by AAS. Hilbert's axioms suffice
  for this.
- **`sim` (AA similarity).** It comes from the theory of proportion and the intercept
  theorem (Euclid VI.2–4, or Hilbert's segment arithmetic), with no Pythagoras. In
  Birkhoff's system it is a postulate.
- **`rect`.** Uses the parallel postulate and congruence only.
- **`incircle` and `excircle`.** Concurrency of internal and external angle bisectors,
  together with the feet of perpendiculars. This is neutral geometry.
- **The ruler and protractor axioms.** Birkhoff's postulates.

## 9. If C1 turns out to be known: new directions

- **C2**, the power of the incentre: the most unusual figure we found. It is worth
  writing up even as a variant.
- Extending the "tritangent squares" idea. In a right triangle *all four* tritangent
  circles form squares at $C$. Each of the six collinearities among $A$, $B$, $I$,
  $I_a$, $I_b$, $I_c$ gives the identity. One could also look for a proof that uses only
  the $B$- and $C$-excircles, which are related by the negative homothety at $A$.
- Untouched gaps: circle inversion, Menelaus or Ceva as the main engine, and an honest
  probabilistic proof (one that does not secretly reduce to A1).
