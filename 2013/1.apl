⍝ Write a dfn to produce a vector of the first n odd numbers.
⎕IO←1
F←{1-⍨2×⍳⍵} ⍝ ⎕IO←1
F←(⍸1 0⍴⍨2×⊢) ⍝ ⎕IO←1
F←(⍳+⍳-≢)

⎕IO←0
F←{1+2×⍳⍵} ⍝ ⎕IO←0
F←(⍸0 1⍴⍨2×⊢) ⍝ ⎕IO←0

⍝ Any ⎕IO
F←{⍸2|⍳2×⍵}
F←{+\2-⍵↑1}
F←{(¯1*⎕IO)+2×⍳⍵}
