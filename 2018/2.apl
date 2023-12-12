⍝ Write an APL expression that, given a scalar real non-negative number, will return a two-element vector of the integer and fractional parts of the number.
⍝ Floor-based:
⌊1.2345
⍝ 1

(⌊)1.2345
⍝ 1

(⊢)1.2345
⍝ 1.2345

(⊢-⌊)1.2345
⍝ 0.2345

(⌊,⊢-⌊)1.2345
⍝ 1 0.2345

⍝ Remainder-based:
10÷3
⍝ 3.333333333

3|10
⍝ 1

3|11
⍝ 2

1.2345÷1
⍝ 1.2345

1|1.2345
⍝ 0.2345

(⌊,1∘|)1.2345
⍝ 1 0.2345

⍝ Encode-based
0 60⊤96
⍝ 1 36

0 60⊤96.5
⍝ 1 36.5

0 1⊤96.5
⍝ 96 0.5

0 1⊤1.2345
⍝ 1 0.2345

0 1∘⊤ 1.2345
⍝ 1 0.2345
