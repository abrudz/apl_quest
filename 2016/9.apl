⍝ Write a function that takes a character vector as its right argument and one or more characters as its left argument, where those characters are delimiters in the right argument. The function should return the delimited text as a vector of vectors.
{⍺ ⍵}
{⍵∊⍺}
{(⍵∊⍺)⊂⍵}
{⍵⊂⍨⍵∊⍺}
{t←⍵,⍨⊃⍺ ⋄ t⊂⍨t∊⍺}
{t←⍵,⍨⊃⍺ ⋄ 1↓¨t⊂⍨t∊⍺}
{t←⍵,⍨⊃⍺ ⋄ 1↓¨t⊂⍨⍺∊⍨t}
{1↓¨t⊂⍨⍺∊⍨t←⍵,⍨⊃⍺}
