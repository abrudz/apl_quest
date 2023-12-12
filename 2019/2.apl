⍝ Write a function that, given an array of integer test scores in the inclusive range 0–100, returns an identically-shaped array of the corresponding letter grades according to the table to the left. 
s←2 3⍴71 82 81 82 84 59
{⍵} s
⍝ 71 82 81
⍝ 82 84 59
{0 65 70 80 90⍸⍵} s
⍝ 3 4 4
⍝ 4 4 1
{'FDCBA'[0 65 70 80 90⍸⍵]} s
⍝ CBB
⍝ BBF
