⍝ Write a function that takes a character vector word as its argument and for words that contain more than 3 letters, the first and last letters remain the same while all of the interior letters are transposed in groups of two, ignoring punctuation. If there are an odd number of letters in the interior of the word, then the last letter is left as it is.
t←'AbcdeF' 'AbcdeFG'(,'A')'AB'

⍝ Partitioning:
F←{∊⌽¨⍵⊂⍨1@1(≢⍵)⊢0 1⍴⍨≢⍵}
{∊⌽¨⍵⊂⍨1@1(≢⍵)=\≠⍨⍵}

⍝ Stencil:
G←{(⊢/⍵),⍨⍵∩⍨,⌽⊢⌺(⍪2 2)⊢' ',' ',⍨¯1↓⍵}

⍝ Reverse At:
H←{{,⌽(2÷⍨≢⍵)2⍴⍵}@(1+⍳0⌈2(⊢-|+⊣)≢⍵)⊢⍵}

⍝ Index:
I←{⍵[n↑1,+\2 1,⍨3 ¯1⍴⍨0⌈2(⊢-|+⊣)n←≢⍵]}

⍝ Index with Grade:
J←{⍵[n,⍨⍋¯1(⊢+*)⍳¯1+n←≢⍵]}

w←{⎕A[?26⍴⍨?10]}¨⍳1000
'cmpx'⎕CY'dfns'
cmpx 'FGHIJ',¨⊂'¨w'
⍝  F¨w → 4.1E¯3 |    0% ⎕⎕⎕⎕⎕                                   
⍝  G¨w → 3.4E¯2 | +743% ⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕
⍝  H¨w → 4.6E¯3 |  +13% ⎕⎕⎕⎕⎕                                   
⍝  I¨w → 2.6E¯3 |  -37% ⎕⎕⎕                                     
⍝  J¨w → 1.9E¯3 |  -55% ⎕⎕                                      
