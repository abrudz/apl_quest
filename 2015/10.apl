⍝ Write a function that takes an integer right argument representing the order of the Pascal’s triangle to be created and returns a triangle shaped formatted character matrix
⍝ GENERATION
⍝ Flat:
F←{⍕⍤~∘0⍤1⍉∘.!⍨0,⍳⍵}

⍝ Nested:
N←(⍕i!⊢)¨i←0,⍳

⍝ CENTERING
⍝ Rotate matrix:
RF←{⍵⌽⍨-⌊2÷⍨+/∧\' '=⌽⍵}F  ⍝ flat
RN←(↑⌽⍨∘(⌈2÷⍨⊢-⊢/)≢¨)N    ⍝ nested

⍝ (Over-)Take nested:
 ⍝ {↑⍵↑¨⍨(⌈⍤-⊢+2÷⍨⊢/-⊢)≢¨⍵)N
 ⍝ {↑⍵↑¨⍨(⌈⍤-2÷⍨⊢+⊢/)≢¨⍵}N
 ⍝ {↑⍵↑¨⍨(⌈¯2÷⍨⊢+⊢/)≢¨⍵}N
TN←{↑⍵↑¨⍨(⌈2÷⍨--⊢/)≢¨⍵}N

⍝ PERFORMANCE
⎕PP←17
'cmpx'⎕CY'dfns'
n←⍳50
cmpx'RF¨n' 'RN¨n' 'TN¨n'
⍝  RF¨n → 8.8E¯3 |   0% ⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕
⍝  RN¨n → 4.1E¯3 | -54% ⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕                      
⍝  TN¨n → 4.3E¯3 | -51% ⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕                    
