⍝ An "Elimination Sort" is a somewhat farcical sorting algorithm which starts with the leftmost element and keeps subsequent elements that are at least as large as the previous kept element, discarding all other elements.
⍝ Write a function that:
  ⍝ takes a non-empty numeric vector right argument
  ⍝ returns an "Elimination-sorted" vector of the right argument 

t←1 3 7 3 5 8 5 8 1 6 1 8 1 10 8 4 3 4 1 4
{2≤/⍵}t
⍝ 1 1 0 1 1 0 1 0 1 0 1 0 1 0 0 0 1 0 1
{⍵/⍨1,2≤/⍵}t
⍝ 1 3 7 5 8 8 6 8 10 4 4
({⍵/⍨1,2≤/⍵}⍣2)t
⍝ 1 3 7 8 8 8 10 4
({⍵/⍨1,2≤/⍵}⍣3)t
⍝ 1 3 7 8 8 8 10
({⍵/⍨1,2≤/⍵}⍣4)t
⍝ 1 3 7 8 8 8 10
F←{⍵/⍨1,2≤/⍵}⍣≡
F t
⍝ 1 3 7 8 8 8 10

{⌈\⍵}t
⍝ 1 3 7 7 7 8 8 8 8 8 8 8 8 10 10 10 10 10 10 10
{⍵=⌈\⍵}t
⍝ 1 1 1 0 0 1 0 1 0 0 0 1 0 1 0 0 0 0 0 0
{⍵/⍨⍵=⌈\⍵}t
⍝ 1 3 7 8 8 8 10
