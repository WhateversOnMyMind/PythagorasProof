# Candidates

Notation: right angle at $C$; $a=BC$, $b=CA$, $c=AB$; $s=\frac{a+b+c}2$.
The incircle (centre $I$, radius $r$) touches $BC, CA, AB$ at $D, E, F$.
The $A$-excircle (centre $I_a$, radius $r_a$) touches line $BC$ at $D'$, line $CA$ at $E'$
and line $AB$ at $F'$. The hypotenuse tangent segments are $x=AF=s-a$ and $y=BF=s-b$.
$\Gamma$ is the circle on diameter $AB$, with centre $O$.

Two facts recur. They use only congruence and are therefore allowed:

- **(T) Equal tangents.** $AE=AF=s-a$, $BD=BF=s-b$, $CD=CE=s-c$. For the
  $A$-excircle: $AE'=AF'=s$, $CE'=CD'=s-b$, $BD'=BF'=s-c$.
  Each pair of tangents is equal because the two right triangles are congruent (HL);
  the explicit values follow by adding segments.
- **(Q) The right angle makes squares.** $CEID$ has right angles at $C$, $E$ and $D$,
  and $CE=CD$, so it is a square and $r=s-c$. The quadrilateral $CD'I_aE'$ has right
  angles at $D'$ and $E'$, and at $C$ (the angle between ray $CB$ and the ray opposite
  $CA$), and $CD'=CE'$, so it is a square and $r_a=s-b$.

Throughout we use the purely algebraic equivalence (★):
$$(s-a)(s-b)=s(s-c)\iff xy=r(x+y+r)\iff 2ab=(a+b)^2-c^2\iff a^2+b^2=c^2,$$
where $a=y+r$, $b=x+r$, $c=x+y$.

---

## Round 1 (stage 1 ideation, stage 2 circularity audit)

### C1. Incircle–excircle homothety at $A$
- **Gap targeted:** excircles used with similarity instead of area or Heron.
- **Proof:** $I$ and $I_a$ both lie on the bisector of angle $A$. The right triangles
  $AEI$ and $AE'I_a$ (right angles at $E$ and $E'$) share the angle $\frac A2$, so they
  are similar, which gives $\frac{EI}{AE}=\frac{E'I_a}{AE'}$. By (T) and (Q) this reads
  $\frac{s-c}{s-a}=\frac{s-b}{s}$. Cross-multiplying gives (★).
- **Lemmas:** (T), equal-tangent congruence (HL); (Q), rectangle with equal adjacent
  sides; the incircle and excircle exist (concurrency of bisectors); AA similarity of
  right triangles; segment addition.
- **Audit:** PASS. No distance formula, area, trigonometric identity, norm or law of
  cosines is used.

### C2. Power of the incentre with respect to the Thales circle
- **Gap targeted:** power of a point taken at the incentre, which no known proof uses.
- **Proof:** $C\in\Gamma$ (Thales). Compute the power of $I$ along two chords.
  1. **Chord $\ell_1$:** the line $IE$, which is perpendicular to $CA$. $E$ lies on chord
     $CA$, so $EV\cdot EV'=EC\cdot EA=rx$ (intersecting chords). The midpoint $N$ of
     $VV'$ is the foot of the perpendicular from $O$, and $EN=\frac a2$ (midline
     theorem). Since $IE=r$:
     $$IV\cdot IV'=(EV-r)(EV'+r)=rx+r(EV-EV')-r^2=rx+ra-r^2=rc.$$
  2. **Chord $\ell_2$:** the line $IF$, which is perpendicular to the diameter $AB$, so
     $FU=FU'$, and $FU^2=FA\cdot FB=xy$. Since $IF=r$:
     $$IU\cdot IU'=(FU-r)(FU+r)=xy-r^2.$$
  3. By intersecting chords at $I$, $rc=xy-r^2$, which is (★).
- **Lemmas:** Thales' converse; intersecting chords (three times); a diameter
  perpendicular to a chord bisects it, and the perpendicular from the centre bisects a
  chord (congruence); midline theorem; (T); (Q).
- **Audit:** PASS. "Power of a point" is used only as the equality of chord products,
  never as $d^2-R^2$.

### C3. Inscribed square on the hypotenuse
- **Gap targeted:** similar triangles produced by an inscribed square instead of the
  altitude.
- **Proof:** Let the square $PQTS$ have $S,T$ on $AB$, $P$ on $CA$ and $Q$ on $CB$, with
  side $t$. The three corner triangles $CPQ$, $ASP$ and $BTQ$ are each similar to $ABC$
  (by AA, using parallels and right angles).
  - Along $AB$: $\frac{bt}a+t+\frac{at}b=c$.
  - Along $CA$: $\frac{bt}c+\frac{ct}a=b$.
  - Eliminating $t$ gives $c^2+ab=a^2+ab+b^2$.
- **Lemmas:** existence of the inscribed square; AA similarity; segment addition.
- **Audit:** PASS.
- **Warning for stage 4:** the same argument with a rectangle in place of the square is
  a one-parameter family, and its degenerate member (zero width) is exactly the
  altitude proof A1.

### C4. Pitot's theorem on a tangential right trapezoid
- **Gap targeted:** Pitot's theorem, not found in the taxonomy.
- **Proof:** The tangent to the incircle parallel to $CA$, the one at distance $2r$
  from $CA$, meets $CB$ at $Q$ with $CQ=2r$ and meets $AB$ at $P$. The quadrilateral $CAPQ$ is tangential.
  - Pitot: $CA+PQ=AP+QC$.
  - Triangle $BQP\sim BCA$ with ratio $\frac{a-2r}a$, so $PQ=\frac{b(a-2r)}a$ and
    $AP=\frac{2rc}a$.
  - Substituting gives $ab=r(a+b+c)$, that is $\frac12ab=rs$ **without using area**.
  - With $r=s-c$ this is (★).
- **Lemmas:** Pitot's theorem (from (T)); AA similarity; (Q).
- **Audit:** PASS.

### C5. Harmonic division of the bisector by $I$ and $I_a$
- **Gap targeted:** projective (harmonic) division.
- **Proof:** Let $AP$ be the bisector from $A$, with $P$ on $BC$. In triangle $ABP$, $BI$
  and $BI_a$ are the internal and external bisectors at $B$. By the angle-bisector
  theorem applied twice, $\frac{AI}{IP}=\frac{AB}{BP}=\frac{AI_a}{I_aP}$, so
  $(A,P;I,I_a)$ is harmonic. Project parallel to $CB$ onto line $CA$; this preserves
  ratios (intercept theorem). The images are $A\mapsto b$, $P\mapsto 0$, $I\mapsto r$
  and $I_a\mapsto -r_a$, by (Q). Harmonicity then reads $\frac{b-r}{r}=\frac{b+r_a}{r_a}$,
  so $b(r_a-r)=2rr_a$, which is (★) after substituting (Q).
- **Lemmas:** internal and external angle-bisector theorems; intercept theorem; (T); (Q).
- **Audit:** PASS.

### C6. Radical axis of the incircle and the $A$-excircle
- **Gap targeted:** radical axes, through midpoints of common tangents.
- **Proof:** The radical axis bisects every common tangent segment. On $BC$ it passes
  through the midpoint $M_a$ of $DD'$, which is the midpoint of $BC$. On $CA$ it passes
  through the midpoint of $EE'$, at distance $\frac{b+c}2$ from $A$, that is at distance
  $\frac{c-b}2$ beyond $C$. It is perpendicular to the line of centres $AI$. The right
  triangle formed with $C$ (legs $\frac{c-b}2$ and $\frac a2$) is similar to triangle
  $ACP$ (legs $b$ and $CP=\frac{ab}{b+c}$, by the bisector theorem), so
  $\frac{c-b}{a}=\frac{a}{b+c}$.
- **Lemmas:** the radical axis exists and is perpendicular to the line of centres, and
  midpoints of common tangents lie on it. **The standard proof of this uses
  $\mathrm{pow}(X)=XO^2-R^2$, or equal tangent lengths $XT^2$ = power, and the existence
  of the radical axis as a line needs $d^2-R^2$ (Pythagoras).**
- **Audit:** FAIL as stated, REJECTED-CIRCULAR. A non-circular variant would assert only
  "the line through the two midpoints" and then prove its perpendicularity to $AI$
  separately, but that perpendicularity is the radical-axis content. Rejected.

### C7. Averaging squared projections over all directions
- **Gap targeted:** measure, averaging and integral-geometry arguments.
- **Proof:** For a segment of length $L$ at angle $\varphi$, its signed projection on
  direction $\theta$ is $L f(\theta-\varphi)$ (similarity). By vector additivity,
  $\mathrm{proj}(AB)=\mathrm{proj}(AC)+\mathrm{proj}(CB)$. Square this and average over
  $\theta$ with the uniform angular measure. The cross term vanishes, because a
  reflection symmetry makes its integrand odd. This leaves $\kappa c^2=\kappa a^2+\kappa b^2$.
- **Audit:** non-circular, but **REJECTED-WRAPPER**. Evaluating the same projection
  identity at the single direction $\theta=\varphi_{AB}$ gives $c=\frac{b^2}{c}+\frac{a^2}{c}$,
  which is the altitude proof A1/A4. The averaging is decoration on A1.

### C8. Inradii of the altitude sub-triangles: $r+r_1+r_2=h$
- **Gap targeted:** tangent lengths in the altitude figure.
- **Proof:** Let $r_1, r_2$ be the inradii of $ACH$ and $BCH$. Applying (Q) to each right
  triangle gives $r+r_1+r_2=h$ (the $p$ and $q$ terms cancel because $p+q=c$). By
  similarity, $r_1=\frac{rb}c$ and $r_2=\frac{ra}c$, and $h=\frac{ab}c$. Hence
  $r(a+b+c)=ab$, which is (★).
- **Lemmas:** (T); (Q) three times; AA similarity (altitude); segment addition.
- **Audit:** PASS. Note for stage 4: it uses the altitude similar triangles.

### C9. $A$-excircle area decomposition
- **Gap targeted:** excircles with area, as a counterpart of E1.
- **Proof:** $[ABC]=[I_aAB]+[I_aAC]-[I_aBC]=\frac{r_a}{2}(c+b-a)=r_a(s-a)$. With
  $r_a=s-b$ from (Q), the area is $(s-a)(s-b)=\frac12ab$, which is (★).
- **Lemmas:** area additivity; area of a triangle $=\frac12$ base × height; (T); (Q).
- **Audit:** PASS.

Going to stage 3 (search): C1, C2, C3, C4, C5, C8, C9.
Rejected at stage 2: C6 (circular), C7 (wrapper).

---

## Stage 4: equivalence check and ratings (round 1)

Evidence comes from `research/stage3/*.md`, summarised in SEARCH_LOG.md. In all seven
sources, no item is the SAME as any candidate. The verdicts below therefore turn on
whether a candidate *reduces* to a known proof.

Key prior art found:

- **Y&C XXVI** (Amer. Math. Monthly 4(1), 1897, p. 11; credited to Olney §971). It
  derives exactly $(s-a)(s-b)=s(s-c)$ in side form from the harmonic division of line
  $AB$ by the diameters of the two orthogonal circles centred at $A$ and $B$ through $C$.
  So **the target identity of C1, C2 and C5 is old**, and so is a harmonic-division route
  to it. The harmonic fact for orthogonal circles is itself power of a point at a vertex
  (B2).
- **Pestich** (CTK Exchange thread 694, 2006, forum post): a circle through $A$, $I$, $B$
  and intersecting chords give $r\,r_c=(s-a)(s-b)$, then area $=r\,r_c$ is set against
  $\frac12ab$. Same identity, different circle, and the finish uses area.
- **Y&C XCVII** (Amer. Math. Monthly 6(3), 1899): the $C$-excircle with the square $s\times s$ at
  $C$, then an area decomposition.
- **E1, the incircle with area** (Bauer 1891 per Loomis Fig. 84; Sawyer 1901; Oliver 1997,
  CTK#42; Rigby; Dulio–Laeng 2019): $r=s-c$ and $rs=\frac12ab$.
- **Heron's formula via excircles** (classical): its first step is the incircle–excircle
  homothety $r/(s-a)=r_a/s$ in a *general* triangle. It reaches Pythagoras (CTK#23)
  only through Heron's formula plus area.
- **Half-angle tangent proofs (A5)**: CTK#53, #82; Kise et al. 2025 proof 2, which uses
  $\tan\frac A2=\frac a{b+c}=\frac{c-b}a$.
- **r + r1 + r2 = h**: a sangaku (Fukagawa–Pedoe), proved *using* Pythagoras on
  cut-the-knot ("Three incircles in a right triangle"). The page calls it the converse of
  a Pythagoras proof.

| Cand. | Rating | Justification |
|---|---|---|
| **C1** incircle–excircle homothety | **NEW** (moderate confidence) | No source proves Pythagoras from the homothety. Nor does any source use the observation that the right angle makes *both* $CEID$ and $CD'I_aE'$ squares. Reduction tests: (i) Heron's excircle proof contains the homothety, but needs a second similarity, $rr_a=(s-b)(s-c)$, plus area plus Heron's formula; C1 replaces all three with (Q). C1 is therefore not "Heron + trivial steps"; it is a strict shortcut that avoids area completely. (ii) Against A5: both compute $\tan\frac A2$ twice. A5 uses the bisector foot together with the isosceles extension ($\frac a{b+c}$ and $\frac{c-b}a$); C1 uses the tritangent circles ($\frac{s-c}{s-a}$ and $\frac{s-b}{s}$). The two ratios of one proof cannot be obtained from those of the other by a trivial step; they are related only by the mediant rule. (iii) Against Y&C XXVI and Pestich: the conclusion is the same, the mechanism is different (vertex circles or the circle $AIB$ with intersecting chords, versus a homothety of tangent circles). Risk: the figure is classical, so a Gazette or Forum Geometricorum note may exist. Gazette 74.31 (Okumura, "Incircles and excircles of right-angled triangles") could not be read and is the main residual risk. |
| **C2** power of the incentre | **NEW** (low–moderate confidence) | Not found. It is in mechanism class B3, intersecting chords in the Thales circle. Reduction test: the same two-chord computation at the centre $O$ instead of $I$ gives the short and probably known proof "chord through the midpoint of a leg", $(R-\frac a2)(R+\frac a2)=(\frac b2)^2$. Moving the point from $O$ to $I$ is the kind of pivot-shift the brief warns about. However, the $I$ version needs a genuinely new third chord, $FU^2=xy$, and the tangent lengths, so it is not $O$-version + trivial steps. Its use of the incentre's power is new; the class is crowded. |
| C3 inscribed square on the hypotenuse | LIKELY KNOWN | Not found as such, but it is a deformation of A1. Replacing the square by an inscribed rectangle gives a one-parameter family whose zero-width member is the altitude proof. This is exactly the pivot-shift pattern. |
| C4 Pitot trapezoid | LIKELY KNOWN | No Pitot proof was found, but the quadratic content is the similarity $BQP\sim BCA$, used only to replace the area step of E1 ($rs=\frac12ab$). From there it is identical to E1, a 130-year-old proof. |
| C5 harmonic division | LIKELY KNOWN | The harmonic-division route to the same identity exists (Y&C XXVI, 1897), and "Pythagoras by the Cross Ratio" (Conley–Jaroma, CMJ 2006) could not be read. C5 is also C1's collinearity restated, so it is not a separate mechanism. |
| C8 $r+r_1+r_2=h$ | KNOWN | The identity is known, and its role as the converse of a Pythagoras proof is noted on cut-the-knot. It uses the altitude similarities (A1) and ends in E1's identity. |
| C9 $A$-excircle area | KNOWN | This is E1 with the excircle area formula $\Delta=r_a(s-a)$ in place of $\Delta=rs$; Y&C XCVII already does the same with the $C$-excircle. Trivial variant. |

**Outcome of round 1:** two candidates are rated NEW, so no further round is required
(stage 5). C1 is selected for stage 6. It has the highest confidence and the fewest
lemmas, it is entirely area-free, and it has the cleanest reduction analysis. C2 is the
runner-up.

### Stage 4 addendum (after the arXiv agent's late report)

- **C1 against CTK #82** (Yanney–Calderhead, Amer. Math. Monthly 3, 1896; re-sent by Ryoo
  in 2009; Kise et al. 2025 §3 is essentially the same). In #82, $P$ is the foot of the
  $A$-bisector on $BC$. The circle centred at $P$ is tangent to $AC$ at $C$ and to $AB$ at
  $E$, with $AE=b$ and $PC=PE=x$. The bisector theorem gives $x=\frac{ab}{b+c}$. **The
  quadratic step is $\triangle BEP\sim\triangle BCA$ (common angle $B$)**, so
  $\frac{c-b}{a}=\frac{x}{b}$.
  C1 also uses a circle inscribed in angle $A$. In fact $P$'s circle, the incircle and the
  $A$-excircle are all homothetic from $A$. But **C1's quadratic step is the homothety
  between two of those circles (common angle $\frac A2$)**, and their radii are pinned down
  by the right-angle squares (Q). C1 has no counterpart of #82's angle-$B$ similarity, and
  #82 has no counterpart of (Q) for an excircle. Neither proof contains the other, and the
  two are not related by a trivial step. They do belong to the same broad
  "bisector of $A$ / $\tan\frac A2$" family (A5).
  **Revised rating for C1: NEW, low–moderate confidence. Closest prior work: CTK #82.**
- **C2 re-examined.** Its "centre version" (the same two-chord computation at $O$) is
  exactly B1 (CTK #11, perpendicular chord at a point of a diameter) applied to the
  half-size triangle $ON_bC$. So C2 is a pivot-shift, from $O$ to $I$, of a known
  mechanism. The shift is not trivial, because it needs the third chord $FU^2=xy$ and
  the tangent lengths. **Revised rating for C2: LIKELY KNOWN / borderline.**

**Selection stands: C1.**

### Stage 4 addendum 2 (after external review)

**C1 is downgraded to LIKELY KNOWN as a mechanism.** The full reasoning is in REPORT.md §5a.
1. C1's similarity $r/(s-a)=r_a/s$ is the standard first lemma of the incircle–excircle
   proof of Heron's formula. A referee can fairly call C1 "Heron's proof, specialised".
2. The identity $r\,r_c=r_a\,r_b$ for right triangles, and its equivalence to
   Pythagoras, are already in print: Price–Bernhart arXiv:math/0701554 (2007) and
   Bernhart–Price arXiv:math/0701624 (2007) §2. Both derive it from Pythagoras, not the
   other way round.
3. The sources that would decide the question are all unread and closed access: Okumura,
   Gazette 74.31 (1990); Hansen, Math. Teacher 72(6) (1979); its follow-up "A Second Look"
   (1983); and Hansen, Math. Teacher 96(5) (2003).

The best honest label for C1 is "a short route through the Heron lemma". No candidate in
this run is rated NEW any more.

---

## Round 2 (stage 5 iteration, started after the external review)

**Lessons from round 1.**
1. Every round-1 candidate ended at an identity already catalogued for right triangles:
   $(s-a)(s-b)=s(s-c)$, $r\,r_c=r_a r_b$, or $rs=\frac12ab$. Hansen, Okumura and
   Price–Bernhart have studied the in-/excircle cluster heavily, so **avoid tangent-length
   identities altogether**.
2. A candidate whose lengths are all of the form $b\cdot f(A)$ reduces to a trigonometric
   identity: half-angle, double-angle, addition. Those are families A5/F, so **avoid
   bisector and $\tan\frac A2$ figures**.
3. Moving the point in a power-of-a-point or Ptolemy computation (a "pivot shift") is
   not new.
4. **Check novelty at the level of the intermediate identity, not only the figure.**

New notation: $H$ is the foot of the altitude from $C$, with $p=AH$, $q=HB$ and $h=CH$.
$M_a$, $M_b$, $M_c$ are the midpoints of $BC$, $CA$ and $AB$.

| # | Candidate | Pre-screen (my own reduction test, done before any search) | Status |
|---|---|---|---|
| R2-1 | **Ptolemy on the nine-point circle.** For a right triangle, $C, M_b, M_c, H, M_a$ lie on the circle with diameter $CM_c$ (Thales' converse). Assume WLOG $b\ge a$, so the cyclic order is $C, M_b, M_c, H, M_a$. Ptolemy on $C M_b H M_a$ gives $hc=ab$. Ptolemy on $C M_c H M_a$ gives $bh=ap$. Ptolemy on $C M_b M_c H$ gives $ah=bq$. These use $HM_a=\frac a2$ and $HM_b=\frac b2$ (Thales in $CHB$ and $CHA$), the midlines, and $M_cH=\frac{p-q}2$. Then $c=p+q=h\frac{a^2+b^2}{ab}=\frac{a^2+b^2}{c}$. | Survives. **Warning:** its outputs $p=\frac{bh}a$ and $q=\frac{ah}b$ are exactly the altitude-similarity relations of A1, obtained here through Ptolemy instead of similarity. | → search |
| R2-2 | **Hypotenuse segments from their difference and product.** The power of $M_c$ with respect to the circle on diameter $CA$ is computed two ways: along $AB$ it is $M_cA\cdot M_cH$, and along the line through the centre $M_b$ (with $M_cM_b=\frac a2$) it is $\frac{(b-a)(b+a)}4$. This gives $c(p-q)=b^2-a^2$. Intersecting chords at $H$ in the circumcircle give $pq=h^2$, and the area or kite gives $ch=ab$. Then $(p+q)^2=(p-q)^2+4pq$ gives $c^4=(a^2+b^2)^2$. | Survives. **Warning:** the difference identity is a pivot shift of B1/B2, and $pq=h^2$ is A3. | → search |
| R2-3 | $A$-Apollonius circle. Its centre $Y$ on $BC$ is where the tangent at $A$ meets $BC$; $Y$ is the midpoint of the internal and external bisector feet, and $YC=\frac{b^2}a$. | $D'C-DC=2YC$ is $\cot\frac A2-\tan\frac A2=2\cot A$, the cotangent double-angle formula. This is F2 (Kise et al.) in disguise. | KNOWN |
| R2-4 | Brocard point. In a right triangle one Brocard circle is the circle on diameter $CB$, and another, through $C$ and $A$ and tangent to $AB$ at $A$, has diameter $AC_3$ with $C_3$ on line $BC$. | The power of $B$, $c^2=BC\cdot BC_3$, is the tangent–secant theorem in the right triangle $BAC_3$ with altitude $AC$. This is B2/A1. | KNOWN |
| R2-5 | $C$-mixtilinear incircle: Casey's theorem gives $\rho=\frac{ab}s$, and the incentre-midpoint lemma gives $\rho=2r$. | Casey's theorem is normally proved with $t^2=d^2-(r_1-r_2)^2$, which is circular. The outcome $ab=2rs$ is E1 anyway. | REJECTED-CIRCULAR |
| R2-6 | Euler line of the isosceles "doubling" triangle $ABB'$, where $B'$ is the reflection of $B$ in $AC$. | Along the axis, Euler's relation is equivalent to the orthocentre-reflection lemma, which reduces to B1: chord $BB'$ is perpendicular to the diameter $AA'$, so $a^2=b\cdot CA'$. | KNOWN |
| R2-7 | Simson line of $C'$, the reflection of $C$ in $AB$. The Simson segment on the legs has length $PC=2h$. | Its only quadratic content is a similarity that holds whether or not Pythagoras is true. It yields no proof. | FAILS |
| R2-8 | $\sqrt{bc}$-inversion at $A$, which swaps line $BC$ with the circumcircle. | It only reproduces $AB=\frac{bc}{b}$, which is Thales. No quadratic information. | FAILS |

### Round 2: stage 4 equivalence check and ratings

The search covered cut-the-knot and the web, arXiv and Crossref, and Loomis plus all of Yanney–Calderhead (the files are in `research/round2/`). **No item is SAME as either survivor.** The ratings below therefore come from reduction.

| # | Rating | Justification |
|---|---|---|
| R2-1 Ptolemy on the nine-point circle | **LIKELY KNOWN** | **Reduction.** The nine-point circle of a right triangle is the image of the circumcircle under the homothety at $C$ with ratio $\frac12$. That homothety sends $A, B, D$ (the antipode of $C$) and $C'$ (the reflection of $C$ in $AB$) to $M_b$, $M_a$, $M_c$ and $H$. So R2-1 is Ptolemy's theorem on the circumcircle applied to $\{C,A,B,D,C'\}$, scaled by $\frac12$. That makes it a pivot of B4, Ptolemy on the rectangle $ACBD$ (CTK #21, Loomis 65, Y&C XXIII). Loomis 63–68 (Halsted 1895, Runkle 1859) already use Ptolemy-type relations on the circumcircle beyond the rectangle. Its three outputs, $hc=ab$, $p=\frac{bh}a$ and $q=\frac{ah}b$, are exactly the altitude-similarity relations, so the skeleton is A1. **Unread:** Heo, "PWW: Pythagorean theorem via Ptolemy's theorem", Math. Mag. 90(3) (2017); Tran, Math. Mag. 2023. |
| R2-2 Difference and product of the hypotenuse segments | **LIKELY KNOWN** | **The difference half is a VARIANT of Krueger (1746)**, given as Loomis 72 and Y&C XXII. Krueger uses a circle centred at $C$ with radius $a$ and the power of a point, and gets exactly $c(p-q)=b^2-a^2$, also with the hypotenuse midpoint. R2-2's circle on diameter $CA$ is the image of the circle centred at $C$ with radius $b$ under the homothety at $A$ with ratio $\frac12$. **The product half**, $pq=h^2$ with $(p+q)^2$ expanded, is Hoffmann (1818), Loomis 16 and 53, Y&C X. The only new element is the elimination step $(p+q)^2=(p-q)^2+4pq$. That is a trivial recombination inside the altitude system, which Loomis notes admits unlimited eliminations. |
| R2-3 to R2-8 | KNOWN / REJECTED / FAILS | As pre-screened above. |

**Outcome of round 2: no candidate is NEW.** The main lesson is that every classical synthetic route tried so far is equivalent to A1 (altitude similarity), B1 or B2 (vertex-circle power), B4 (Ptolemy), E1 (incircle and area) or F (trigonometric identities). The equivalence is up to a homothety, a pivot shift, or relabelling an elimination. Novelty at this level of elementary geometry looks exhausted: Loomis's remark that algebraic proofs are "limitless" refers to exactly this kind of recombination.

### Final check against the paywalled sources (all six read)
- **C1:** stays **LIKELY KNOWN as a mechanism**. No source proves Pythagoras this way. However, Hansen (2003, Theorem 5 and Fig. 4) already has the figure (tritangent centres on the $45°$ lines through $C$) and the collinearity computation, run in the direction Pythagoras ⇒ collinearity. Long (1983, 18*) states the general identity $r_ar_b-rr_c=\frac{a^2+b^2-c^2}{2}$. The honest description of C1 is: *the converse of Hansen's collinearity computation, made synthetic by the Heron homothety lemma*.
- **C5:** unchanged, LIKELY KNOWN. Conley–Jaroma's cross ratio is Ptolemy on the rectangle, not this harmonic range.
- **R2-1:** unchanged, LIKELY KNOWN. Heo (2017) confirms that Ptolemy beyond the rectangle is a populated family.

**Final result: nothing NEW.** No candidate is KNOWN verbatim either. The best candidate (C1) is a short converse route through well-documented facts.
