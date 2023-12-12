⍝Write a function that, given a right argument which is an integer scalar or vector, returns a 1 if the values of the right argument conform to the following pattern (0 otherwise):
⍝    The elements increase or stay the same until the “apex” (highest value) is reached
⍝    After the apex, any remaining values decrease or remain the same

(⌈\)1 2 3 4 5 3 1
⍝ 1 2 3 4 5 5 5
(⌈\∘⌽)1 2 3 4 5 3 1
⍝ 1 3 5 5 5 5 5
(⌽⌈\∘⌽)1 2 3 4 5 3 1
⍝ 5 5 5 5 5 3 1
(⌈\ ⌊∘⌽ ⌈\∘⌽)1 2 3 4 5 3 1
⍝ 1 2 3 4 5 3 1
(⌈\ ⌊∘⌽ ⌈\∘⌽)1 2 3 4 5 3 1 4
⍝ 1 2 3 4 5 4 4 4
(⌈\ ⌊∘⌽ ⌈\∘⌽)1 2 3 4 1 3 1 
⍝ 1 2 3 4 3 3 1
(⌈\ ⌊∘⌽ ⌈\∘⌽)5 4 3 2 5 7 
⍝ 5 5 5 5 5 7
(⊢ ≡ ⌈\ ⌊∘⌽ ⌈\∘⌽)5 4 3 2 5 7 
⍝ 0
(⊢ ≡ ⌈\ ⌊∘⌽ ⌈\∘⌽)1 2 3 4 3 1 
⍝ 1
F←⊢≡⌈\⌊∘⌽⌈\∘⌽
F 1 2 3 2 1
⍝ 1
F 1 2 3 1
⍝ 1
