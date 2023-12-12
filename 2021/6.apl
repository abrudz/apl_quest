⍝ For a chessboard Write a function that:
⍝   has a character vector right argument that is a permutation of 'KQRRBBNN'
⍝   returns 1 if the following are true:
⍝      the K is between the two Rs
⍝       the Bs occupy one odd and one even position
⍝   otherwise a 0 is returned.

{⍵∩'KR'}¨'RNBQKBNR' 'RBBNQNRK' 'BRBKRNQN' 
⍝ ┌───┬───┬───┐
⍝ │RKR│RRK│RKR│
⍝ └───┴───┴───┘
{'RKR'≡⍵∩'KR'}¨'RNBQKBNR' 'RBBNQNRK' 'BRBKRNQN' 
⍝ 1 0 1
{('B'=⍵)⊣'RKR'≡⍵∩'KR'}¨'RNBQKBNR' 'RBBNQNRK' 'BRBKRNQN' 
⍝ ┌───────────────┬───────────────┬───────────────┐
⍝ │0 0 1 0 0 1 0 0│0 1 1 0 0 0 0 0│1 0 1 0 0 0 0 0│
⍝ └───────────────┴───────────────┴───────────────┘
{(⍸'B'=⍵)⊣'RKR'≡⍵∩'KR'}¨'RNBQKBNR' 'RBBNQNRK' 'BRBKRNQN' 
⍝ ┌───┬───┬───┐
⍝ │3 6│2 3│1 3│
⍝ └───┴───┴───┘
{(2|⍸'B'=⍵)⊣'RKR'≡⍵∩'KR'}¨'RNBQKBNR' 'RBBNQNRK' 'BRBKRNQN' 
⍝ ┌───┬───┬───┐
⍝ │1 0│0 1│1 1│
⍝ └───┴───┴───┘
{(≠/2|⍸'B'=⍵)⊣'RKR'≡⍵∩'KR'}¨'RNBQKBNR' 'RBBNQNRK' 'BRBKRNQN' 
⍝ 1 1 0
{(≠/2|⍸'B'=⍵)∧'RKR'≡⍵∩'KR'}¨'RNBQKBNR' 'RBBNQNRK' 'BRBKRNQN' 
⍝ 1 0 0
