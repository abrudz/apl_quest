⍝ Given a 2-element vector representing the current square for a knight, return a vector of 2-element vectors representing (in any order) all the squares that the knight can move to. chess board as an 8×8 matrix.
{⍳8 8} 5 4
⍝ ┌───┬───┬───┬───┬───┬───┬───┬───┐
⍝ │1 1│1 2│1 3│1 4│1 5│1 6│1 7│1 8│
⍝ ├───┼───┼───┼───┼───┼───┼───┼───┤
⍝ │2 1│2 2│2 3│2 4│2 5│2 6│2 7│2 8│
⍝ ├───┼───┼───┼───┼───┼───┼───┼───┤
⍝ │3 1│3 2│3 3│3 4│3 5│3 6│3 7│3 8│
⍝ ├───┼───┼───┼───┼───┼───┼───┼───┤
⍝ │4 1│4 2│4 3│4 4│4 5│4 6│4 7│4 8│
⍝ ├───┼───┼───┼───┼───┼───┼───┼───┤
⍝ │5 1│5 2│5 3│5 4│5 5│5 6│5 7│5 8│
⍝ ├───┼───┼───┼───┼───┼───┼───┼───┤
⍝ │6 1│6 2│6 3│6 4│6 5│6 6│6 7│6 8│
⍝ ├───┼───┼───┼───┼───┼───┼───┼───┤
⍝ │7 1│7 2│7 3│7 4│7 5│7 6│7 7│7 8│
⍝ ├───┼───┼───┼───┼───┼───┼───┼───┤
⍝ │8 1│8 2│8 3│8 4│8 5│8 6│8 7│8 8│
⍝ └───┴───┴───┴───┴───┴───┴───┴───┘
{(⍳8 8)-⊂⍵} 5 4
⍝ ┌─────┬─────┬─────┬────┬────┬────┬────┬────┐
⍝ │¯4 ¯3│¯4 ¯2│¯4 ¯1│¯4 0│¯4 1│¯4 2│¯4 3│¯4 4│
⍝ ├─────┼─────┼─────┼────┼────┼────┼────┼────┤
⍝ │¯3 ¯3│¯3 ¯2│¯3 ¯1│¯3 0│¯3 1│¯3 2│¯3 3│¯3 4│
⍝ ├─────┼─────┼─────┼────┼────┼────┼────┼────┤
⍝ │¯2 ¯3│¯2 ¯2│¯2 ¯1│¯2 0│¯2 1│¯2 2│¯2 3│¯2 4│
⍝ ├─────┼─────┼─────┼────┼────┼────┼────┼────┤
⍝ │¯1 ¯3│¯1 ¯2│¯1 ¯1│¯1 0│¯1 1│¯1 2│¯1 3│¯1 4│
⍝ ├─────┼─────┼─────┼────┼────┼────┼────┼────┤
⍝ │0 ¯3 │0 ¯2 │0 ¯1 │0 0 │0 1 │0 2 │0 3 │0 4 │
⍝ ├─────┼─────┼─────┼────┼────┼────┼────┼────┤
⍝ │1 ¯3 │1 ¯2 │1 ¯1 │1 0 │1 1 │1 2 │1 3 │1 4 │
⍝ ├─────┼─────┼─────┼────┼────┼────┼────┼────┤
⍝ │2 ¯3 │2 ¯2 │2 ¯1 │2 0 │2 1 │2 2 │2 3 │2 4 │
⍝ ├─────┼─────┼─────┼────┼────┼────┼────┼────┤
⍝ │3 ¯3 │3 ¯2 │3 ¯1 │3 0 │3 1 │3 2 │3 3 │3 4 │
⍝ └─────┴─────┴─────┴────┴────┴────┴────┴────┘

⍝ Using simple distances:
{|(⍳8 8)-⊂⍵} 5 4
⍝ ┌───┬───┬───┬───┬───┬───┬───┬───┐
⍝ │4 3│4 2│4 1│4 0│4 1│4 2│4 3│4 4│
⍝ ├───┼───┼───┼───┼───┼───┼───┼───┤
⍝ │3 3│3 2│3 1│3 0│3 1│3 2│3 3│3 4│
⍝ ├───┼───┼───┼───┼───┼───┼───┼───┤
⍝ │2 3│2 2│2 1│2 0│2 1│2 2│2 3│2 4│
⍝ ├───┼───┼───┼───┼───┼───┼───┼───┤
⍝ │1 3│1 2│1 1│1 0│1 1│1 2│1 3│1 4│
⍝ ├───┼───┼───┼───┼───┼───┼───┼───┤
⍝ │0 3│0 2│0 1│0 0│0 1│0 2│0 3│0 4│
⍝ ├───┼───┼───┼───┼───┼───┼───┼───┤
⍝ │1 3│1 2│1 1│1 0│1 1│1 2│1 3│1 4│
⍝ ├───┼───┼───┼───┼───┼───┼───┼───┤
⍝ │2 3│2 2│2 1│2 0│2 1│2 2│2 3│2 4│
⍝ ├───┼───┼───┼───┼───┼───┼───┼───┤
⍝ │3 3│3 2│3 1│3 0│3 1│3 2│3 3│3 4│
⍝ └───┴───┴───┴───┴───┴───┴───┴───┘
{(1 2)(2 1)∊⍨|(⍳8 8)-⊂⍵} 5 4
⍝ 0 0 0 0 0 0 0 0
⍝ 0 0 0 0 0 0 0 0
⍝ 0 0 1 0 1 0 0 0
⍝ 0 1 0 0 0 1 0 0
⍝ 0 0 0 0 0 0 0 0
⍝ 0 1 0 0 0 1 0 0
⍝ 0 0 1 0 1 0 0 0
⍝ 0 0 0 0 0 0 0 0
{⍸(1 2)(2 1)∊⍨|(⍳8 8)-⊂⍵} 5 4
⍝ ┌───┬───┬───┬───┬───┬───┬───┬───┐
⍝ │3 3│3 5│4 2│4 6│6 2│6 6│7 3│7 5│
⍝ └───┴───┴───┴───┴───┴───┴───┴───┘

⍝ Using the Pythagorean theorem:
{(⍳8 8)-⊂⍵} 5 4
⍝ ┌─────┬─────┬─────┬────┬────┬────┬────┬────┐
⍝ │¯4 ¯3│¯4 ¯2│¯4 ¯1│¯4 0│¯4 1│¯4 2│¯4 3│¯4 4│
⍝ ├─────┼─────┼─────┼────┼────┼────┼────┼────┤
⍝ │¯3 ¯3│¯3 ¯2│¯3 ¯1│¯3 0│¯3 1│¯3 2│¯3 3│¯3 4│
⍝ ├─────┼─────┼─────┼────┼────┼────┼────┼────┤
⍝ │¯2 ¯3│¯2 ¯2│¯2 ¯1│¯2 0│¯2 1│¯2 2│¯2 3│¯2 4│
⍝ ├─────┼─────┼─────┼────┼────┼────┼────┼────┤
⍝ │¯1 ¯3│¯1 ¯2│¯1 ¯1│¯1 0│¯1 1│¯1 2│¯1 3│¯1 4│
⍝ ├─────┼─────┼─────┼────┼────┼────┼────┼────┤
⍝ │0 ¯3 │0 ¯2 │0 ¯1 │0 0 │0 1 │0 2 │0 3 │0 4 │
⍝ ├─────┼─────┼─────┼────┼────┼────┼────┼────┤
⍝ │1 ¯3 │1 ¯2 │1 ¯1 │1 0 │1 1 │1 2 │1 3 │1 4 │
⍝ ├─────┼─────┼─────┼────┼────┼────┼────┼────┤
⍝ │2 ¯3 │2 ¯2 │2 ¯1 │2 0 │2 1 │2 2 │2 3 │2 4 │
⍝ ├─────┼─────┼─────┼────┼────┼────┼────┼────┤
⍝ │3 ¯3 │3 ¯2 │3 ¯1 │3 0 │3 1 │3 2 │3 3 │3 4 │
⍝ └─────┴─────┴─────┴────┴────┴────┴────┴────┘
{×⍨(⍳8 8)-⊂⍵} 5 4
⍝ ┌────┬────┬────┬────┬────┬────┬────┬─────┐
⍝ │16 9│16 4│16 1│16 0│16 1│16 4│16 9│16 16│
⍝ ├────┼────┼────┼────┼────┼────┼────┼─────┤
⍝ │9 9 │9 4 │9 1 │9 0 │9 1 │9 4 │9 9 │9 16 │
⍝ ├────┼────┼────┼────┼────┼────┼────┼─────┤
⍝ │4 9 │4 4 │4 1 │4 0 │4 1 │4 4 │4 9 │4 16 │
⍝ ├────┼────┼────┼────┼────┼────┼────┼─────┤
⍝ │1 9 │1 4 │1 1 │1 0 │1 1 │1 4 │1 9 │1 16 │
⍝ ├────┼────┼────┼────┼────┼────┼────┼─────┤
⍝ │0 9 │0 4 │0 1 │0 0 │0 1 │0 4 │0 9 │0 16 │
⍝ ├────┼────┼────┼────┼────┼────┼────┼─────┤
⍝ │1 9 │1 4 │1 1 │1 0 │1 1 │1 4 │1 9 │1 16 │
⍝ ├────┼────┼────┼────┼────┼────┼────┼─────┤
⍝ │4 9 │4 4 │4 1 │4 0 │4 1 │4 4 │4 9 │4 16 │
⍝ ├────┼────┼────┼────┼────┼────┼────┼─────┤
⍝ │9 9 │9 4 │9 1 │9 0 │9 1 │9 4 │9 9 │9 16 │
⍝ └────┴────┴────┴────┴────┴────┴────┴─────┘
{+/¨×⍨(⍳8 8)-⊂⍵} 5 4
⍝ 25 20 17 16 17 20 25 32
⍝ 18 13 10  9 10 13 18 25
⍝ 13  8  5  4  5  8 13 20
⍝ 10  5  2  1  2  5 10 17
⍝  9  4  1  0  1  4  9 16
⍝ 10  5  2  1  2  5 10 17
⍝ 13  8  5  4  5  8 13 20
⍝ 18 13 10  9 10 13 18 25
{5=+/¨×⍨(⍳8 8)-⊂⍵} 5 4
⍝ 0 0 0 0 0 0 0 0
⍝ 0 0 0 0 0 0 0 0
⍝ 0 0 1 0 1 0 0 0
⍝ 0 1 0 0 0 1 0 0
⍝ 0 0 0 0 0 0 0 0
⍝ 0 1 0 0 0 1 0 0
⍝ 0 0 1 0 1 0 0 0
⍝ 0 0 0 0 0 0 0 0
{⍸5=+/¨×⍨(⍳8 8)-⊂⍵} 5 4
⍝ ┌───┬───┬───┬───┬───┬───┬───┬───┐
⍝ │3 3│3 5│4 2│4 6│6 2│6 6│7 3│7 5│
⍝ └───┴───┴───┴───┴───┴───┴───┴───┘
