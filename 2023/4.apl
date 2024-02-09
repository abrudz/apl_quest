⍝ Write a function that:
  ⍝ takes 3-element integer vector left and right arguments each representing a major version, minor version, and build number.
  ⍝ returns
    ⍝ ¯1 if the left argument represents a version number older than the right argument
    ⍝  0 if the left argument represents a version number equal to the right argument
    ⍝  1 if the left argument represents a version number newer than the right argument

1 2 3  (-)  1 3 2
⍝ 0 ¯1 1
1 2 4  (-)  1 3 2
⍝ 0 ¯1 2
1 2 4  (-~0⍨)  1 3 2
⍝ ¯1 2
1 2 4  (×-~0⍨)  1 3 2
⍝ ¯1 1
1 2 4  (⊃⍤×-~0⍨)  1 3 2
⍝ ¯1

1 2 4  (-)  1 3 2
⍝ 0 ¯1 2
1 2 4  (×⍤-)  1 3 2
⍝ 0 ¯1 1
1 2 4  (2⊥×⍤-)  1 3 2
⍝ ¯1
6 2 5  (×⍤-)  7 1 3
⍝ ¯1 1 1
6 2 5  (2⊥×⍤-)  7 1 3
⍝ ¯1
6 2 5  (×⍤-)  7 1 3
⍝ ¯1 1 1
6 2 5  (4 2 1 × ×⍤-)  7 1 3
⍝ ¯4 2 1
6 2 5  (+/4 2 1 × ×⍤-)  7 1 3
⍝ ¯1
6 2 3  (+/4 2 1 × ×⍤-)  7 1 3
⍝ ¯2
6 2 3  (2⊥×⍤-)  7 1 3
⍝ ¯2
6 2 3  (×2⊥×⍤-)  7 1 3
⍝ ¯1
6 2 5  (×⍤-)  7 1 3
⍝ ¯1 1 1
6 10 10 (×2⊥×⍤-)  7 1 3
⍝ ¯1
