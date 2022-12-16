dna←'ACGT'[?15⍴4]
⍝ k,/dna fails on short DNA, so either…
F←{⍺,/⍵↑⍨(⍺-1)⌈≢⍵}      ⍝ extend DNA appropriately, or
G←{⍺>≢⍵:0↑⊂⍺↑⍵ ⋄ ⍺,/⍵}  ⍝ return appropriate empty result when DNA is too short
