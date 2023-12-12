⍝ Write a function that takes a numeric vector and returns the length of the longest streak of positive growth.
n←1 5 3 4 2 6 7 8

⍝ Intuitive solution:
{⌈/≢¨⊆⍨0<¯2-/⍵}n
{⌈/≢¨⊆⍨0<¯2-/⍵}42   ⍝ fails on scalar
{⌈/≢¨⊆⍨0<¯2-/,⍵}42  ⍝ fix

{⌈/≢¨⊆⍨2</,⍵}5 4 3 2 1    ⍝ simpler, fails on no streaks
{0⌈⌈/≢¨⊆⍨2</,⍵}5 4 3 2 1  ⍝ fix

A←{0⌈⌈/≢¨⊆⍨2</,⍵}
A n

⍝ Code golf solution:
B←{≢⍉↑⊆⍨2</,⍵}  ⍝ inefficient matrix and transpose
B n

⍝ Flat algorithm attempt:
2</,n
0,0,⍨2</,n
2≠/0,0,⍨2</,n
⍸2≠/0,0,⍨2</,n
¯2-/⍸2≠/0,0,⍨2</,n
⌈/¯2-/⍸2≠/0,0,⍨2</,n

⍝ Fails because it includes false streaks:
x←1 10 9 8 7 6 5 4 3 4
⌈/¯2-/⍸2≠/0,0,⍨2</,x
2≠/0,0,⍨2</,x
⍸2≠/0,0,⍨2</,x
¯2-/⍸2≠/0,0,⍨2</,x

⍝ Fix by looking for inverse:
~0,0,⍨2</,x
⍸~0,0,⍨2</,x
¯2-/⍸~0,0,⍨2</,x
¯1+¯2-/⍸~0,0,⍨2</,x
⌈/¯1+¯2-/⍸~0,0,⍨2</,x
{⌈/¯1+¯2-/⍸~0,0,⍨2</,⍵}x

⍝ Simplifications:
{⌈/¯1+¯2-/⍸1,1,⍨2≥/,⍵}¨n x  ⍝ pre-negate
{⌈/¯1-2-/⍸1,1,⍨2≥/,⍵}¨n x   ⍝ handle negative differences
{¯1-⌊/2-/⍸1,1,⍨2≥/,⍵}¨n x   ⍝ reduce, then adjust

C←{¯1-⌊/2-/⍸1,1,⍨2≥/,⍵}
C n

t←?⍨1000
'cmpx'⎕CY'dfns'
cmpx'A t' 'B t' 'C t'
⍝  A t → 1.9E¯5 |   0% ⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕     
⍝  B t → 2.2E¯5 | +13% ⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕
⍝  C t → 1.4E¯6 | -93% ⎕⎕⎕                                     
