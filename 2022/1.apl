⍝ Write a function that:
⍝    takes a right argument that is a character vector or scalar representing a DNA string (whose alphabet contains the symbols 'A', 'C', 'G', and 'T').
⍝    returns a 4-element numeric vector containing the counts of each symbol 'A', 'C', 'G', and 'T' respectively.

dna←'AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC'

⍝ Simple solution:
'ACGT'∘.=dna
⍝ 1 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 1 1 0 0 0 0 0 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 1 1 1 1 1 1 0 1 0 0 0 0 0 0 0 1 0 1 0 0 1 0 0
⍝ 0 0 1 0 0 0 0 1 0 0 0 1 0 0 0 1 0 0 1 0 0 1 0 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 1
⍝ 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 1 1 1 0 0 0 0 0 0 1 0 0 0 0 0 1 0 1 0 1 1 0 0 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 1 0 0 0 1 0 0 1 0
⍝ 0 0 0 1 1 1 1 0 0 1 1 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 1 0 0 0 0 0 0
+/'ACGT'∘.=dna
⍝ 20 12 17 21
'ACGT'∘.='C'
⍝ 0 1 0 0
+/'ACGT'∘.='C'
⍝ 1
+/'ACGT'∘.=,'C'
⍝ 0 1 0 0
(+/'ACGT'∘.=,)'C'
⍝ 0 1 0 0
(+/'ACGT'∘.=,)dna
⍝ 20 12 17 21

⍝ Using Key:
{⍺,≢⍵}⌸dna
⍝ A 20
⍝ G 17
⍝ C 12
⍝ T 21
{⍺,≢⍵}⌸'ACCCT'
⍝ A 1
⍝ C 3
⍝ T 1
{⍺,≢⍵}⌸'ACGT',dna
⍝ A 21
⍝ C 13
⍝ G 18
⍝ T 22
¯1+{≢⍵}⌸'ACGT',dna
⍝ 20 12 17 21
{¯1+{≢⍵}⌸'ACGT',⍵}dna
⍝ 20 12 17 21

⍝ Using potential Key extension:
]get github.com/abrudz/dyalog_vision/blob/main/QuadEqual.aplo
⍝ #.QuadEqual
Ⓚ←#.QuadEqual
(≢¨'ACGT'Ⓚ)dna
⍝ 20 12 17 21
