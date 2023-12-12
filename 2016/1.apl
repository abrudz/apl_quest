⍝ Write a function that takes a numeric array as its right argument and returns the mean (average) of the array.

]box on  ⍝ turns on fancy display

Sum ← {+⌿⍵}
p ← 3 1 4 1 5
Sum p
⍝ 14
Count ← {≢⍵}
Count p
⍝ 5
Mean ← {(Sum ⍵) ÷ Count ⍵}
Mean p 
⍝ 2.8

⍝ Tacit ("points-free"):
Mean ← Sum ÷ Count  ⍝ tacit
Sum ← +⌿
Count ← ≢
Mean ← Sum ÷ Count
Mean ← +⌿ ÷ ≢

⍝ Dealing with the empty list:
Mean ⍬
⍝ 1
Mean ← +⌿ ÷ 1 ⌈ ≢
Mean ⍬
0
p ← 3 1 4 1 5
q ← 1 6 1 8 0
Mean ⍬

⍝ Matrix ("table", "2D array"):
a ← p,⍥⍪q
Mean a     ⍝ along columns
⍝ 2.8 3.2
(Mean⍤1)a  ⍝ along rows
⍝ 2 3.5 2.5 4.5 2.5
