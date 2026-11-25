import Mathlib.Data.Real.Basic
import Mathlib.Tactic

example (a b c : ℝ) (h : (( a+b+c)/2 - a) * ((a+b+c)/2 - b) = ((a+b+c)/2) * ((a+b+c)/2 - c)) :
    a^2 + b^2 = c^2 := by nlinarith [h]
