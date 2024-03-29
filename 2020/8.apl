⍝ A zigzag number is an integer in which the difference in magnitude of each pair of consecutive digits alternates from positive to negative or negative to positive.
⍝ Write a function that takes a single integer greater than or equal to 100 and less than 1015 as its right argument and returns a 1 if the integer is a zigzag number, 0 otherwise.
10 10 10 10 10⊤3141514131415
⍝ 3 1 4 1 5
10⊥10 10 10 10 10⊤3141514131415
⍝ 31415
10(⊥⍣¯1)3141514131415
⍝ 3 1 4 1 5 1 4 1 3 1 4 1 5
{10(⊥⍣¯1)⍵}3141514131415
⍝ 3 1 4 1 5 1 4 1 3 1 4 1 5
{2-/10(⊥⍣¯1)⍵}3141514131415
⍝ 2 ¯3 3 ¯4 4 ¯3 3 ¯2 2 ¯3 3 ¯4
{×2-/10(⊥⍣¯1)⍵}3141514131415
⍝ 1 ¯1 1 ¯1 1 ¯1 1 ¯1 1 ¯1 1 ¯1
{2≠/×2-/10(⊥⍣¯1)⍵}3141514131415
⍝ 1 1 1 1 1 1 1 1 1 1 1
{×2-/10(⊥⍣¯1)⍵}31141514131415
⍝ 1 0 ¯1 1 ¯1 1 ¯1 1 ¯1 1 ¯1 1 ¯1
{2≠/×2-/10(⊥⍣¯1)⍵}31141514131415
⍝ 1 1 1 1 1 1 1 1 1 1 1 1
{2-/×2-/10(⊥⍣¯1)⍵}31141514131415
⍝ 1 1 ¯2 2 ¯2 2 ¯2 2 ¯2 2 ¯2 2
{2-/×2-/10(⊥⍣¯1)⍵}3141514131415
⍝ 2 ¯2 2 ¯2 2 ¯2 2 ¯2 2 ¯2 2
{|2-/×2-/10(⊥⍣¯1)⍵}3141514131415
⍝ 2 2 2 2 2 2 2 2 2 2 2
{|2-/×2-/10(⊥⍣¯1)⍵}31141514131415
⍝ 1 1 2 2 2 2 2 2 2 2 2 2
{|2-/×2-/10(⊥⍣¯1)⍵}311141514131415
⍝ 1 0 1 2 2 2 2 2 2 2 2 2 2
{|2-/×2-/10(⊥⍣¯1)⍵}3141514131415
⍝ 2 2 2 2 2 2 2 2 2 2 2
{2=|2-/×2-/10(⊥⍣¯1)⍵}3141514131415
⍝ 1 1 1 1 1 1 1 1 1 1 1
{∧/2=|2-/×2-/10(⊥⍣¯1)⍵}3141514131415
⍝ 1
{∧/2=|2-/×2-/10(⊥⍣¯1)⍵}31141514131415
⍝ 0
{∧/2=|2-/×2-/10(⊥⍣¯1)⍵}53141514131415
⍝ 0
F←{∧/2=|2-/×2-/10(⊥⍣¯1)⍵}

{2-/10(⊥⍣¯1)⍵}53141514131415
⍝ 2 2 ¯3 3 ¯4 4 ¯3 3 ¯2 2 ¯3 3 ¯4
{2×/2-/10(⊥⍣¯1)⍵}53141514131415
⍝ 4 ¯6 ¯9 ¯12 ¯16 ¯12 ¯9 ¯6 ¯4 ¯6 ¯9 ¯12
{2×/2-/10(⊥⍣¯1)⍵}3141514131415
⍝ ¯6 ¯9 ¯12 ¯16 ¯12 ¯9 ¯6 ¯4 ¯6 ¯9 ¯12
{0>2×/2-/10(⊥⍣¯1)⍵}3141514131415
⍝ 1 1 1 1 1 1 1 1 1 1 1
{∧/0>2×/2-/10(⊥⍣¯1)⍵}3141514131415
⍝ 1
G←{∧/0>2×/2-/10(⊥⍣¯1)⍵}
H←∧/0>2×/2-/10(⊥⍣¯1)⊢
H 3141514131415
⍝ 1
H 53141514131415
⍝ 0
H 31141514131415
⍝ 0
H←∧/0>2×/2-/10∘⊥⍣¯1
H 3141514131415
⍝ 1
H 53141514131415
⍝ 0
H 31141514131415
⍝ 0
