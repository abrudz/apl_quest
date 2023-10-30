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
