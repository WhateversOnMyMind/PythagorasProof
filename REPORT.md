# Report: the Pythagorean theorem via the incircle–excircle homothety

**Selected candidate:** C1.
**Honest novelty rating (revised after review):** LIKELY KNOWN as a mechanism. At best it
is a short route through the standard Heron lemma, not a new mechanism. The first rating
(NEW, low-to-moderate confidence) is kept in §5 for the record; §5a explains the downgrade.
**Lean status:** builds with no `sorry`, and the theorem relies only on Lean's standard
kernel axioms (§7).

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

## 6. Pipeline summary

| Stage | Output |
|---|---|
| 0 | KNOWN_PROOFS.md: 10 mechanism families, 55 sub-mechanisms, with gaps listed (raw data in `research/stage0/`) |
| 1–2 | 9 candidates (C1–C9) aimed at those gaps, with lemma lists. C6 was rejected as circular (radical axis needs $d^2-R^2$), C7 as a wrapper (averaging reduces to A1) |
| 3 | 7 parallel source searches (cut-the-knot, arXiv, Loomis, Gazette, Math. Magazine, CMJ, Monthly), each logging every query and URL |
| 4 | Ratings: C1 NEW; C2 NEW, then downgraded to borderline; C3, C4, C5 LIKELY KNOWN; C8, C9 KNOWN |
| 5 | No further round was needed, because a NEW candidate survived |
| 6–7 | C1 was selected and formalized in Lean 4 |

## 7. Lean formalization

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

## 8. If C1 turns out to be known: new directions

- **C2**, the power of the incentre: the most unusual figure we found. It is worth
  writing up even as a variant.
- Extending the "tritangent squares" idea. In a right triangle *all four* tritangent
  circles form squares at $C$. Each of the six collinearities among $A$, $B$, $I$,
  $I_a$, $I_b$, $I_c$ gives the identity. One could also look for a proof that uses only
  the $B$- and $C$-excircles, which are related by the negative homothety at $A$.
- Untouched gaps: circle inversion, Menelaus or Ceva as the main engine, and an honest
  probabilistic proof (one that does not secretly reduce to A1).
