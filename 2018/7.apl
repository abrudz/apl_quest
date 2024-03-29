⍝ Write an APL expression that given a right argument of a Boolean scalar or vector, and left argument scalar integer of the shift amount, returns an appropriately shifted transformation of the right argument.
3 0 ¯3 {⍺⍵}¨⊂ 1 0 1 1 1 0 1 1  ⍝ pairing up arguments
⍝ ┌───────────────────┬───────────────────┬────────────────────┐
⍝ │┌─┬───────────────┐│┌─┬───────────────┐│┌──┬───────────────┐│
⍝ ││3│1 0 1 1 1 0 1 1│││0│1 0 1 1 1 0 1 1│││¯3│1 0 1 1 1 0 1 1││
⍝ │└─┴───────────────┘│└─┴───────────────┘│└──┴───────────────┘│
⍝ └───────────────────┴───────────────────┴────────────────────┘
3 0 ¯3 {⍵↓⍨-⍺}¨⊂ 1 0 1 1 1 0 1 1  ⍝ which ones we want to keep
⍝ ┌─────────┬───────────────┬─────────┐
⍝ │1 0 1 1 1│1 0 1 1 1 0 1 1│1 1 0 1 1│
⍝ └─────────┴───────────────┴─────────┘
3 0 ¯3 {⍺↓⍳≢⍵}¨⊂ 1 0 1 1 1 0 1 1  ⍝ where we want them
⍝ ┌─────────┬───────────────┬─────────┐
⍝ │4 5 6 7 8│1 2 3 4 5 6 7 8│1 2 3 4 5│
⍝ └─────────┴───────────────┴─────────┘
3 0 ¯3 {,0∧⍵}¨⊂ 1 0 1 1 1 0 1 1   ⍝ what canvas we want to draw on
⍝ ┌───────────────┬───────────────┬───────────────┐
⍝ │0 0 0 0 0 0 0 0│0 0 0 0 0 0 0 0│0 0 0 0 0 0 0 0│
⍝ └───────────────┴───────────────┴───────────────┘
3 0 ¯3 {(⍵↓⍨-⍺)@(⍺↓⍳≢⍵),0∧⍵}¨⊂ 1 0 1 1 1 0 1 1  ⍝ putting it all together
⍝ ┌───────────────┬───────────────┬───────────────┐
⍝ │0 0 0 1 0 1 1 1│1 0 1 1 1 0 1 1│1 1 0 1 1 0 0 0│
⍝ └───────────────┴───────────────┴───────────────┘
