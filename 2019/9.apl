p←(2 4)(3 ¯8)(1 2)
{↑⍵}p
⍝ 2  4
⍝ 3 ¯8
⍝ 1  2
{↑⍵}2 4
⍝ 2 4
⍴{↑⍵}2 4
⍝ 2
⍴{↑⍵}p
⍝ 3 2
⍴{↑,⊆⍵}2 4
⍝ 1 2
{↑,⊆⍵}2 4
⍝ 2 4
{↑,⊆⍵}p
⍝ 2  4
⍝ 3 ¯8
⍝ 1  2
{1⊖↑,⊆⍵}p
⍝ 3 ¯8
⍝ 1  2
⍝ 2  4
{0 1⊖↑,⊆⍵}p
⍝ 2 ¯8
⍝ 3  2
⍝ 1  4
{0 ¯1⊖↑,⊆⍵}p
⍝ 2  2
⍝ 3  4
⍝ 1 ¯8
{(0 1⊖↑,⊆⍵)(0 ¯1⊖↑,⊆⍵)}p
⍝ ┌────┬────┐
⍝ │2 ¯8│2  2│
⍝ │3  2│3  4│
⍝ │1  4│1 ¯8│
⍝ └────┴────┘
{(0 1⊖⍵)(0 ¯1⊖⍵)}↑⍤,⍤⊆p
⍝ ┌────┬────┐
⍝ │2 ¯8│2  2│
⍝ │3  2│3  4│
⍝ │1  4│1 ¯8│
⍝ └────┴────┘
{(×/0 1⊖⍵)(×/0 ¯1⊖⍵)}↑⍤,⍤⊆p
⍝ ┌───────┬───────┐
⍝ │¯16 6 4│4 12 ¯8│
⍝ └───────┴───────┘
{(+/×/0 1⊖⍵)(+/×/0 ¯1⊖⍵)}↑⍤,⍤⊆p
⍝ ¯6 8
{(+/×/0 1⊖⍵)-(+/×/0 ¯1⊖⍵)}↑⍤,⍤⊆p
⍝ ¯14
{|(+/×/0 1⊖⍵)-(+/×/0 ¯1⊖⍵)}↑⍤,⍤⊆p
⍝ 14
{2÷⍨|(+/×/0 1⊖⍵)-(+/×/0 ¯1⊖⍵)}↑⍤,⍤⊆p
⍝ 7
{2÷⍨|(0 1⊖⍵)-⍥(+/×/)(0 ¯1⊖⍵)}↑⍤,⍤⊆p
⍝ 7
{2÷⍨|(0 1)-⍥(+/×/⍤⊖∘⍵)(0 ¯1)}↑⍤,⍤⊆p
⍝ 7
{2÷⍨|1-⍥(+/0∘,×/⍤⊖⍵⍨)¯1}↑⍤,⍤⊆p
⍝ 7
F←{2÷⍨|1-⍥(+/0∘,×/⍤⊖⍵⍨)¯1}↑⍤,⍤⊆
F p
⍝ 7
F 2 4
⍝ 0
