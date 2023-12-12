⍝ Write a function that takes a numeric vector and returns a two element vector whose first element contains the values less than 0 (zero) in the vector and the second element contains all values greater than or equal to 0.
{((0>⍵)/⍵)((0≤⍵)/⍵)}
{(⍵/⍨0>⍵)(⍵/⍨0≤⍵)}
{(m/⍵)(⍵/⍨~m←0>⍵)}
{m←0>⍵ ⋄ (m/⍵)(⍵/⍨~m)}
{p←~n←0>⍵ ⋄ (n/⍵)(p/⍵)}
{(⍵~p)(p←⍵/⍨0≤⍵)}
