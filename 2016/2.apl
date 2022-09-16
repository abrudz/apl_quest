d ← (3 1 4 1 5) (3 1 4 1) 1 ⍬ (,¯1)

⍝ Recursive one drop at a time:
MedianR  ← {2≥≢⍵:2÷⍨+/2⍴⍵ ⋄ ∇ 1↓¯1↓⍵[⍋⍵]},      

⍝ Compute how much to drop:
MedianD  ← {d←⌊2÷⍨¯1+≢⍵ ⋄ 2÷⍨+/2⍴d↓(-d)↓⍵[⍋⍵]},

⍝ Compute indices in sorted array:
MedianI  ← {⍬≡⍵:0 ⋄ 2÷⍨+/⍵[⍋⍵][⌈2÷⍨0 1+≢⍵]},

⍝ Compute indices in grade (indices that would sort array):
MedianI2 ← {⍬≡⍵:0 ⋄ 2÷⍨+/⍵[(⍋⍵)[⌈2÷⍨0 1+≢⍵]]},
