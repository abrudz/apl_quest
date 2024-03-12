⍝ Write a function that: 
  ⍝ takes a non-negative integer left argument, N
  ⍝ takes a space-delimited character vector right argument, string
  ⍝ returns an array of length N where:
    ⍝ if N is less than or equal to the number of sub-arrays in string, the first N-1 elements of the result are the first N-1 space-delimited partitions in string.The Nth element of the result is the remaining portion of string.
    ⍝ if N is greater than the number of sub-arrays, pad the result with as many empty arrays as necessary to achieve length N.

(' '(,)⊢)'this is a sample'
⍝  this is a sample
(' '(⊣=,)⊢)'this is a sample'
⍝ 1 0 0 0 0 1 0 0 1 0 1 0 0 0 0 0 0
(' '(⊢⊂⍨⊣=,)⊢)'this is a sample'
⍝ ┌─────┬───┬──┬──────┐
⍝ │this │is │a │sample│
⍝ └─────┴───┴──┴──────┘
(' '(,⊂⍨⊣=,)⊢)'this is a sample'
⍝ ┌─────┬───┬──┬───────┐
⍝ │ this│ is│ a│ sample│
⍝ └─────┴───┴──┴───────┘
(' '(=)⊢)'this is a sample'
⍝ 0 0 0 0 1 0 0 1 0 1 0 0 0 0 0 0
(' '(,⊂⍨2,=)⊢)'this is a sample'
⍝ ┌┬─────┬───┬──┬───────┐
⍝ ││ this│ is│ a│ sample│
⍝ └┴─────┴───┴──┴───────┘
(6↑' '(,⊂⍨2,=)⊢)'this is a sample'
⍝ ┌┬─────┬───┬──┬───────┬┐
⍝ ││ this│ is│ a│ sample││
⍝ └┴─────┴───┴──┴───────┴┘
(6↑' '(,⊂⍨⊣=,)⊢)'this is a sample'
⍝ ┌─────┬───┬──┬───────┬─────┬─────┐
⍝ │ this│ is│ a│ sample│     │     │
⍝ └─────┴───┴──┴───────┴─────┴─────┘
(' '(,⊂⍨2,=)⊢)'this is a sample'
⍝ ┌┬─────┬───┬──┬───────┐
⍝ ││ this│ is│ a│ sample│
⍝ └┴─────┴───┴──┴───────┘
3(⊣↑' '(,⊂⍨2,=)⊢)'this is a sample'
⍝ ┌┬─────┬───┐
⍝ ││ this│ is│
⍝ └┴─────┴───┘
3(⊣↓' '(,⊂⍨2,=)⊢)'this is a sample'
⍝ ┌──┬───────┐
⍝ │ a│ sample│
⍝ └──┴───────┘
3(⊣(↑,↓)' '(,⊂⍨2,=)⊢)'this is a sample'
⍝ ┌┬─────┬───┬──┬───────┐
⍝ ││ this│ is│ a│ sample│
⍝ └┴─────┴───┴──┴───────┘
3(⊣(↑,,/⍤↓)' '(,⊂⍨2,=)⊢)'this is a sample'
⍝ ┌┬─────┬───┬─────────┐
⍝ ││ this│ is│ a sample│
⍝ └┴─────┴───┴─────────┘
3(1↓⊣(↑,,/⍤↓)' '(,⊂⍨2,=)⊢)'this is a sample'
⍝ ┌─────┬───┬─────────┐
⍝ │ this│ is│ a sample│
⍝ └─────┴───┴─────────┘
3(1↓¨1↓⊣(↑,,/⍤↓)' '(,⊂⍨2,=)⊢)'this is a sample'
⍝ ┌────┬──┬────────┐
⍝ │this│is│a sample│
⍝ └────┴──┴────────┘
4(1↓¨1↓⊣(↑,,/⍤↓)' '(,⊂⍨2,=)⊢)'this is a sample'
⍝ ┌────┬──┬─┬──────┐
⍝ │this│is│a│sample│
⍝ └────┴──┴─┴──────┘
5(1↓¨1↓⊣(↑,,/⍤↓)' '(,⊂⍨2,=)⊢)'this is a sample'
⍝ ┌────┬──┬─┬──────┬┐
⍝ │this│is│a│sample││
⍝ └────┴──┴─┴──────┴┘
6(1↓¨1↓⊣(↑,,/⍤↓)' '(,⊂⍨2,=)⊢)'this is a sample'
⍝ ┌────┬──┬─┬──────┬┬┐
⍝ │this│is│a│sample│││
⍝ └────┴──┴─┴──────┴┴┘

{s=⊃s←' ',⍵}'this is a sample'
⍝ 1 0 0 0 0 1 0 0 1 0 1 0 0 0 0 0 0
{+\s=⊃s←' ',⍵}'this is a sample'
⍝ 1 1 1 1 1 2 2 2 3 3 4 4 4 4 4 4 4
3{⍺⌊+\s=⊃s←' ',⍵}'this is a sample'
⍝ 1 1 1 1 1 2 2 2 3 3 3 3 3 3 3 3 3
3{≠⍺⌊+\s=⊃s←' ',⍵}'this is a sample'
⍝ 1 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0
4{≠⍺⌊+\s=⊃s←' ',⍵}'this is a sample'
⍝ 1 0 0 0 0 1 0 0 1 0 1 0 0 0 0 0 0
5{≠⍺⌊+\s=⊃s←' ',⍵}'this is a sample'
⍝ 1 0 0 0 0 1 0 0 1 0 1 0 0 0 0 0 0
3{⍵⊂⍨≠⍺⌊+\s=⊃s←' ',⍵}'this is a sample'
⍝ ┌─────┬───┬────────┐
⍝ │this │is │a sample│
⍝ └─────┴───┴────────┘
3{s⊂⍨≠⍺⌊+\s=⊃s←' ',⍵}'this is a sample'
⍝ ┌─────┬───┬─────────┐
⍝ │ this│ is│ a sample│
⍝ └─────┴───┴─────────┘
5{s⊂⍨≠⍺⌊+\s=⊃s←' ',⍵}'this is a sample'
⍝ ┌─────┬───┬──┬───────┐
⍝ │ this│ is│ a│ sample│
⍝ └─────┴───┴──┴───────┘
5{s⊂⍨⍺,⍨≠⍺⌊+\s=⊃s←' ',⍵}'this is a sample'
⍝ ┌─────┬───┬──┬───────┬┬┬┬┬┐
⍝ │ this│ is│ a│ sample││││││
⍝ └─────┴───┴──┴───────┴┴┴┴┴┘
5{⍺↑s⊂⍨⍺,⍨≠⍺⌊+\s=⊃s←' ',⍵}'this is a sample'
⍝ ┌─────┬───┬──┬───────┬┐
⍝ │ this│ is│ a│ sample││
⍝ └─────┴───┴──┴───────┴┘
5{1↓¨⍺↑s⊂⍨⍺,⍨≠⍺⌊+\s=⊃s←' ',⍵}'this is a sample'
⍝ ┌────┬──┬─┬──────┬┐
⍝ │this│is│a│sample││
⍝ └────┴──┴─┴──────┴┘
⍝ 
