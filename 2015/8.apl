a←11 12 13 14
F←{⍵-0.01×13=⍵}

b←11 'd' 13 'e'
F b
⍝ DOMAIN ERROR
⍝ F[0] F←{⍵-0.01×13=⍵}
⍝          ∧
G←{r⊣((13=r)/r)←12.99⊣r←⍵}

c←2 2⍴b
G c
⍝ RANK ERROR
⍝ G[0] G←{r⊣((13=r)/r)←12.99⊣r←⍵}
⍝                  ∧
H←{r⊣((13=,r)/,r)←12.99⊣r←⍵}
I←12.99@{13=⍵}

d←2 2⍴11 'ddd' 13 'e'
H d
⍝ DOMAIN ERROR
⍝ H[0] H←{r⊣((13=,r)/,r)←12.99⊣r←⍵}
⍝                   ∧
I d
⍝ DOMAIN ERROR: Right operand: not Boolean
⍝       I d
⍝       ∧
J←12.99@{⍵∊13}

e←2 2⍴11 ('ddd' 13) 'e'
J e  ⍝ fails to replace inner 13
K←{0≠≡⍵:∇¨⍵ ⋄ 13=⍵:12.99 ⋄ ⍵}
L←{r⊣((13=∊r)/∊r)←12.99⊣r←⍵}
M←{r⊣(∊r)←12.99@{13=⍵}∊r←⍵}
