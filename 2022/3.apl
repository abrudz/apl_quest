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
