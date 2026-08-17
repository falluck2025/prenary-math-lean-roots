# 偏元数学根基 · Lean 4 形式化验证
### Prenary Mathematics Foundations · Lean 4 Formal Verification

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.21931349.svg)](https://doi.org/10.5281/zenodo.21931349)

## 概述

偏元数学的根基——虚数单位、归一化约束、以及"偏元运算在 ε→0 时退化为经典数学"——在 Lean 4 中完成形式化验证。**5 个定理全部通过内核证明与 Comparator 独立二次验证**，从机器层面证明：**偏元数学不是推翻经典数学，而是严格包含经典数学（ε→0 即退化）。**

## 定理清单

| 定理 | 命题 | 结果 |
|:--|:--|:--|
| `prenary_i_square` | 虚数 i = π/2 旋转操作符，满足 i² = -1 | ✅ |
| `prenary_normalization` | 归一化约束平衡点：1/2 + 1/2 = 1 | ✅ |
| `prenary_eq_degenerate_eq` | 偏元等号 ≜ 在 ε→0 退化为经典等号 =（正向）| ✅ |
| `prenary_eq_degenerate_ne` | 偏元等号 ≜ 在 ε→0 退化为经典等号 =（反向）| ✅ |
| `prenary_sub_degenerate` | 偏元减法在 ε→0 退化为经典减法 | ✅ |

## 验证记录

| 项 | 值 |
|:--|:--|
| 平台 | live.lean-lang.org · Lean 4.34.0-rc1 + Mathlib |
| 内核 | No goals（5 定理全部通过）|
| Comparator | Successfully validated（独立二次验证）|
| Challenge Hash | `a52fed3da6d707cb2646afcfe0f65732912ad45ee6cc7c32c7c72c7f447acd51` |
| 本地 SHA256 | `a52fed3da6d707cb2646afcfe0f65732912ad45ee6cc7c32c7c72c7f447acd51`（双哈希一致）|
| 验证时间 | 2026-08-14 |
| DOI | `10.5281/zenodo.21931349` |

## 文件说明

- `prenary_roots_theorems_20260814.lean` — Lean 4 形式化代码
- `evidence/` — 内核 No goals、Comparator 验证截图

## 复现方式

1. 打开 https://live.lean-lang.org/
2. 粘贴 `prenary_roots_theorems_20260814.lean` 内容
3. 点 Run，每个 `theorem` 下方显示 `No goals` 即通过

## 作者

陈松（Song Chen）· ORCID: 0009-0002-9510-2239 · GitHub: [falluck2025](https://github.com/falluck2025)

## 许可

本代码与证明记录采用 [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)（署名-非商业-禁止演绎）。

---

——老陈与AI的深夜实验室 发布 请笑纳——
