⍝ Write a dfn that returns the distance between two points in a space of any number of dimensions.
A←{0.5*⍨+/2*⍨⍺-⍵}
u1←2 2 ⋄ v1←5 6
u2←2 2 3 4 ⋄ v2←3 7 10 9
u1 A v1
u2 A u2
(↑u1 u2)(↑v1 v2)
(↑u1 u2)A(↑v1 v2)

B←0.5*⍨1⊥2*⍨-
u1 B v1
(↑u1 u2)B(↑v1 v2)
(⍉↑u1 u2)B(⍉↑v1 v2)

C←.5*⍨-+.×-  ⍝ code golf (doesn't work on higher rank args)
u1 C v1

]aplcart ⍣¯1 under operator
_U_←{⍺←{⍵ ⋄ ⍺⍺} ⋄ ⍵⍵⍣¯1⊢(⍵⍵ ⍺)⍺⍺(⍵⍵ ⍵)}
U←+/_U_(×⍨)-  ⍝ +/⍢(×⍨)-
(↑u1 u2)U(↑v1 v2)
