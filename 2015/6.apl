⍝ Write a function that takes, as each of its right and left arguments, a pair of co-ordinates representing diagonally opposite corners of two rectangles and returns a 1 if the rectangles overlap. The co-ordinates could be either (upper-left, lower-right) or (upper-right, lower left).
ab←(0 2)(5 9)
xy1←(4 0)(11 3)
xy0←(8 0)(13 3)

F←∧/((⌊/⍤⊢<⌈/⍤⊣)∧(⌊/⍤⊣<⌈/⍤⊢))⍤1⍥(⍉↑) ⋄ ab F xy1 ⋄-⋄ ab F xy0
F←∧/(f⍨∧f←⌊⌿⍤⊣<⌈⌿⍤⊢)⍥↑ ⋄ ab F xy1 ⋄-⋄ ab F xy0

G←{∧/∨⌿↑≠/⍪∘⍉⍨⍺∘.<⍵} ⋄ ab G xy1 ⋄-⋄ ab G xy0

H←{∧/4≠|⊃+/,×⍺∘.-⍵} ⋄ ab H xy1 ⋄-⋄ ab H xy0

(abs xys)←?↓↓↓2 100 2 2⍴0
'cmpx'⎕CY'dfns'
cmpx 'abs '∘,¨'FGH',¨⊂' xys'
⍝  abs F xys → 5.1E¯5 |      0%                                               
⍝  abs G xys → 9.5E¯3 | +18530% ⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕
⍝  abs H xys → 7.3E¯3 | +14307% ⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕         
