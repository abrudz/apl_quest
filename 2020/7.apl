⍝ Write a function that, given a non-negative right argument which is an integer scalar representing the encoded state and a left argument which is an integer scalar representing the encoded state settings that you want to query, returns 1 if all of the codes in the left argument are found in the right argument (0 otherwise).
      3 (,) 10
3 10
      3 (2⊥⍣¯1,) 10
0 1
0 0
1 1
1 0
      3 (≤/2⊥⍣¯1,) 10
1 1 1 0
      3 ((∧/≤/)2⊥⍣¯1,) 10
0
      F←(∧/≤/)2⊥⍣¯1,
      3 F 11
1
      4 F 11
0
