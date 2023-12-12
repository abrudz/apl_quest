⍝ Write a function that takes a numeric vector or scalar as its right argument and returns the mode (that is, the most common value) of the array. If more than one number occurs the greatest number of times, return all such numbers.
d ← (1 6 1 8 0 3 3 9 8) (2 7 1 8 2 8 1 8 2 8) (3 1 4 1 5)

{⍵/⍨(∧/m)≥m←⌽≠⌽⍵}⍣≡¨d
⍝┌─────┬─┬─┐
⍝│1 8 3│8│1│
⍝└─────┴─┴─┘

{⊃{⍺/⍨⍵=⌈/⍵}/,⌿,∘≢⌸⍵}¨d
⍝┌─────┬─┬─┐
⍝│1 8 3│8│1│
⍝└─────┴─┴─┘
