⍝ Write a monadic function that:
  ⍝  takes an argument n that is an integer scalar in the range 0–100.
  ⍝  returns a square matrix "pyramid" with 0⌈¯1+2×n rows and columns of n increasing concentric levels.By this we mean that the center element of the matrix will be n, surrounded on all sides by n-1.

⍳5
⍝ 1 2 3 4 5
(⌽)⍳5
⍝ 5 4 3 2 1
(⊢)⍳5
⍝ 1 2 3 4 5
(⊢,⌽)⍳5
⍝ 1 2 3 4 5 5 4 3 2 1
(⊢,1↓⌽)⍳5
⍝ 1 2 3 4 5 4 3 2 1
(∘.×⍨⊢,1↓⌽)⍳5
⍝ 1  2  3  4  5  4  3  2 1
⍝ 2  4  6  8 10  8  6  4 2
⍝ 3  6  9 12 15 12  9  6 3
⍝ 4  8 12 16 20 16 12  8 4
⍝ 5 10 15 20 25 20 15 10 5
⍝ 4  8 12 16 20 16 12  8 4
⍝ 3  6  9 12 15 12  9  6 3
⍝ 2  4  6  8 10  8  6  4 2
⍝ 1  2  3  4  5  4  3  2 1
(∘.⌊⍨⊢,1↓⌽)⍳5
⍝ 1 1 1 1 1 1 1 1 1
⍝ 1 2 2 2 2 2 2 2 1
⍝ 1 2 3 3 3 3 3 2 1
⍝ 1 2 3 4 4 4 3 2 1
⍝ 1 2 3 4 5 4 3 2 1
⍝ 1 2 3 4 4 4 3 2 1
⍝ 1 2 3 3 3 3 3 2 1
⍝ 1 2 2 2 2 2 2 2 1
⍝ 1 1 1 1 1 1 1 1 1
F←(∘.⌊⍨⊢,1↓⌽)⍳
F 5
⍝ 1 1 1 1 1 1 1 1 1
⍝ 1 2 2 2 2 2 2 2 1
⍝ 1 2 3 3 3 3 3 2 1
⍝ 1 2 3 4 4 4 3 2 1
⍝ 1 2 3 4 5 4 3 2 1
⍝ 1 2 3 4 4 4 3 2 1
⍝ 1 2 3 3 3 3 3 2 1
⍝ 1 2 2 2 2 2 2 2 1
⍝ 1 1 1 1 1 1 1 1 1
⍝ 
