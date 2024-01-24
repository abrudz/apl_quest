⍝ In a Caesar cipher, each letter in the plaintext is replaced by a letter some fixed number of positions away in the alphabet, effectively "shifting" the alphabet.
⍝ Write a function that:
  ⍝ takes a single integer left argument representing the size of the shift
  ⍝ takes a character vector right argument representing the plaintext message
  ⍝ returns a result with the same shape as the right argument representing the encrypted message
⍝ Notes:
  ⍝ Use ' ',⎕A as the alphabet
  ⍝ You can assume that the plaintext message will contain only characters found in the alphabet.

⎕A
⍝ ABCDEFGHIJKLMNOPQRSTUVWXYZ
' ',⎕A
⍝  ABCDEFGHIJKLMNOPQRSTUVWXYZ
{(' ',⎕A)⍳⍵}'HELLO WORLDS'
⍝ 9 6 13 13 16 1 24 16 19 13 5 20
4{(' ',⎕A)[(' ',⎕A)⍳⍵]}'HELLO WORLDS'
⍝ HELLO WORLDS
4{(⍺⌽' ',⎕A)[(' ',⎕A)⍳⍵]}'HELLO WORLDS'
⍝ LIPPSD SVPHW
4⌽' ',⎕A
⍝ DEFGHIJKLMNOPQRSTUVWXYZ ABC
4{(⍺⌽a)[(a←' ',⎕A)⍳⍵]}'HELLO WORLDS'
⍝ LIPPSD SVPHW
4{(⍺⌽a)[⍵⍳⍨a←' ',⎕A]}'HELLO WORLDS'
⍝ LIPPSD SVPHW
F←{(⍺⌽a)[⍵⍳⍨a←' ',⎕A]}
4 F 'HELLO WORLDS'
⍝ LIPPSD SVPHW
¯4 F 'HELLO WORLDS'
⍝ DAHHKWSKNH O
¯4 F 4 F 'HELLO WORLDS'
⍝ HELLO WORLDS
