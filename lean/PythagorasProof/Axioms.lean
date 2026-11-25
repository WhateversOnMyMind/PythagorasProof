/-
  A minimal, self-contained synthetic axiom system (Birkhoff-style) for the
  plane, sufficient for the incircle–excircle homothety proof of Pythagoras.

  Primitives:
  * `dist A B : ℝ`        — length of segment AB (no distance *formula*);
  * `Bet A B C : Prop`    — B lies strictly between A and C;
  * `ang A B C : ℝ`       — measure, in degrees, of the (unsigned) angle ABC.

  Junk convention used by the intended model: `ang A B C = 0` whenever
  `A = B` or `C = B`. Under it `ang A B C = 90` already forces `A ≠ B` and `C ≠ B`.

  Intended model: the Euclidean plane ℝ² with Euclidean distance and unsigned
  angle measure. Each axiom is a textbook theorem of plane geometry that does
  NOT depend on the Pythagorean theorem. The justifications are in
  REPORT.md §7, and `model_check.py` tests every axiom numerically in ℝ².

  Nothing about inner products, norms, coordinates, the distance formula,
  trigonometric identities or the law of cosines appears here.
-/
import Mathlib.Basic.Real.Basic

namespace Synthetic

class Plane (P : Type*) where
  dist : P → P → ℝ
  Bet : P → P → P → Prop
  ang : P → P → P → ℝ
  /-- Segments are unoriented. -/
  dist_comm : ∀ A B : P, dist A B = dist B A
  /-- Betweenness is symmetric. -/
  bet_symm : ∀ {A B C : P}, Bet A B C → Bet C B A
  /-- Strict betweenness: the three points are distinct. -/
  bet_ne : ∀ {A B C : P}, Bet A B C → A ≠ B ∧ B ≠ C ∧ A ≠ C
  /-- Segment addition (ruler postulate). -/
  bet_add : ∀ {A B C : P}, Bet A B C → dist A B + dist B C = dist A C
  /-- Angles are unoriented. -/
  ang_comm : ∀ A B C : P, ang A B C = ang C B A
  /-- An angle depends only on its rays: if X lies between B and Y, then rays
      BX and BY coincide. -/
  ang_ray : ∀ {A B X Y : P}, Bet B X Y → ang A B X = ang A B Y
  /-- Angle addition (protractor postulate) for a point X of segment BC seen
      from a vertex A. -/
  ang_add : ∀ {A B X C : P}, Bet B X C → A ≠ B → A ≠ C → A ≠ X →
    ang B A X + ang X A C = ang B A C
  /-- Linear pair: supplementary adjacent angles. -/
  ang_linear : ∀ {A C E X : P}, Bet A C E → X ≠ C → ang A C X + ang X C E = 180
  /-- HL congruence of right triangles: right angles at E and E', equal
      hypotenuses AI = A'I' and equal legs EI = E'I'. -/
  hl : ∀ {A E I A' E' I' : P}, ang A E I = 90 → ang A' E' I' = 90 →
    dist A I = dist A' I' → dist E I = dist E' I' →
    dist A E = dist A' E' ∧ ang E A I = ang E' A' I'
  /-- A quadrilateral C-E-I-D with right angles at C, E and D has
      EI = CD (opposite sides of a rectangle). -/
  rect : ∀ {C E D I : P}, ang E C D = 90 → ang C E I = 90 → ang C D I = 90 →
    dist E I = dist C D
  /-- AA similarity of right triangles: right angles at E and E', equal
      angles at A and A', so EI : AE = E'I' : A'E'. -/
  sim : ∀ {A E I A' E' I' : P}, ang A E I = 90 → ang A' E' I' = 90 →
    ang E A I = ang E' A' I' → dist E I * dist A' E' = dist E' I' * dist A E
  /-- Existence of the incircle (centre `I`, touching BC, CA, AB at D, E, F)
      of a triangle right-angled at C. The ray AI meets segment BC at `X`. -/
  incircle : ∀ {A B C : P}, ang A C B = 90 →
    ∃ I D E F X : P, Bet B D C ∧ Bet C E A ∧ Bet A F B ∧
      ang I D B = 90 ∧ ang I D C = 90 ∧ ang I E C = 90 ∧ ang I E A = 90 ∧
      ang I F A = 90 ∧ ang I F B = 90 ∧
      dist I D = dist I E ∧ dist I E = dist I F ∧ Bet B X C ∧ Bet A I X
  /-- Existence of the A-excircle (centre `J`), which touches segment BC at D',
      line CA beyond C at E', and line AB beyond B at F'. Segment AJ meets
      segment BC at `X`. -/
  excircle : ∀ {A B C : P}, ang A C B = 90 →
    ∃ J D' E' F' X : P, Bet B D' C ∧ Bet A C E' ∧ Bet A B F' ∧
      ang J D' B = 90 ∧ ang J D' C = 90 ∧ ang J E' C = 90 ∧ ang J E' A = 90 ∧
      ang J F' A = 90 ∧ ang J F' B = 90 ∧
      dist J D' = dist J E' ∧ dist J E' = dist J F' ∧ Bet B X C ∧ Bet A X J

end Synthetic
