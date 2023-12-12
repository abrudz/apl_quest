⍝ Write a function that behaves like the APL index-of function R←X⍳Y except that it returns 0 instead of 1+≢X for elements of Y not found in X.
'DYALOG' ⍳ 'APL'
⍝ 3 7 4
'DYALOG' (⍳>≢⍤⊣) 'APL'
⍝ 0 1 0
'DYALOG' (⍳≤≢⍤⊣) 'APL'
⍝ 1 0 1
'DYALOG' (⍳×⍳≤≢⍤⊣) 'APL'
⍝ 3 0 4
'DYALOG' (⍳(⊣×≤)≢⍤⊣) 'APL'
⍝ 3 0 4
'DYALOG' (⍳(⊣×≤∘≢)⊣) 'APL'
⍝ 3 0 4
'DYALOG' ((1+≢⍤⊣)|⍳) 'APL'
⍝ 3 0 4
'DYALOG' (⍳|⍨1+≢⍤⊣) 'APL'
⍝ 3 0 4
'DYALOG' ({1+≢⍺}|⍳) 'APL'
⍝ 3 0 4
