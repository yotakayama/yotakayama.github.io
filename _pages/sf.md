# Notation migration — paragraph-by-paragraph

**Convention adopted (final):**
- `e` = low-level CT tracking-error **vector**; components stay **`e_1, e_2`** (App. C convention, kept).
- `\hat z` = untracked high-level state components (R^{n-q}) — unchanged.
- `\tilde w` (`w̃`) = high-level **one-step** mismatch (eq. 8) — unchanged.
- `\eta_{k+j}` = high-level **accumulated j-step** prediction error (new; was `e_{k+j}`).
- Unhatted `z` is **eliminated** everywhere (was used loosely for the error state and for `z_peak`).

Tags: **[auto]** = handled by `rename_notation.py`; **[manual]** = edit by hand.

---

## Section 1 — Notation paragraph (p.3)  [manual, additive]
Append one declarative sentence:
> Throughout, `e` denotes the low-level continuous-time tracking-error vector with
> components `e = [e_1, e_2]^\top` (e_1 the regulated error, e_2 its rate); `\hat z`
> the untracked high-level state components; `\tilde w` the high-level one-step
> mismatch (8); and `\eta_{k+j}` the accumulated j-step prediction error used for
> constraint tightening.

## Section 4.1 — paragraph after eq. (63g) (p.11–12)  [auto]
"...absorb the worst-case prediction error **`e_{k+j}` := y_{k+j} − ŷ_{k+j|k}**..."
→ **`\eta_{k+j}` := y_{k+j} − ŷ_{k+j|k}**. Open-loop tightening line `δ(j)=jεE`
unchanged (now reads as bound on `\eta`). If Cor. 3 / its proof references `e_{k+j}`,
same swap. (Verify no other `e_{k+j}` exists; it shouldn't — low-level error is `e(t)`.)

## Section 5.2 — eq. (69) (p.12)  [manual, additive]
Keep the vector `e`. Add the component declaration inline:
`e(t) =: [e_1, e_2]^\top = [V_gr − v, \dot V_gr − \dot v]^\top` (so e_2 = \dot e_1).
This is the single anchor that makes App. B's `e_1, e_2` well-defined.

## Appendix B (p.17–18)  [manual — flagged by the script]
Bare scalar `e`/`\dot e` → `e_1`/`e_2`:
- "Substituting `V_gr = e + v`" → `V_gr = e_1 + v`.
- (B.1) `−e ≤ v − Vmin` → `−e_1 ≤ v − Vmin`.
- (B.2) `e ≤ Vmax − v` → `e_1 ≤ Vmax − v`.
- (B.3) `I_S = C_bus(\dot e + \dot v) − d̄` → `(e_2 + \dot v)`.
- (B.5)–(B.7) `|C_bus \dot e|` → `|C_bus e_2|`.
- (B.8)–(B.9) `C_bus \dot e ≤ …` → `C_bus e_2 ≤ …`.
- (B.10) `u_S = −C_bus k_1 e − k_2 C_bus(\dot e + \dot v) − …` → `e_1`, `e_2`.
- (B.11)–(B.13) `\tilde k_1 e + \tilde k_2 \dot e` → `\tilde k_1 e_1 + \tilde k_2 e_2`.

## Appendix C (p.17–19)  [no change]
Already uses `e_1, e_2` and `ε_1, ε_2`. Leave as-is — these are the canonical
component symbols the rest of the paper now points to. (Confirm the prose "bounds
on |e_1|,|e_2|" stays.)

## Eq. (53), Fig. 4 main text (p.10), Proposition 2  [auto]
`z_peak` → `e_{peak}`:
- "peak error `z_peak := m e^{−λeτ1}(r̄+ε)+γISS(Hmax+M)`" → `e_{peak}`.
- τ2 term `(1/λe) ln(m z_peak/(δε))` → `m e_{peak}`.

## Appendix E — Proof of Prop. 2 (p.19–20)  [auto]
(E.3),(E.4),(E.5): every `z_peak` → `e_{peak}`. (`\|e(t)\|`, `e(t_k)` already use `e`.)

## Appendix D.0.1 (p.19)  [auto]
- "Parametrizing `z = a[cosθ,sinθ]^\top`" → `e = a[…]`.
- "initial condition `z(0)=[3,0]^\top`" → `e(0)=[3,0]^\top`.
- `b=[cosθ,sinθ]`, a(θ), (D.2),(D.3) unchanged (b is a direction, not the state).

## Fig. D.1 caption + legend (p.19)  [auto for caption tokens; manual for the plot]
- Caption: "converges from `z(0)=[3,0]^\top` into Ω_h … worst-case point `z^*`"
  → `e(0)`, `e^*`. Axis labels "Voltage error e / Rate error ė" already correct.
- Plot legend marker `z^*` → `e^*` (regenerate figure; the corrected sim script
  already emits `e(0)`, `e^*`).

## Fig. D.2 (p.20)  [auto for caption; manual for the plot]
- y-axis label `\|z(t)\|` → `\|e(t)\|` (caption already says "error norm \|e(t)\|").
- Regenerate from the corrected sim script.

## Fig. 5(b) legend (p.15)  [manual — plot]
- Legend entry "MPC z_3" → "MPC `\hat z_3`" (it is the untracked predicted component,
  so it joins the `\hat z` family, not the error `e`).

---

## Run order
1. `python rename_notation.py paper.tex`  — review the diff + the App. B flag list.
2. `python rename_notation.py paper.tex --write`  — apply [auto] edits (.bak kept).
3. Hand-edit the [manual] items above (Notation sentence, eq. 69 declaration,
   App. B `e→e_1`/`ė→e_2`, Fig. 5b legend).
4. Regenerate Figs. D.1, D.2 from the corrected simulation script.
5. Grep guard: `grep -nE '(^|[^a-zA-Z\\])z[^a-zA-Z]' paper.tex` should return only
   `\hat z` matches; any bare `z` left is a missed error-state token.