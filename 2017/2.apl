      a←4 4⍴(⍳16)-5
⍝ ¯4 ¯3 ¯2 ¯1
⍝  0  1  2  3
⍝  4  5  6  7
⍝  8  9 10 11

      {⍵}a
⍝ ¯4 ¯3 ¯2 ¯1
⍝  0  1  2  3
⍝  4  5  6  7
⍝  8  9 10 11
      {⍵÷2}a
⍝ ¯2 ¯1.5 ¯1 ¯0.5
⍝  0  0.5  1  1.5
⍝  2  2.5  3  3.5
⍝  4  4.5  5  5.5
      {⌈⍵÷2}a
⍝ ¯2 ¯1 ¯1 0
⍝  0  1  1 2
⍝  2  3  3 4
⍝  4  5  5 6
      {2×⌈⍵÷2}a
⍝ ¯4 ¯2 ¯2  0
⍝  0  2  2  4
⍝  4  6  6  8
⍝  8 10 10 12
      F←{2×⌈⍵÷2}
      F a
⍝ ¯4 ¯2 ¯2  0
⍝  0  2  2  4
⍝  4  6  6  8
⍝  8 10 10 12

      {2|⍵}a
⍝ 0 1 0 1
⍝ 0 1 0 1
⍝ 0 1 0 1
⍝ 0 1 0 1
      {⍵+2|⍵}a
⍝ ¯4 ¯2 ¯2  0
⍝  0  2  2  4
⍝  4  6  6  8
⍝  8 10 10 12
      G←{⍵+2|⍵}
      G a
⍝ ¯4 ¯2 ¯2  0
⍝  0  2  2  4
⍝  4  6  6  8
⍝  8 10 10 12
