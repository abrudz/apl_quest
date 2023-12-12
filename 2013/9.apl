⍝ Write a dfn which produces n month moving averages for a year’s worth of data.
⍝ Basic solutions
(÷⌿÷≢)¨,/           ⍝ naive solution
{(⍺+⌿⍵)÷⍺}          ⍝ better solution
+⌿÷⊣                ⍝ tacit equivalent
{((⍺⌊13)+⌿⍵)÷⍺⌊13}  ⍝ handle n>13

⍝ For any length right argument
{((⍺⌊1+≢⍵)+⌿⍵)÷⍺}
{(⍺⌊1+≢⍵)(+⌿÷⊣)⍵}  ⍝ using the beautiful solution
{⍵(+⌿÷⊣)⍨⍺⌊1+≢⍵}   ⍝ argument swap
{⍺÷⍨⍵+⌿⍨⍺⌊1+≢⍵}    ⍝ unroll train
⊣÷⍨⊢+⌿⍨⊣⌊1+≢⍤⊢     ⍝ tacit equivalent
⊣÷⍨⊢+⌿⍨⊣⌊≢⍤,       ⍝ code golf

⍝ Using error trapping
{5::⍬ ⋄ ⍺÷⍨⍺+/⍵}
]aplcart adverse
_Adv_←{⍺←⊢ ⋄ 0::⍺ ⍵⍵ ⍵ ⋄ ⍺ ⍺⍺ ⍵}
(+⌿÷⊣)_Adv_{⍬}

⍝ Checking the argument
{⍺>≢⍵:⍬ ⋄ ⍺÷⍨⍺+/⍵}
{⍺>≢⍵:0⌿⍵ ⋄ ⍺÷⍨⍺+⌿⍵}  ⍝ for higher rank
