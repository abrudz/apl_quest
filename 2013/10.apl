M←3 3⍴4 1 3 2 2 2 6 3 1
r←2 6 4
v←¯1 3 1

⍝ Primitive APL solutions:
v ≡ r +.×⍣¯1⍨ 
v ≡ r +.×⍨∘⌹ M
v ≡ r ⌹ M

⍝ https://codegolf.stackexchange.com/a/213953
⍝ Hotelling-Bodewig scheme:
⍝ Vᵢ₊₁ = Vᵢ(2I−AVᵢ)
⍝ Vᵢ₊₁ = 2Vᵢ−VᵢAVᵢ
⍝ Vᵢ₊₁ = Vᵢ+Vᵢ−VᵢAVᵢ
⍝ Vi+Vi-Vi+.×A+.×Vi
⍝ A(⊢+⊢-⊢+.×+.×)Vi
⍝ ⊢(⊢+⊢-⊢+.×+.×)⍣≡

⍝ http://dx.doi.org/10.7494/OpMath.2013.33.2.337
⍝ Soleymani V₀:
⍝ Mᵀ÷tr(MMᵀ)
+/1 1⍉+.×∘⍉⍨M ⍝ tr(MMᵀ)
1 1⍉{⍺'+'⍵}.{⍺'×'⍵}∘⍉⍨3 3⍴⍳9
+/×⍨,M
+.×⍨,M
(,+.×,)M
(⍉÷,+.×,)M

⍝ Hotelling-Bodewig + Soleymani:
(⊢(⊢+⊢-⊢+.×+.×)⍣≡⍉÷,+.×,)M              ⍝ ⌹M
r(+.×⍨∘⊢(⊢+⊢-⊢+.×+.×)⍣≡⍉÷,+.×,)M        ⍝ v⌹M
{r+.×⍨∘(⊢(⊢+⊢-⊢+.×+.×)⍣⍵⍉÷,+.×,)M}⍤0⍳11 ⍝ show steps

⍝ Adapted from https://dfns.dyalog.com/n_gauss_jordan.htm
GaussJordan←{⎕IO ⎕ML←0 1               ⍝ Gauss-Jordan elimination
    Elim←{                            ⍝ elimination of row/col ⍺
        p←⍺+{⍵⍳⌈/⍵}|⍺↓⍵[;⍺]           ⍝ index of pivot row
        swap←⊖@⍺ p⊢⍵                  ⍝ swap ⍺th and pth rows
        mat←swap[⍺;⍺]÷⍨@⍺⊢swap        ⍝ col diag red to 1
        mat-(mat[;⍺]×⍺≠⍳≢⍵)∘.×mat[⍺;] ⍝ col off-diag red to 0
    }
    (⍴⍺)⍴(0 1×⍴⍵)↓↑Elim/(⌽⍳⌊/⍴⍵),⊂⍵,⍺ ⍝ Elim/ … 2 1 0 (⍵,⍺)
}
r GaussJordan M

⍝ Adapted from https://www.jsoftware.com/papers/APL360TerminalSystem1.htm#fig4
    ∇  b←rec a;p;k;i;j;s
[1]    →3×⍳(2=⍴⍴a)∧=/⍴a
[2]    →0=⍴⎕←'no inverse found'
[3]    p←⍳k←s←1⍴⍴a
[4]    a←((s⍴1),0)\a
[5]    a[;s+1]←s A 1
[6]    i←j⍳⌈/j←|a[⍳k;1]
[7]    p[1,i]←p[i,1]
[8]    a[1,i;⍳s]←a[i,1;⍳s]
[9]    →2×⍳1E¯30>|a[1;1]÷⌈/|,a
[10]   a[1;]←a[1;]÷a[1;1]
[11]   a←a-((~s A 1)×a[;1])∘.×a[1;]
[12]   a←1⌽[1]1⌽a
[13]   p←1⌽p
[14]   →5×⍳0<k←k-1
[15]   b←a[;p⍳⍳s]
    ∇
A←{⍺↑⍵⍴1}
r +.×⍨rec M
