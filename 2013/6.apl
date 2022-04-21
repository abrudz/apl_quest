⍝ Only non-empty vectors
{(⌈/⍵)-(⌊/⍵)}

⍝ Only non-empty arrays
{(⌈/,⍵)-(⌊/,⍵)}
{(⌈/-⌊/),⍵}
(⌈/-⌊/),
⌈/∘,∘.-⍨

⍝ Even empty arrays
{0∊⍴⍵:0 ⋄ (⌈/-⌊/),⍵} 
(⊃⍤⌽-⊃){⍵[⍋⍵]}⍤,
((⌈/-⌊/)⊢↑⍨1⌈≢),

(⌈/-⌊/)⊢⍴⍨1⌈×/⍤⍴
(⌈/-⌊/),,0/⍨0∊⍴
(⌈/-⌊/),,0∩⍴

⍝ Even nested arrays
((⌈/-⌊/)⊢↑⍨1⌈≢)∊
((⌈/-⌊/)⊢,0/⍨⍬≡⊢)∊
((⌈/-⌊/)⊢,0∩⍴)∊