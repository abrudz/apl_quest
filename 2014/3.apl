Rec←{⍵≤1:⍵ ⋄ +/∇¨⍵-⍳2}¨⍳  ⍝ re-computation for each

∆←{⍵,+/¯2↑⍵}  ⍝ fundamental Fibonacci function

⍝ Recursion:
Rec←{⍵≤1:⍵⍴⍵ ⋄ ∆∇⍵-1}    ⍝ result is used
TCO←{⍺≤≢⍵:⍺↑⍵ ⋄ ⍺∇∆⍵}∘1  ⍝ tail-call optimisation

⍝ Extension using power operator:
Ap2←{⍵↑∆⍣⍵⊢1 1}  ⍝ append 1 1, n times
Ap0←{1⌈∘∆⍣⍵⊢⍬}   ⍝ append n times to ⍬

⍝ Reduction as iteration:
Red←{⊃∆/⍵⍴1}       ⍝ fails on 0
Red←{⍵↑⊃∆/1⍴⍨1⌈⍵}  ⍝ fix for 0

⍝ Not using ∆:
Sum←{{1⌈2+/0 0,⍵}⍣⍵⊢⍬}          ⍝ pair-wise summation
Mul←{1 2∘⌷¨+.×\⍵⍴⊂2 2⍴0 1 1 1}  ⍝ cumulative matrix product
Acc←{r⊣{r,∘⊃←+\⌽⍵}⍣⍵⊢0 1⊣r←⍬}   ⍝ accumulate using pairs

⍝ Direct computation methods:
Phi←{1∧÷+∘÷\⍵⍴1}                    ⍝ approximations of golden ratio
Coe←(+.!∘⌽⍨¯1+⍳)¨⍳                  ⍝ sum of binomial coefficients
Bin←{s÷⍨(p*⍵)-⍵*⍨1-p←2÷¯1+s←5*÷2}⍳  ⍝ Binet's formula

'cmpx'⎕CY'dfns'
cmpx,∘'¨⍳20'¨⎕A⎕NL¯3
