⍝ Given a word or a list of words, return a Boolean vector where 1 indicates a word with one or more consecutive duplicated, case-sensitive, letters. Each word will have at least one letter and will consist entirely of either uppercase (A–Z) or lowercase (a–z) letters. Words consisting of a single letter can be scalars.
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
