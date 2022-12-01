⍝ Test case:
t←'Is "this" a "test"?'

⍝ Regex solution:
R←'"[^"]*"'⎕R'""'
R t
⍝ Is "" a ""?
R 'test "" is "good"'
⍝ test "" is ""
('"[^"]*"'⎕R'""') 'test "" is "good"'
⍝ test "" is ""
('"[^"]+"'⎕R'""') 'test "" is "good"'
⍝ test """good"

⍝ Printing helper function:
{⊃⍞←⍵' '}¨t
⍝ I s   " t h i s "   a   " t e s t " ? 
⍝ Is "this" a "test"?
P←{⊃⍞←⍵' '}¨

⍝ XOR-scan solution:
{'"'=⍵} P t
⍝ I s   " t h i s "   a   " t e s t " ? 
⍝ 0 0 0 1 0 0 0 0 1 0 0 0 1 0 0 0 0 1 0
{≠\'"'=⍵} P t
⍝ I s   " t h i s "   a   " t e s t " ? 
⍝ 0 0 0 1 1 1 1 1 0 0 0 0 1 1 1 1 1 0 0
{~≠\'"'=⍵} P t
⍝ I s   " t h i s "   a   " t e s t " ? 
⍝ 1 1 1 0 0 0 0 0 1 1 1 1 0 0 0 0 0 1 1
{m∨~≠\m←'"'=⍵} P t
⍝ I s   " t h i s "   a   " t e s t " ? 
⍝ 1 1 1 1 0 0 0 0 1 1 1 1 1 0 0 0 0 1 1
0 1∘.{⍺∨~⍵}0 1
⍝ 1 0
⍝ 1 1
0 1∘.{⍺≥⍵}0 1
⍝ 1 0
⍝ 1 1
{m≥≠\m←'"'=⍵} P t
⍝ I s   " t h i s "   a   " t e s t " ? 
⍝ 1 1 1 1 0 0 0 0 1 1 1 1 1 0 0 0 0 1 1
{(m≥≠\m←'"'=⍵)/⍵} P t
⍝ I s   " t h i s "   a   " t e s t " ? 
⍝ Is "" a ""?
{⍵/⍨m≥≠\m←'"'=⍵} P t
⍝ I s   " t h i s "   a   " t e s t " ? 
⍝ Is "" a ""?
X←{⍵/⍨m≥≠\m←'"'=⍵}
X t
⍝ Is "" a ""?

⍝ State machine solution:
{'"'=⍵} P t
⍝ I s   " t h i s "   a   " t e s t " ? 
⍝ 0 0 0 1 0 0 0 0 1 0 0 0 1 0 0 0 0 1 0
{l←1 ⋄ '"'=⍵} P t
⍝ I s   " t h i s "   a   " t e s t " ? 
⍝ 0 0 0 1 0 0 0 0 1 0 0 0 1 0 0 0 0 1 0
{l←1 ⋄ {l≠←⍵}¨'"'=⍵} P t
⍝ I s   " t h i s "   a   " t e s t " ? 
{l←1 ⋄ {l≠←⍵ ⋄ l}¨'"'=⍵} P t
⍝ I s   " t h i s "   a   " t e s t " ? 
⍝ 1 1 1 0 0 0 0 0 1 1 1 1 0 0 0 0 0 1 1
{l←1 ⋄ {l≠←⍵ ⋄ l∨⍵}¨'"'=⍵} P t
⍝ I s   " t h i s "   a   " t e s t " ? 
⍝ 1 1 1 1 0 0 0 0 1 1 1 1 1 0 0 0 0 1 1
{l←1 ⋄ {l∨l≠←⍵}¨'"'=⍵} P t
⍝ I s   " t h i s "   a   " t e s t " ? 
⍝ 1 1 1 1 0 0 0 0 1 1 1 1 1 0 0 0 0 1 1
{l←1 ⋄ ⍵/⍨{l∨l≠←⍵}¨'"'=⍵} P t
⍝ I s   " t h i s "   a   " t e s t " ? 
⍝ Is "" a ""?
S←{l←1 ⋄ ⍵/⍨{l∨l≠←⍵}¨'"'=⍵}
S t
⍝ Is "" a ""?
