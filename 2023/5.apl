⍝ In the board game Risk, attacker and defender each roll a number of dice. The resulting rolls are then individually compared from highest to lowest.
  ⍝ If the attacker's die value is greater than the defender's, the defender loses one army.
  ⍝ If the defender's die value is greater than or equal to the attacker's, the attacker loses one army.
  ⍝ If one player rolls more dice than the other player, the additional dice are not considered in the evaluation.
⍝ For this problem, we'll generalize the task.
⍝ Write a function that: 
  ⍝ takes a non-empty, non-ascending integer vector left argument representing the attacker's dice rolls
  ⍝ takes a non-empty, non-ascending integer vector right argument representing the defender's dice rolls
  ⍝ returns a 2-element vector where the first element represents the number of armies the attacker lost, and the second element represents the number of armies the defender lost.

6 6 4 2 1  ∘.>  6 5 5
⍝ 0 1 1
⍝ 0 1 1
⍝ 0 0 0
⍝ 0 0 0
⍝ 0 0 0
6 6 4 2 1  (⍉∘.>)  6 5 5
⍝ 0 0 0 0 0
⍝ 1 1 0 0 0
⍝ 1 1 0 0 0
6 6 4 2 1  (1 2⍉∘.>)  6 5 5
⍝ 0 1 1
⍝ 0 1 1
⍝ 0 0 0
⍝ 0 0 0
⍝ 0 0 0
6 6 4 2 1  (2 1⍉∘.>)  6 5 5
⍝ 0 0 0 0 0
⍝ 1 1 0 0 0
⍝ 1 1 0 0 0
6 6 4 2 1  (1 1⍉∘.>)  6 5 5
⍝ 0 1 0
6 6 4 2 1  (1 1⍉∘.≤)  6 5 5
⍝ 1 0 1
6 6 4 2 1  (⍪1 1⍉∘.≤)  6 5 5
⍝ 1
⍝ 0
⍝ 1
6 6 4 2 1  ((⍪,~)1 1⍉∘.≤)  6 5 5
⍝ 1 0
⍝ 0 1
⍝ 1 0
6 6 4 2 1  ((+⌿⍪,~)1 1⍉∘.≤)  6 5 5
⍝ 2 1
F←(+⌿⍪,~)1 1⍉∘.≤
6 6 4 2 1 F 6 5 5
⍝ 2 1
