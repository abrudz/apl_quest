⍝ Write a function that takes a vector as its right argument and returns elements that occur only once in the vector.
{(1=+⌿⍵∘.=⍵)⌿⍵}
{(1=+⌿⍵∘.=u)⌿u←∪⍵}
{(1={≢⍵}⌸⍵)⌿∪⍵}
⊃{⌿⌿,⌿{⍺,⍨1=≢⍵}⌸⍵}
{⍵~⍵/⍨~≠⍵}
