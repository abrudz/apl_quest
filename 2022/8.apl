⍝ Write a function that: 
  ⍝  takes a right argument that is a non-empty character vector or scalar.
  ⍝  takes a left argument that is a non-empty character vector or scalar.
  ⍝  returns a 2-element vector of character vectors in which the right argument is split immediately before the first occurrence of any element in the left argument. If no left-argument element occurs in the right argument, then the split should happen after the last element of the right argument.

'APL' (⍳⍨) 'DYALOG'
⍝ 3 7 4
'APL' (⌊⌿⍤⍳⍨) 'DYALOG'
⍝ 3
'APL' (¯1+⌊⌿⍤⍳⍨) 'DYALOG'
⍝ 2
'APL' ((¯1+⌊⌿⍤⍳⍨)↑⊢) 'DYALOG'
⍝ DY
'APL' ((¯1+⌊⌿⍤⍳⍨)↓⊢) 'DYALOG'
⍝ ALOG
'APL' ((¯1+⌊⌿⍤⍳⍨)(↑,↓)⊢) 'DYALOG'
⍝ DYALOG
'APL' ((¯1+⌊⌿⍤⍳⍨)(↑,⍥⊂↓)⊢) 'DYALOG'
⍝ ┌──┬────┐
⍝ │DY│ALOG│
⍝ └──┴────┘
'APL' ((¯1+⌊⌿⍤⍳⍨)(↑,⍥⊂↓)⊢) 'D'
⍝ RANK ERROR
⍝       'APL'((¯1+⌊⌿⍤⍳⍨)(↑,⍥⊂↓)⊢)'D'
⍝            ∧
'APL' ((¯1+⌊⌿⍤⍳⍨∘,)(↑,⍥⊂↓)⊢) 'D'
⍝ ┌─┬┐
⍝ │D││
⍝ └─┴┘
F←(¯1+⌊⌿⍤⍳⍨∘,)(↑,⍥⊂↓)⊢

'APL' {⍵⍳⍺} 'DYALOG'
⍝ 3 7 4
'APL' {⌊⌿⍵⍳⍺} 'DYALOG'
⍝ 3
'APL' {1,⌊⌿⍵⍳⍺} 'DYALOG'
⍝ 1 3
⍸1 0 1 0 0
⍝ 1 3
(⍸⍣¯1)1 3
⍝ 1 0 1
'APL' {(⍸⍣¯1)1,⌊⌿⍵⍳⍺} 'DYALOG'
⍝ 1 0 1
'APL' {⍵⊂⍨(⍸⍣¯1)1,⌊⌿⍵⍳⍺} 'DYALOG'
⍝ ┌──┬────┐
⍝ │DY│ALOG│
⍝ └──┴────┘
'APL' {⍵⊂⍨(⍸⍣¯1)1,⌊⌿⍵⍳⍺} 'D'
⍝ RANK ERROR
⍝       'APL'{⍵⊂⍨(⍸⍣¯1)1,⌊⌿⍵⍳⍺}'D'
⍝                           ∧
'APL' {⍵⊂⍨(⍸⍣¯1)1,⌊⌿⍵⍳⍺}, 'D'
⍝ ┌─┬┐
⍝ │D││
⍝ └─┴┘
'DD' {⍵⊂⍨(⍸⍣¯1)1,⌊⌿⍵⍳⍺}, 'DYALOG'
⍝ ┌┬──────┐
⍝ ││DYALOG│
⍝ └┴──────┘
'DD' {1,⌊⌿⍵⍳⍺}, 'DYALOG'
⍝ 1 1
'DD' {(⍸⍣¯1)1,⌊⌿⍵⍳⍺}, 'DYALOG'
⍝ 2
(⍸⍣¯1)1 1 3 4 4 4 5
⍝ 2 0 1 3 1
⍸2 0 1 3 1
⍝ 1 1 3 4 4 4 5
'DD' {⍵⊂⍨1⍸⍣¯1⍤,⍺⌊⌿⍤⍳⍨⍵}, 'DYALOG'
⍝ ┌┬──────┐
⍝ ││DYALOG│
⍝ └┴──────┘
'APL' {⍵⊂⍨1⍸⍣¯1⍤,⍺⌊⌿⍤⍳⍨⍵}, 'DYALOG'
⍝ ┌──┬────┐
⍝ │DY│ALOG│
⍝ └──┴────┘
'APL' (⊢⊂⍨1⍸⍣¯1⍤,⌊⌿⍤⍳⍨), 'DYALOG'
⍝ ┌──┬────┐
⍝ │DY│ALOG│
⍝ └──┴────┘
G←(⊢⊂⍨1⍸⍣¯1⍤,⌊⌿⍤⍳⍨)∘,
'APL' G 'DYALOG'
⍝ ┌──┬────┐
⍝ │DY│ALOG│
⍝ └──┴────┘
'APL' G 'D'
⍝ ┌─┬┐
⍝ │D││
⍝ └─┴┘
'APL' G 'A'
⍝ ┌┬─┐
⍝ ││A│
⍝ └┴─┘
⍝ 
