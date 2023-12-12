⍝ Write a function that returns the population standard deviation of its numeric array right argument.
mean←+⌿÷≢
dev←⊢-mean
square←*∘2
sqrt←*∘0.5
stddev←sqrt∘mean∘square∘dev

stddev 3 1 4 1 5
⍝ 1.6
F←stddev,
F ,∘⍪⍨3 1 4 1 5
⍝ 1.6

]defs F
⍝ F ← *∘0.5∘(+⌿÷≢)∘(*∘2)∘(⊢-+⌿÷≢),
G ← ((2*∘÷⍨+⌿÷≢)2*⍨⊢-+⌿÷≢),
]aplcart stddev
⍝ X,Y,Z:any M,N:num I,J:int A,B:Bool C,D:char f,g,h:fn ax:axis s:scal v:vec m:mat
⍝ ───────────────────────────────────────────────────────────────────────────────
⍝ ((2*∘÷⍨+⌿÷≢)2*⍨⊢-+⌿÷≢)Nv     ⍝ Theoretical standard deviation
⍝ ((2*∘÷⍨+⌿÷¯1+≢)2*⍨⊢-+⌿÷≢)Nv  ⍝ Sample standard deviation
⍝ ───────────────────────────────────────────────────────────────────────────────
⍝ Showing 2 of 2 matches

under←{⍵⍵⍣¯1⊢ ⍺⍺ ⍵⍵ ⍵}
stddevU←mean under square∘dev
H←stddevU,
]defs H
⍝ H ← +⌿÷≢{⍵⍵⍣¯1⊢⍺⍺ ⍵⍵ ⍵}(*∘2)∘(⊢-+⌿÷≢),
I ← ((+⌿÷≢){⍵⍵⍣¯1⊢⍺⍺ ⍵⍵ ⍵}(×⍨)⊢-+⌿÷≢),
I 3 1 4 1 5
⍝ 1.6
