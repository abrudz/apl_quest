⍝ Write a function that, given a right argument which is a character scalar or non-empty vector representing a valid character Excel column identifier between A and XFD, returns the corresponding column number.
      ⎕A⍳'A'
1
      ⎕A⍳'Z'
26
      ⎕A⍳'AA'
1 1
      26⊥⎕A⍳'AA'
27
      ⎕A⍳'Z'
26
      26⊥⎕A⍳'Z'
26
      ⎕A⍳'AZ'
1 26
      26⊥⎕A⍳'AZ'
52
      ⎕A⍳'BZ'
2 26
      ⎕A⍳'ZZ'
26 26
      (26⊥⎕A∘⍳)'APL'
1104
      ⎕A⍳'APL'
1 16 12
      ⍳3
1 2 3
      ⌽⍳3
3 2 1
      ¯1+⌽⍳3
2 1 0
      26*¯1+⌽⍳3
676 26 1
      (26*¯1+⌽⍳3)×1 16 12
676 416 12
      +/(26*¯1+⌽⍳3)×1 16 12
1104
      (26*¯1+⌽⍳3)+.×1 16 12
1104
      {(26*¯1+⌽⍳≢⍵)+.×⎕A⍳⍵}'APL'
1104
