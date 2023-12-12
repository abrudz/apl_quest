⍝ Write a dfn that takes the length of the legs of a triangle as its left argument, and the length of the hypotenuse as its right argument and returns 1 if the triangle is a right triangle, 0 otherwise.
{(+/⍺*2)=⍵*2}
{(+.×⍨⍺)=×⍨⍵}  ⍝ inner product is equivalent for scalar functions on vectors
+.×⍨⍤⊣=×⍨⍤⊢    ⍝ tacit equivalent
(+/⍤⊣=⊢)⍥(×⍨)  ⍝ break out the squaring
=∘(+/)⍨⍥(×⍨)   ⍝ pre-process right
=∘(+/)⍥(×⍨)⍨
=⍥(+/×⍨)       ⍝ reducing a scalar does nothing
=⍥(+.×⍨)

{⍵=|(⊃⍺)+0J1×⊢/⍺}  ⍝ magnitude of complex number
=∘(|⊃+0J1×⊢/)⍨     ⍝ tacit equivalent
=∘(|⊃+¯11○⊢/)⍨     ⍝ definition of ¯11○
⊢=∘|0J1⊥⊣          ⍝ using i-base to combine parts (not shown in video)

{⍵=(⊃⌽⍺)×4○÷/⍺}
=∘(⊢/×4○÷/)⍨     ⍝ tacit equivalent
=∘(⊃×4○÷⍨/)⍨     ⍝ it doesn't matter which part is real or imaginary

÷⍥⌹≡÷
⍝ Derivation:
{((⌹⍺                ) ×⍵) ≡ ⍺÷⍵}  ⍝ unpacked
{((⍺ ÷ ((+/⍺*2)*÷2)*2) ×⍵) ≡ ⍺÷⍵}  ⍝ ⌹⍺ is equivalent to scaling ⍺ down by the square of its diagonal
{((⍺ ÷   +/⍺*2       ) ×⍵) ≡ ⍺÷⍵}  ⍝ *÷2 and *2 cancel out each other
{((  ÷   +/⍺*2       ) ×⍵) ≡  ÷⍵}  ⍝ divide both sides by ⍺
{( ⍵ ÷   +/⍺*2       )     ≡  ÷⍵}  ⍝ move ⍵
{(      (+/⍺*2)÷⍵    )     ≡   ⍵}  ⍝ reciprocal on both sides
{       (+/⍺*2)            ≡ ⍵*2}  ⍝ multiply by ⍵ on both sides
{(+/⍺*2)=⍵*2}
