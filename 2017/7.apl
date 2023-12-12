⍝ Write a function that takes a character vector representing a DNA string and returns 4 integers of the number of occurrences for each of the symbols ‘A’, ‘C’, ‘G’, and ‘T’ respectively.
'ACGT' ∘.= 'ATTACCA'  ⍝ outer "product"
⍝ 1 0 0 1 0 0 1
⍝ 0 0 0 0 1 1 0
⍝ 0 0 0 0 0 0 0
⍝ 0 1 1 0 0 0 0

+/ 'ACGT' ∘.= 'ATTACCA'  ⍝ summation expression
⍝ 3 2 0 2

F←{+/ 'ACGT' ∘.= ⍵}  ⍝ as a function
F 'ATTACCA'
⍝ 3 2 0 2

G←+/ 'ACGT' ∘.= ⊢   ⍝ tacit
H←'ACGT' (+/∘.=) ⊢  ⍝ grouping together the computational parts
I←'ACGT'∘(+/∘.=)    ⍝ currying

Counts←+/∘.=     ⍝ general-purpose function
J←'ACGT'∘Counts  ⍝ deriving specific-use function from the general one
