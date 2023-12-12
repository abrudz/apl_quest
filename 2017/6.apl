⍝ Write a dfn that takes a character vector as its right argument and k (the substring length) as its left argument and returns a vector of the k-mers of the original string.
dna←'ACGT'[?15⍴4]
⍝ k,/dna fails on short DNA, so either…
F←{⍺,/⍵↑⍨(⍺-1)⌈≢⍵}      ⍝ extend DNA appropriately, or
G←{⍺>≢⍵:0↑⊂⍺↑⍵ ⋄ ⍺,/⍵}  ⍝ return appropriate empty result when DNA is too short
