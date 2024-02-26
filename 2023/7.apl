⍝ A rational number is a number that can be expressed as the quotient of 2 integers p÷q — a numerator p and a denominator q. For example, for 1.5, p and q would be 3 and 2, respectively.
⍝ Write a function that:
  ⍝ takes a single non-zero positive number right argument.
  ⍝ returns a 2-element "integer" result representing the smallest non-zero positive values for p and q respectively

1∘(∧÷,) 1.2
⍝ 6 5
1∘{(⍺∧⍵)÷(⍺,⍵)} 1.2
⍝ 6 5
{(1∧⍵)÷(1,⍵)} 1.2
⍝ 6 5
{(6÷1),(6÷⍵)} 1.2
⍝ 6 5
{6,6÷⍵} 1.2
⍝ 6 5
