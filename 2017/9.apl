⍝ Write a function that takes a character vector or scalar and returns a Boolean vector indicating anywhere an element is followed by an element of the same value.
{2=/⍵}'Mississippi 39111'
⍝ 0 0 1 0 0 1 0 0 1 0 0 0 0 0 1 1
{(2=/⍵),0}'Mississippi 39111'
⍝ 0 0 1 0 0 1 0 0 1 0 0 0 0 0 1 1 0
{(2=/⍵),0}¨'Mississippi 39111' ''
⍝ LENGTH ERROR
{2=/⍵,'+'}¨'Mississippi 39111' ''
⍝ ┌─────────────────────────────────┬┐
⍝ │0 0 1 0 0 1 0 0 1 0 0 0 0 0 1 1 0││
⍝ └─────────────────────────────────┴┘
{2=/⍵,'+'}¨'Mississippi 39111' '' 'C++'
⍝ ┌─────────────────────────────────┬┬─────┐
⍝ │0 0 1 0 0 1 0 0 1 0 0 0 0 0 1 1 0││0 1 1│
⍝ └─────────────────────────────────┴┴─────┘
{⌽⍵}¨'Mississippi 39111' '' 'C++'
⍝ ┌─────────────────┬┬───┐
⍝ │11193 ippississiM││++C│
⍝ └─────────────────┴┴───┘
{⊃⌽⍵}¨'Mississippi 39111' '' 'C++'
⍝ 1 +
{'+-'~⊃⌽⍵}¨'Mississippi 39111' '' 'C++'
⍝ ┌──┬──┬─┐
⍝ │+-│+-│-│
⍝ └──┴──┴─┘
{⊃'+-'~⊃⌽⍵}¨'Mississippi 39111' '' 'C++'
⍝ ++-
{'+'~⊃⌽⍵}¨'Mississippi 39111' '' 'C++'
⍝ ┌─┬─┬┐
⍝ │+│+││
⍝ └─┴─┴┘
{⊃'+'~⊃⌽⍵}¨'Mississippi 39111' '' 'C++'
⍝ ++ 
{⍵,⊃'+'~⊃⌽⍵}¨'Mississippi 39111' '' 'C++'
⍝ ┌──────────────────┬─┬────┐
⍝ │Mississippi 39111+│+│C++ │
⍝ └──────────────────┴─┴────┘
{2=/⍵,⊃'+'~⊃⌽⍵}¨'Mississippi 39111' '' 'C++'
⍝ ┌─────────────────────────────────┬┬─────┐
⍝ │0 0 1 0 0 1 0 0 1 0 0 0 0 0 1 1 0││0 1 0│
⍝ └─────────────────────────────────┴┴─────┘

{2=/⍵}'Mississippi 39111'
⍝ 0 0 1 0 0 1 0 0 1 0 0 0 0 0 1 1
{0,⍨2=/⍵}'Mississippi 39111'
⍝ 0 0 1 0 0 1 0 0 1 0 0 0 0 0 1 1 0
{0,⍨2=/⍵}''
⍝ LENGTH ERROR
{2=/⍵},'5'
⍝ 
{≢⍵}¨'Mississippi 39111' ''
⍝ 17 0
{1⌈≢⍵}¨'Mississippi 39111' ''
⍝ 17 1
{⍵↑⍨1⌈≢⍵}¨'Mississippi 39111' ''
⍝ ┌─────────────────┬─┐
⍝ │Mississippi 39111│ │
⍝ └─────────────────┴─┘
{2=/⍵↑⍨1⌈≢⍵}¨'Mississippi 39111' ''
⍝ ┌───────────────────────────────┬┐
⍝ │0 0 1 0 0 1 0 0 1 0 0 0 0 0 1 1││
⍝ └───────────────────────────────┴┘
{(≢⍵)↑2=/⍵↑⍨1⌈≢⍵}¨'Mississippi 39111' ''
((≢)↑2=/(⊢)↑⍨1⌈(≢))¨'Mississippi 39111' ''
(≢↑2=/⊢↑⍨1⌈≢)¨'Mississippi 39111' ''
⍝ ┌─────────────────────────────────┬┐
⍝ │0 0 1 0 0 1 0 0 1 0 0 0 0 0 1 1 0││
⍝ └─────────────────────────────────┴┘
