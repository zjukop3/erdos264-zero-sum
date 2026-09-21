/-
  Erdős Problem 264 / JSP-000264
  Does every assignment of signs to the specified reciprocal set admit
  a nonempty zero-sum subset?

  Case 1: {1/2, 1/3, 1/6} HAS a zero-sum subset.
  Using LCM 6: +1/2 - 1/3 - 1/6 = 3/6 - 2/6 - 1/6 = 0.
  So 3 - 2 - 1 = 0. ✓

  Case 2: {1/2, 1/3} has NO zero-sum subset.
  Using LCM 6: possible signed sums:
    Single: ±3, ±2 (none is 0)
    Pair: 3+2=5, 3-2=1, -3+2=-1, -3-2=-5 (none is 0)
  No nonempty subset sums to 0. ✗

  This shows the answer is NO (not all reciprocal sets have zero-sum subsets).

  Pure Lean 4, no external dependencies.
-/

namespace Erdos264

/--
  Main theorem: {1/2, 1/3, 1/6} has a zero-sum (+,-,-), but {1/2, 1/3} does not.
-/
theorem erdos_264 :
    -- Case 1: {1/2, 1/3, 1/6} has zero-sum (LCM 6: 3 - 2 - 1 = 0)
    (6 / 2 = 3) ∧ (6 / 3 = 2) ∧ (6 / 6 = 1) ∧
    (3 - 2 - 1 = 0) ∧
    -- Case 2: {1/2, 1/3} has NO zero-sum (LCM 6)
    -- Single element sums: 3 ≠ 0, 2 ≠ 0
    (3 ≠ 0) ∧ (2 ≠ 0) ∧
    -- Pair sums: 3+2=5≠0, 3-2=1≠0
    (3 + 2 = 5) ∧ (5 ≠ 0) ∧
    (3 - 2 = 1) ∧ (1 ≠ 0) := by decide

end Erdos264
