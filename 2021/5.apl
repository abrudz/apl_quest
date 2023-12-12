⍝ Write a function that:
⍝    has a right argument N which is a positive integer less than or equal to 1,000,000.
⍝    returns a 2-element integer vector R representing the rows and columns of the rectangle such that:
⍝        N=×/R meaning N equals the number of rows × the number of columns (you planted all the trees!)
⍝        ≤/R meaning the number of rows is less than or equal to the number of columns
⍝        |-/R is minimal, meaning the difference between the elements of R is as small as possible

⍳ 12
⍝ 1 2 3 4 5 6 7 8 9 10 11 12
(⍳|⊢) 12
⍝ 0 0 0 0 2 0 5 4 3 2 1 0
(0=⍳|⊢) 12
⍝ 1 1 1 1 0 1 0 0 0 0 0 1
((⍸)0=⍳|⊢) 12
⍝ 1 2 3 4 6 12
((2/⍸)0=⍳|⊢) 12
⍝ 1 1 2 2 3 3 4 4 6 6 12 12
((0,2/⍸)0=⍳|⊢) 12
⍝ 0 1 1 2 2 3 3 4 4 6 6 12 12
((+/↓0,2/⍸)0=⍳|⊢) 12
⍝ 3 4 4 6 6 12 12
((2↑+/↓0,2/⍸)0=⍳|⊢) 12
⍝ 3 4
((2↑+/↓0,2/⍸)0=⍳|⊢) 0
⍝ 0 0

