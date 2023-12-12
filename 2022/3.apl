⍝ Write a function that:
 ⍝   takes right and left arguments that are arrays of arbitrary rank, depth, and value.
 ⍝   returns a vector of all elements that appear in either of the two argument arrays but not in both. The order of elements in the result is not significant.

'DYALOG' {⍺∪⍵} 'APL'
⍝ DYALOGP
'DYALOG' {⍺∩⍵} 'APL'
⍝ AL
'DYALOG' {(⍺∪⍵)~(⍺∩⍵)} 'APL'
⍝ DYOGP
'DYALOG' (∪~∩) 'APL'
⍝ DYOGP
'DYALOG' {⍺~⍵} 'APL'
⍝ DYOG
'DYALOG' {⍵~⍺} 'APL'
⍝ P
'DYALOG' {(⍺~⍵),⍵~⍺} 'APL'
⍝ DYOGP
'DYALOG' {(⍺~⍵),⍺~⍨⍵} 'APL'
⍝ DYOGP
'DYALOG' (~,~⍨) 'APL'
⍝ DYOGP
⍪'APL'
⍝ A
⍝ P
⍝ L
'DYALOG' (~,~⍨) ⍪'APL'
⍝ RANK ERROR
⍝ 'DYALOG'(~,~⍨)⍪'APL'
⍝               ∧
'DYALOG' (∪~∩) ⍪'APL'
⍝ RANK ERROR
⍝ 'DYALOG'(∪~∩)⍪'APL'
⍝               ∧
'DYALOG' (~,~⍨)⍥, ⍪'APL'
⍝ DYOGP
'DYALOG' (∪~∩)⍥, ⍪'APL'
⍝ DYOGP
F←(~,~⍨)⍥,
G←(∪~∩)⍥,
'DYALOG' F ⍪'APL'
⍝ DYOGP
'DYALOG' G ⍪'APL'
⍝ DYOGP
