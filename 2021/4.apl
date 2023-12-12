⍝ Write a function that:
⍝    takes a right argument which is an array of positive numbers representing circle diameters
⍝    returns a numeric array of the same shape as the right argument representing the difference between the areas of the circles and the areas of the largest squares that can be inscribed within each circle

⍝ area of square (Pythagoras):
⍝ ×⍨ = ×⍨×2⍨
⍝ ×⍨÷2⍨ = ×⍨

⍝ area of circle (Archimedes):
⍝ ○×⍨÷4⍨

⍝ Difference:
⍝ (○×⍨÷4⍨)-(×⍨÷2⍨)
⍝ (○×⍨÷4⍨)-(+⍨×⍨÷4⍨)
⍝ (○×⍨÷4⍨)-(+⍨×⍨÷4⍨)
⍝ (○-+⍨)×⍨÷4⍨
((○-+⍨)×⍨÷4⍨) 2 4 6 8 10
⍝ 1.141592654 4.566370614 10.27433388 18.26548246 28.53981634
