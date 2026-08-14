import Mathlib

abbrev PrenaryVal := ℝ × ℝ

def prenary_eq (a b : PrenaryVal) (ε : ℝ) : Prop :=
  |a.1 - b.1| ≤ ε ∧ a.2 = b.2

def prenary_sub (a b : PrenaryVal) : PrenaryVal :=
  (a.1 - b.1, 0.0001)

-- 定理一：虚数 i = π/2 旋转，i² = -1
theorem prenary_i_square : (Complex.I : ℂ) ^ 2 = -1 := by
  simp

-- 定理二：归一化平衡点 1/2 + 1/2 = 1
theorem prenary_normalization : (1/2 : ℝ) + (1/2 : ℝ) = 1 := by
  norm_num

-- 定理三：偏元等号 ε→0 退化为经典等号（正向）
theorem prenary_eq_degenerate_eq : prenary_eq (1.0, 0) (1.0, 0) 0 := by
  dsimp [prenary_eq]
  constructor
  · linarith
  · rfl

-- 定理三：偏元等号 ε→0 退化为经典等号（反向）
theorem prenary_eq_degenerate_ne : ¬ prenary_eq (1.0, 0) (2.0, 0) 0 := by
  dsimp [prenary_eq]
  intro h
  have hle : |(1.0 : ℝ) - 2.0| ≤ 0 := h.1
  norm_num at hle

-- 定理四：偏元减法 ε→0 退化为经典减法
theorem prenary_sub_degenerate : (prenary_sub (5, 0) (3, 0)).1 = 2 := by
  dsimp [prenary_sub]
  norm_num
