⍝ Write a dfn which selects the floating point (non-integer) numbers from a numeric vector.
v  ← ¯3.1 4 1.5 92.6 ¯5
F  ← {⍵/⍨⍵≠⌊⍵}
Ft ← /⍨∘(≠∘⌊⍨)⍨

w  ← 1e¯13+⍳15
14⍕w
Fc ← {⎕CT←0 ⋄ ⍵/⍨⍵≠⌊⍵}

G  ← {⍵/⍨645=⎕DR¨⍵}
x  ← v,1e400
Gd ← {⍵/⍨645 1287∊⍨⎕DR¨⍵}

H  ← {⍵/⍨'.'∊∘⍕¨⍵}
Hp ← {⎕PP←34 ⋄ ⍵/⍨'.'∊∘⍕¨⍵}

I  ← {⍵/⍨×1|⍵}
Ic ← {⎕CT←0 ⋄ ⍵/⍨×1|⍵}
Id ← {⍵/⍨×1⊤⍵}

Fs ← {⍵/⍨0≠⍵-⌊⍵}

Jk ← ∊{0::⍵⋄⍵/⍬}¨
