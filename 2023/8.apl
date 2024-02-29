⍝ The biorhythm theory is a pseudo-scientific idea that one’s life is affected by rhythmic cycles beginning from one’s date of birth.
⍝ “Critical days” are days when a cycle crosses the x-axis.
⍝ Double critical days can be calculated using multiples of:
⍝       23 23 28∧⍥(÷∘2)28 33 33
⍝ 322 379.5 462
⍝ The “triple critical day” only occurs every ∧/23 28 33÷2 days.
⍝ Write a function that: 
  ⍝ takes a 3-element integer left argument representing a valid birthdate
  ⍝ takes a 3-element integer right argument representing a valid date occurring on or after the left argument
  ⍝ returns a 3-element integer array representing the date of the next double or triple critical day occurring on or after the date represented by the right argument.
⍝ Note: All dates in here are to be in the form year month day

23 28 33÷2
⍝ 11.5 14 16.5
∘.∧⍨23 28 33÷2
⍝  11.5 322 379.5
⍝ 322    14 462
⍝ 379.5 462  16.5
(⍳3)(∘.∧⍨23 28 33÷2)
⍝ ┌─────┬───────────────┐
⍝ │1 2 3│ 11.5 322 379.5│
⍝ │     │322    14 462  │
⍝ │     │379.5 462  16.5│
⍝ └─────┴───────────────┘
(∘.<⍨⍳3)(∘.∧⍨23 28 33÷2)
⍝ ┌─────┬───────────────┐
⍝ │0 1 1│ 11.5 322 379.5│
⍝ │0 0 1│322    14 462  │
⍝ │0 0 0│379.5 462  16.5│
⍝ └─────┴───────────────┘
(∘.<⍨⍳3)/⍥,(∘.∧⍨23 28 33÷2)
⍝ 322 379.5 462
p←(∘.<⍨⍳3)/⍥,(∘.∧⍨23 28 33÷2)
1962 10 31  ,⍥(1⎕DT⊂)  2023 1 1 
⍝ 22949 44926
1962 10 31  -⍥(1⎕DT⊂)  2023 1 1 
⍝ ¯21977
1962 10 31  -⍨⍥(1⎕DT⊂)  2023 1 1 
⍝ 21977
1962 10 31  (p|-⍨)⍥(1⎕DT⊂)  2023 1 1 
⍝ 81 345.5 263
1962 10 31  (p|-)⍥(1⎕DT⊂)  2023 1 1 
⍝ 241 34 199
a←1962 10 31  (p|-⍨)⍥(1⎕DT⊂)  2023 1 1 
b←1962 10 31  (p|-)⍥(1⎕DT⊂)  2023 1 1 
a+b
⍝ 322 379.5 462
1962 10 31  (⊢+p|-)⍥(1⎕DT⊂)  2023 1 1 
⍝ 45167 44960 45125
1962 10 31  (¯1⎕DT⊢+p|-)⍥(1⎕DT⊂)  2023 1 1 
⍝ ┌─────────────────┬────────────────┬─────────────────┐
⍝ │2023 8 30 0 0 0 0│2023 2 4 0 0 0 0│2023 7 19 0 0 0 0│
⍝ └─────────────────┴────────────────┴─────────────────┘
1962 10 31  (⌊/⊢+p|-)⍥(1⎕DT⊂)  2023 1 1 
⍝ 44960
1962 10 31  (⊢+p⌊.|-)⍥(1⎕DT⊂)  2023 1 1 
⍝ 44960
1962 10 31  (¯1⎕DT⊢+p⌊.|-)⍥(1⎕DT⊂)  2023 1 1 
⍝ ┌────────────────┐
⍝ │2023 2 4 0 0 0 0│
⍝ └────────────────┘
1962 10 31  (⊃¯1⎕DT⊢+p⌊.|-)⍥(1⎕DT⊂)  2023 1 1 
⍝ 2023 2 4 0 0 0 0
1962 10 31  (3↑∘⊃¯1⎕DT⊢+p⌊.|-)⍥(1⎕DT⊂)  2023 1 1 
⍝ 2023 2 4
F←(3↑∘⊃¯1⎕DT⊢+322 379.5 462⌊.|-)⍥(1⎕DT⊂) 
1962 10 31  F  2023 1 1 
⍝ 2023 2 4
1962 10 31  F  1962 10 31 
⍝ 1962 10 31
