t←⍪'<name><first>Drake</first><last>Mallard</last></name>' '<math><relation>2<3</relation></math>'
t
⍝ ┌─────────────────────────────────────────────────────┐
⍝ │<name><first>Drake</first><last>Mallard</last></name>│
⍝ ├─────────────────────────────────────────────────────┤
⍝ │<math><relation>2<3</relation></math>                │
⍝ └─────────────────────────────────────────────────────┘
(∩∘'<>')¨t
⍝ ┌────────────┐
⍝ │<><><><><><>│
⍝ ├────────────┤
⍝ │<><><<><>   │
⍝ └────────────┘
((⊢⍷∩)∘'<>')¨t
⍝ ┌───────────────────────┐
⍝ │1 0 1 0 1 0 1 0 1 0 1 0│
⍝ ├───────────────────────┤
⍝ │1 0 1 0 0 1 0 1 0      │
⍝ └───────────────────────┘
((≢⍴1 0⍨)(⊢⍷∩)∘'<>')¨t
⍝ ┌───────────────────────┐
⍝ │1 0 1 0 1 0 1 0 1 0 1 0│
⍝ ├───────────────────────┤
⍝ │1 0 1 0 1 0 1 0 1      │
⍝ └───────────────────────┘
((⊢≡≢⍴1 0⍨)(⊢⍷∩)∘'<>')¨t
⍝ 1
⍝ 0
F←(⊢≡≢⍴1 0⍨)(⊢⍷∩)∘'<>'
F¨t
⍝ 1
⍝ 0
