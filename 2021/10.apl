⍝ Write a function that:
⍝     has a right argument T that is a character scalar, vector or a vector of character vectors/scalars.
⍝     has a left argument W that is a positive integer specifying the width of the result.
⍝     returns a right-aligned character array R of shape ((2=|≡T)/≢T),W meaning R is one of the following:
⍝        a W-wide vector if T is a simple vector or scalar.
⍝        a W-wide matrix with the same number rows as elements of T if T is a vector of vectors/scalars.
⍝    if an element of T has length greater than W, truncate it after W characters.

⍝ Simple solution:
{⍵}'Iverson'
⍝ Iverson
{⊆⍵}'Iverson'
⍝ ┌───────┐
⍝ │Iverson│
⍝ └───────┘
{⍵}'K' 'E' 'Iverson'
⍝ ┌─┬─┬───────┐
⍝ │K│E│Iverson│
⍝ └─┴─┴───────┘
{⊆⍵}'K' 'E' 'Iverson'
⍝ ┌─┬─┬───────┐
⍝ │K│E│Iverson│
⍝ └─┴─┴───────┘
5{(-⍺)↑¨⊆⍵}'Iverson'
⍝ ┌─────┐
⍝ │erson│
⍝ └─────┘
5{↑(-⍺)↑¨⊆⍵}'Iverson'
⍝ erson
5{↑(-⍺)↑¨⊆⍵}'K' 'E' 'Iverson'
⍝     K
⍝     E
⍝ erson
5{(-⍺)↑¨⊆⍵}'K'
⍝ ┌─────┐
⍝ │    K│
⍝ └─────┘
5{↑(-⍺)↑¨⊆⍵}'K'
⍝     K
F←{↑(-⍺)↑¨⊆⍵}

⍝ Making it flat earlier:
{↑⊆⍵}'K' 'E' 'Iverson'
⍝ K      
⍝ E      
⍝ Iverson
{⌽¨⊆⍵}'K' 'E' 'Iverson'
⍝ ┌─┬─┬───────┐
⍝ │K│E│nosrevI│
⍝ └─┴─┴───────┘
{↑⌽¨⊆⍵}'K' 'E' 'Iverson'
⍝ K      
⍝ E      
⍝ nosrevI
{⌽↑⌽¨⊆⍵}'K' 'E' 'Iverson'
⍝       K
⍝       E
⍝ Iverson
5{(-⍺)↑⍤1⌽↑⌽¨⊆⍵}'K' 'E' 'Iverson'
⍝     K
⍝     E
⍝ erson
5{⍺↑⍤1↑⌽¨⊆⍵}'K' 'E' 'Iverson'
⍝ K    
⍝ E    
⍝ nosre
5{⌽⍺↑⍤1↑⌽¨⊆⍵}'K' 'E' 'Iverson'
⍝     K
⍝     E
⍝ erson
G←{⌽⍺↑⍤1↑⌽¨⊆⍵}

⍝ Performance comparison:
'cmpx'⎕CY'dfns'
10↑(?100⍴10)↑¨⊂⎕A
⍝ ┌──────────┬───┬───────┬────────┬──┬──┬───────┬───────┬─┬─────────┐
⍝ │ABCDEFGHIJ│ABC│ABCDEFG│ABCDEFGH│AB│AB│ABCDEFG│ABCDEFG│A│ABCDEFGHI│
⍝ └──────────┴───┴───────┴────────┴──┴──┴───────┴───────┴─┴─────────┘
w←(?100⍴10)↑¨⊂⎕A
cmpx'5 F w' '5 G w'
⍝   5 F w → 1.2E¯5 |   0% ⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕
⍝   5 G w → 9.1E¯6 | -27% ⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕           

⍝ Making it flat as early as possible:
{↑⊆⍵}'K' 'E' 'Iverson'
⍝ K      
⍝ E      
⍝ Iverson
{(((⊢-⌈/)≢¨)⌽↑)⊆⍵}'K' 'E' 'Iverson'
K
E
⍝ Iverson
5{(-⍺)↑⍤1(((⊢-⌈/)≢¨)⌽↑)⊆⍵}'K' 'E' 'Iverson'
⍝     K
⍝     E
⍝ erson
H←{(-⍺)↑⍤1(((⊢-⌈/)≢¨)⌽↑)⊆⍵}
cmpx'5 F w' '5 G w' '5 H w'
⍝   5 F w → 1.2E¯5 |   0% ⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕
⍝   5 G w → 8.7E¯6 | -29% ⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕            
⍝   5 H w → 5.4E¯6 | -57% ⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕                      
F
⍝      ∇ F←{↑(-⍺)↑¨⊆⍵}
⍝      ∇
G
⍝      ∇ G←{⌽⍺↑⍤1↑⌽¨⊆⍵}
⍝      ∇
H
⍝      ∇ H←{(-⍺)↑⍤1(((⊢-⌈/)≢¨)⌽↑)⊆⍵}
⍝      ∇
