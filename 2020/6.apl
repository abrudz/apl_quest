⍝ Write a function that, given a right argument which is an integer vector and a left argument which is an integer scalar, reorders the right argument so any elements equal to the left argument come first while all other elements keep their order.
3 {⍺=⍵} 1 2 3 4 1 3 1 4 5
⍝ 0 0 1 0 0 1 0 0 0
3 {⍺≠⍵} 1 2 3 4 1 3 1 4 5
⍝ 1 1 0 1 1 0 1 1 1
3 {⍋⍺≠⍵} 1 2 3 4 1 3 1 4 5
⍝ 3 6 1 2 4 5 7 8 9
3 {⍵[⍋⍺≠⍵]} 1 2 3 4 1 3 1 4 5
⍝ 3 3 1 2 4 1 1 4 5

3 (~⍨) 1 2 3 4 1 3 1 4 5
⍝ 1 2 4 1 1 4 5
3 (∩⍨) 1 2 3 4 1 3 1 4 5
⍝ 3 3
3 (∩⍨,~⍨) 1 2 3 4 1 3 1 4 5
⍝ 3 3 1 2 4 1 1 4 5
3 (∩,~)⍨ 1 2 3 4 1 3 1 4 5
⍝ 3 3 1 2 4 1 1 4 5
3 (∩∪~)⍨ 1 2 3 4 1 3 1 4 5
⍝ 3 3 1 2 4 1 1 4 5
