⍝ Write an APL dfn which produces an n×n identity matrix.
=/¨⍤⍳,⍨  ⍝ equality of x and y in all indices
∘.=⍨⍳    ⍝ equality table for 1D indices

{s←⍵ ⍵⍴0 ⋄ (1 1⍉s)←1 ⋄ s}              ⍝ assign to diagonal
{1@(,⍨¨⍳⍵)⊢⍵ ⍵⍴0}                      ⍝ amend at (i,i)
⍸⍣¯1,⍨¨⍤⍳                              ⍝ 1s at (i,i)
{⎕IO←0 ⋄ d←i+⍵×i←⍳⍵ ⋄ ⍵ ⍵⍴1@d⊢0↑⍨⍵*2}  ⍝ amend at (i,i)ₙ

⍝ Industrial versions:
{⍵ ⍵⍴1,⍵↑0}    ⍝ insert 1 before n 0s
{⍵ ⍵⍴(⍵+1)↑1}  ⍝ overtake
,⍨⍴+∘1↑1⍨      ⍝ tacit form
,⍨⍴+∘1↑×       ⍝ sign gives 1 (or 0 for 0)
,⍨⍴+∘1↑≢       ⍝ tally of scalar is 1

,⍨⍴1\⍨1,-  ⍝ expand 1 into one 1 and n 0s

{⌹⍨?⍵ ⍵⍴0}  ⍝ M × I = M
⌹⍨⍤?,⍨⍴≡    ⍝ depth of simple scalar is 0

⍴∘2⊤2*⊢-⍳  ⍝ powers of two are 1 0 0 …

-⍤⍳↑⍤0≢  ⍝ suffixes of 1
↑,⍨\↑∘1  ⍝ cumulative reverse-concatenations

×⌽⍤↑⌸⍤⍳   ⍝ reversal of each index's overtake of its position
⍸⍣¯1⍤⊢⌸⍳  ⍝ Boolean vectors with 1 in each position

{4=○÷12○⍵∘.+0j1×⍵}⍳     ⍝ π÷4 = arg(a+ai)
{0=(2*÷2)||⍵∘.+0j1×⍵}⍳  ⍝ |a+ai| = 0 mod √2
