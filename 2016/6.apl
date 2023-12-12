⍝ Write a function that takes a vector of vectors as its right argument and returns it sorted by the length of each element. An element of the vector can be scalar or an empty vector.
d ← 1 'two' 'three' 4 '' (5 6 7 8)
d
⍝┌─┬───┬─────┬─┬┬───────┐
⍝│1│two│three│4││5 6 7 8│
⍝└─┴───┴─────┴─┴┴───────┘
≢ d
⍝6
≢¨ d
⍝1 3 5 1 0 4
⍋ ≢¨ d
⍝5 1 4 2 6 3
d[⍋ ≢¨ d]
⍝┌┬─┬─┬───┬───────┬─────┐
⍝││1│4│two│5 6 7 8│three│
⍝└┴─┴─┴───┴───────┴─────┘
{⍵[⍋ ≢¨ ⍵]} d
⍝┌┬─┬─┬───┬───────┬─────┐
⍝││1│4│two│5 6 7 8│three│
⍝└┴─┴─┴───┴───────┴─────┘
SbL←{⍵[⍋ ≢¨ ⍵]}
SbL d
⍝┌┬─┬─┬───┬───────┬─────┐
⍝││1│4│two│5 6 7 8│three│
⍝└┴─┴─┴───┴───────┴─────┘
