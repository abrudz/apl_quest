⍝ Write a dfn which produces a multiplication table.
⍝ Basic solution
∘.×⍨⍳

⍝ Without outer product
{×/¨⍳⍵ ⍵}
×⍤0 1⍨⍳
{+⍀⍵ ⍵⍴⍳⍵}
+⍀,⍨⍴⍳
+⍀,⍨⍴+⍀⍤⍴∘1
+⍀,⍨+\⍤⍴≢

⍝ Without operators
{⍵ ⍵⍴(⍵/⍳⍵)×(⍵×⍵)⍴⍳⍵}
{t×⍉t←⍵ ⍵⍴⍳⍵}
{↑(⍳⍵)×⊂⍳⍵}
↑⍳×(⊂⍳)
(↑⊢×⊂)⍳

⍝ Without arithmetic
{≢¨,¨⍳¨⍳⍵ ⍵}
≢⍤,⍤⍳¨⍳⍤,⍨
∘.{≢⍺/⍵/#}⍨⍳
≢⍤⍸¨⍳∘./⍳
∘.{≢#,⍣⍺⍣⍵⊢⍬}⍨⍳
