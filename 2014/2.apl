⍝ Write a dfn which takes a character vector and removes the interior vowels from each word.
t←'How are you'

⍝ Assume space-delimited words:
C←{1↓∊{' ',⍵/⍨1@1(≢⍵)~'AEIOU'∊⍨1⎕C⍵}¨⍵⊆⍨' '≠⍵}   ⍝ Cut
D←{⍵/⍨(∊∘'AEIOU'⍲0,¯1↓' '(∧⌿≠)0 1 2↓⍤0 1⊢)1⎕C⍵}  ⍝ Drop
R←{⍵/⍨(∊∘'AEIOU'⍲0,0,⍨' '(3∧/≠)⊢)1⎕C⍵}           ⍝ Reduce
S←{⍵/⍨(∊∘'AEIOU'⍲(' '(∧/≠)⊢)⌺3)1⎕C⍵}             ⍝ Stencil

'cmpx' 'dxb'⎕CY'dfns'
≢t3←dxb{⍵[?1e3⍴≢⍵]}60↑⎕A,⎕C⎕A
cmpx'CDRS',¨⊂' t3'

S←{⍵/⍨(∊∘'AEIOU'⍲' '(∧/≠){⍵}⌺3)1⎕C⍵}  ⍝ Optimised
cmpx'CDRS',¨⊂' t3'
cmpx'DRS',¨⊂' t3'

t←'How are you?'

⍝ Handle punctuation:
D←{⍵/⍨(∊∘'AEIOU'⍲0,¯1↓⎕A(∧⌿∊)⍨0 1 2↓⍤0 1⊢)1⎕C⍵}
R←{⍵/⍨(∊∘'AEIOU'⍲0,0,⍨⎕A(3∧/∊)⍨⊢)1⎕C⍵}
S←{⍵/⍨(∊∘'AEIOU'⍲⎕A(∧/∊)⍨{⍵}⌺3)1⎕C⍵}

≢t3←{⍵[?1e3⍴≢⍵]}65↑⎕A,⎕C⎕A,',.?!'
cmpx'DRS',¨⊂' t3'

⍝ Regex:
A←'(?<=\w)[aeiou](?=\w)'⎕R''⍠1     ⍝ look-Arounds
B←'\b\w|\w\b' '[aeiou]'⎕R'&' ''⍠1  ⍝ word-Boundaries
cmpx'DRSAB',¨⊂' t3'
