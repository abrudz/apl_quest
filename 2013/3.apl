⍝ Write a dfn which returns the number of words in the given character scalar or vector.
s←'hyphen-dash string'
l←'x'
e←''
m←'  more spaces   go here '
F ← ≢' '∘≠⊆,
G ← ≢'[^ ]+'⎕S 3
H ← ≢∘⊃⎕VFI
I ← {+/2</' '≠' ',⍵}
J ← {+/2</0,' '≠⍵}
K ← {(⊃m)++/2</m←' '≠,⍵}
L ← {+/2</1,⍨' '=⍵}
t←'abc '[?1e6⍴4]
'cmpx'⎕cy'dfns'
cmpx'F t' 'G t' 'H t' 'I t'
⍝ F t → 1.8E¯2 |    0% ⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕                        
⍝ G t → 4.5E¯2 | +144% ⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕
⍝ H t → 2.7E¯2 |  +48% ⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕                
⍝ I t → 2.2E¯4 |  -99%                                         
cmpx'I t' 'J t' 'K t' 'L t'
⍝ I t → 1.6E¯4 |   0% ⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕
⍝ J t → 8.6E¯5 | -46% ⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕                  
⍝ K t → 6.4E¯5 | -60% ⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕                        
⍝ L t → 6.3E¯5 | -61% ⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕                        
