'GAGCCTACTAACGGGAT' = 'CATCGTAATGACGGCCT'
⍝ 0 1 0 1 0 1 1 0 1 0 1 1 1 1 0 0 1
'GAGCCTACTAACGGGAT' ≠ 'CATCGTAATGACGGCCT'
⍝ 1 0 1 0 1 0 0 1 0 1 0 0 0 0 1 1 0
+/ 'GAGCCTACTAACGGGAT' ≠ 'CATCGTAATGACGGCCT'
⍝ 7
F←{+/⍺≠⍵}
'GAGCCTACTAACGGGAT' F 'CATCGTAATGACGGCCT'
⍝ 7
G←+/≠
'GAGCCTACTAACGGGAT' G 'CATCGTAATGACGGCCT'
⍝ 7
'GAGCCTACTAACGGGAT' (+/≠) 'CATCGTAATGACGGCCT'
⍝ 7
1 2 3 +.× 10 100 1000
⍝ 3210
'GAGCCTACTAACGGGAT' (+.≠) 'CATCGTAATGACGGCCT'
⍝ 7
'GAGCCTACTAACGGGAT' +.≠ 'CATCGTAATGACGGCCT'
⍝ 7
H←+.≠
'GAGCCTACTAACGGGAT' H 'CATCGTAATGACGGCCT'
⍝ 7
