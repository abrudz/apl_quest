2=/'Hello'
⍝ 0 0 1 0
∨/2=/'Hello'
⍝ 1
∨/2=/'World'
⍝ 0
∨/2=/'I'
⍝ RANK ERROR
⍝       ∨/2=/'I'
⍝          ∧
∨/2=/,'I'
⍝ 0
(∨/2=/,)¨'I' 'feed' 'the' 'bookkeeper'
⍝ 0 1 0 1
(∨/2=/,)¨'feed'
⍝ 0 0 0 0
(∨/2=/,)¨⊆'feed'
⍝ 1
(∨/2=/,)¨⊆'I' 'feed' 'the' 'bookkeeper'
⍝ 0 1 0 1
F←(∨/2=/,)¨⊆
F 'I' 'feed' 'the' 'bookkeeper'
⍝ 0 1 0 1
F 'feed'
⍝ 1
