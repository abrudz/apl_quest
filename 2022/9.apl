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
