2 4 7 3 9  {⍺⍵}¨∘⊂  5 7 8 1 12 10
⍝ ┌─────────────────┬─────────────────┬─────────────────┬─────────────────┬─────────────────┐
⍝ │┌─┬─────────────┐│┌─┬─────────────┐│┌─┬─────────────┐│┌─┬─────────────┐│┌─┬─────────────┐│
⍝ ││2│5 7 8 1 12 10│││4│5 7 8 1 12 10│││7│5 7 8 1 12 10│││3│5 7 8 1 12 10│││9│5 7 8 1 12 10││
⍝ │└─┴─────────────┘│└─┴─────────────┘│└─┴─────────────┘│└─┴─────────────┘│└─┴─────────────┘│
⍝ └─────────────────┴─────────────────┴─────────────────┴─────────────────┴─────────────────┘
2 4 7 3 9  {⍺|⍵}¨∘⊂  5 7 8 1 12 10
⍝ ┌───────────┬───────────┬───────────┬───────────┬───────────┐
⍝ │1 1 0 1 0 0│1 3 0 1 0 2│5 0 1 1 5 3│2 1 2 1 0 1│5 7 8 1 3 1│
⍝ └───────────┴───────────┴───────────┴───────────┴───────────┘
2 4 7 3 9  {0=⍺|⍵}¨∘⊂  5 7 8 1 12 10
⍝ ┌───────────┬───────────┬───────────┬───────────┬───────────┐
⍝ │0 0 1 0 1 1│0 0 1 0 1 0│0 1 0 0 0 0│0 0 0 0 1 0│0 0 0 0 0 0│
⍝ └───────────┴───────────┴───────────┴───────────┴───────────┘
2 4 7 3 9  {⍵/⍨0=⍺|⍵}¨∘⊂  5 7 8 1 12 10
⍝ ┌───────┬────┬─┬──┬┐
⍝ │8 12 10│8 12│7│12││
⍝ └───────┴────┴─┴──┴┘

2 4 7 3 9  (∘.|)  5 7 8 1 12 10
⍝ 1 1 0 1 0 0
⍝ 1 3 0 1 0 2
⍝ 5 0 1 1 5 3
⍝ 2 1 2 1 0 1
⍝ 5 7 8 1 3 1
2 4 7 3 9  (0=∘.|)  5 7 8 1 12 10
⍝ 0 0 1 0 1 1
⍝ 0 0 1 0 1 0
⍝ 0 1 0 0 0 0
⍝ 0 0 0 0 1 0
⍝ 0 0 0 0 0 0
2 4 7 3 9  ((0=∘.|)/⍤1⊢)  5 7 8 1 12 10
⍝ 0
2 4 7 3 9  ((0=∘.|)(/⍤1)⊢)  5 7 8 1 12 10
⍝  8 12 10
⍝  8 12  0
⍝  7  0  0
⍝ 12  0  0
⍝  0  0  0
2 4 7 3 9  ((0=∘.|)(⊂⍤/⍤1)⊢)  5 7 8 1 12 10
⍝ ┌───────┬────┬─┬──┬┐
⍝ │8 12 10│8 12│7│12││
⍝ └───────┴────┴─┴──┴┘
2 4 7 3 9  ((0=∘.|)(,./)⊢)  5 7 8 1 12 10
⍝ ┌───────┬────┬─┬──┬┐
⍝ │8 12 10│8 12│7│12││
⍝ └───────┴────┴─┴──┴┘
2 4 7 3 9  ((0=∘.|),./⊢)  5 7 8 1 12 10
⍝ ┌───────┬────┬─┬──┬┐
⍝ │8 12 10│8 12│7│12││
⍝ └───────┴────┴─┴──┴┘
2 4 7 3 9  (⊢,./⍨0=∘.|)  5 7 8 1 12 10
⍝ ┌───────┬────┬─┬──┬┐
⍝ │8 12 10│8 12│7│12││
⍝ └───────┴────┴─┴──┴┘
