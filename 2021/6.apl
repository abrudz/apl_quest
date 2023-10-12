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
