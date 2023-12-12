⍝ Write a function that:
⍝    has a right argument that is a numeric scalar or vector of length up to 3, representing a number of [[[days] hours] minutes] – a single number represents minutes, a 2-element vector represents hours and minutes, and a 3-element vector represents days, hours, and minutes.
⍝   has a similar left argument, although not necessarily the same length as the right argument.
⍝   returns a single number representing the magnitude of the difference in minutes between the arguments.

2 30  ,⍥{¯3↑⍵}  5 15
⍝ 0 2 30 0 5 15
2 30  ,⍥{0 24 60⊥¯3↑⍵}  5 15
⍝ 150 315
2 30  -⍥{0 24 60⊥¯3↑⍵}  5 15
⍝ ¯165
2 30  |⍤-⍥{0 24 60⊥¯3↑⍵}  5 15
⍝ 165
