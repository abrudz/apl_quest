⍝ Write a function that takes vectors as its left and right arguments and returns them “meshed” into a single vector formed by alternately taking successive elements from each argument. The arguments do not have to be the same length.
'Dyalog' {(⍺,⍵)[⍋(⍳≢⍺),(⍳≢⍵)]} 'APL'
⍝ DAyPaLlog
'Dyalog' {(⍺,⍵)[⍋⍺,⍥(⍳≢)⍵]} 'APL'
⍝ DAyPaLlog
'Dyalog' {(⍺,⍵)[⍋⍺,⍥⍳⍥≢⍵]} 'APL'
⍝ DAyPaLlog
'Dyalog' {(⊂⍋⍺,⍥⍳⍥≢⍵)⌷⍺,⍵} 'APL'
⍝ DAyPaLlog
'Dyalog' ({⊂⍋⍺,⍥(⍳≢)⍵}⌷,) 'APL'
⍝ DAyPaLlog
'Dyalog' (⊂⍤⍋⍤,⍥⍳⍥≢⌷,) 'APL'
⍝ DAyPaLlog
