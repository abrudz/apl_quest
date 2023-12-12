⍝ Write a a function that takes a string representing a nucleotide and returns a 1 if it is a valid DNA string, 0 otherwise. In other words, are all the characters in the string in the set 'ACGT'?
{⍵∊'ACGT'}'ATGCTTCAGAAAGGTCTTACG'
⍝ 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
{∧/⍵∊'ACGT'}'ATGCTTCAGAAAGGTCTTACG'
⍝ 1
{⍵∊'ACGT'}'ATGCTTCAGAAAGGTxCTTACG'
⍝ 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1
{∧/⍵∊'ACGT'}'ATGCTTCAGAAAGGTxCTTACG'
⍝ 0
F←{∧/⍵∊'ACGT'}
F 'ATGCTTCAGAAAGGTxCTTACG'
⍝ 0
G←∧/∊∘'ACGT'
G 'ATGCTTCAGAAAGGTxCTTACG'
⍝ 0
G 'ATGCTTCAGAAAGGTCTTACG'
⍝ 1
