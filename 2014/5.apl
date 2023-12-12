⍝ Write a dfn which returns a 1 if its character vector argument is a palindrome, 0 otherwise. 
⍝ Intersection:
A←{c←⎕C⍵ ⋄ l←c/⍨c∊⎕C⎕A ⋄ l≡⌽l}
A←≡∘⌽⍨∩⍥⎕C∘⎕A      ⍝ tacit
B←≡∘⌽⍨∩∘(⎕A,⎕C⎕A)  ⍝ avoid case folding argument

⍝ Ranges:
C←{≡∘⌽⍨⎕C⍵/⍨2|'A[a{'⍸⍵}
C←≡∘⌽⍨∘⎕C⊢⊢⍤/⍨2|'A[a{'∘⍸
C←⊢≡∘⌽⍨∘⎕C⍤/⍨2|'A[a{'∘⍸
D←{≡∘⌽⍨32|u/⍨((65∘≤∧≤∘90)∨(97∘≤∧≤∘122))u←⎕UCS⍵}

⍝ Performance:
'cmpx'⎕CY'dfns'
t←(70↑⎕A,⎕C⎕A,',.!?')[?1e5⍴70]
p←,∘⌽⍨(70↑⎕A,⎕C⎕A,',.!?')[?5e4⍴70]
cmpx 'ABCD',¨⊂' t'
cmpx 'ABCD',¨⊂' p'
