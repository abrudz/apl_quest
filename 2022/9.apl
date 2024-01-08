⍝ Write a function that:
  ⍝ takes a right argument Y that is a numeric scalar or non-empty vector.
  ⍝ takes a left argument X that represents the number of neighboring elements on either side of each element in Y.
  ⍝ returns a numeric vector or scalar where each element is the average (mean) of the corresponding element in Y and its X neighbors on either side. If an element has fewer than X neighbors on either side, replicate the first and last values as necessary to make X neighbors.

2 ((1+2×⊣)) 1 2 3 4 5 6
⍝ 5
2 ((1+2×⊣)+/⊢) 1 2 3 4 5 6
⍝ 15 20
2 ((1+2×⊣)(+/÷⊣)⊢) 1 2 3 4 5 6
⍝ 3 4
2 (⍴) 1 2 3 4 5 6
⍝ 1 2
2 (⍴∘⊃) 1 2 3 4 5 6
⍝ 1 1
2 (⍴∘⊃∘⌽) 1 2 3 4 5 6
⍝ 6 6
2 (⊢,⍴∘⊃∘⌽) 1 2 3 4 5 6
⍝ 1 2 3 4 5 6 6 6
2 (⍴∘⊃,⊢,⍴∘⊃∘⌽) 1 2 3 4 5 6
⍝ 1 1 1 2 3 4 5 6 6 6
2 ((1+2×⊣)(+/÷⊣)⍴∘⊃,⊢,⍴∘⊃∘⌽) 1 2 3 4 5 6
⍝ 1.6 2.2 3 4 4.8 5.4
F←(1+2×⊣)(+/÷⊣)⍴∘⊃,⊢,⍴∘⊃∘⌽
2 F 1 2 3 4 5 6
⍝ 1.6 2.2 3 4 4.8 5.4
1 F 1 2 3 4 5 6
⍝ 1.333333333 2 3 4 5 5.666666667
