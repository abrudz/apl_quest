⍝ Write a function that:
⍝    has a right argument that is a non-empty character vector representing a DNA string.
⍝    returns the percentage of GC-content in the string.

(∊∘'CG')'GATTACCA'
⍝ 1 0 0 0 0 1 1 0
(+/∊∘'CG')'GATTACCA'
⍝ 3
(∊∘'CG'+.÷≢)'GATTACCA'
⍝ 0.375
(100×∊∘'CG'+.÷≢)'GATTACCA'
⍝ 37.5
(100×(+/∊∘'CG')÷≢)'GATTACCA'
⍝ 37.5
((100+.×∊∘'CG')÷≢)'GATTACCA'
⍝ 37.5
(≢÷⍨100+.×∊∘'CG')'GATTACCA'
⍝ 37.5
     
