⍝ Write a function that takes as its right argument a vector of prices and as its left argument a numeric vector that indicates the number ordered and returns the total cost for the order.
+/ 5 0 2 × 2.99 4.99 1.99
5 0 2 {+/⍺×⍵} 2.99 4.99 1.99
5 0 2 (+/×) 2.99 4.99 1.99
5 0 2 +/⍤× 2.99 4.99 1.99
5 0 2 +.× 2.99 4.99 1.99
2 3⍴5 0 2 50 0 20
(2 3⍴5 0 2 50 0 20)+.× 2.99 4.99 1.99
