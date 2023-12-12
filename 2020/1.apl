⍝ Write a function that, given a right argument Y which is a scalar or a non-empty vector and a left argument X which is a single non-zero integer so that its absolute value is less or equal to ≢Y, splits Y into a vector of two vectors according to X, as follows:
⍝ If X>0, the first vector contains the first X elements of Y and the second vector contains the remaining elements.
⍝ If X<0, the second vector contains the last |X elements of Y and the first vector contains the remaining elements.

3↑'DyalogAPL'
⍝ Dya
¯3↑'DyalogAPL'
⍝ APL
3↓'DyalogAPL'
⍝ logAPL
¯3↓'DyalogAPL'
⍝ Dyalog
3{(⍺↑⍵)(⍺↓⍵)}'DyalogAPL'
⍝ ┌───┬──────┐
⍝ │Dya│logAPL│
⍝ └───┴──────┘
¯3{(⍺↑⍵)(⍺↓⍵)}'DyalogAPL'
⍝ ┌───┬──────┐
⍝ │APL│Dyalog│
⍝ └───┴──────┘
¯3{⌽(⍺↑⍵)(⍺↓⍵)}'DyalogAPL'
⍝ ┌──────┬───┐
⍝ │Dyalog│APL│
⍝ └──────┴───┘
3{⌽(⍺↑⍵)(⍺↓⍵)}'DyalogAPL'
⍝ ┌──────┬───┐
⍝ │logAPL│Dya│
⍝ └──────┴───┘
3{(⌽⍣(0>⍺))(⍺↑⍵)(⍺↓⍵)}'DyalogAPL'
⍝ ┌───┬──────┐
⍝ │Dya│logAPL│
⍝ └───┴──────┘
¯3{(⌽⍣(0>⍺))(⍺↑⍵)(⍺↓⍵)}'DyalogAPL'
⍝ ┌──────┬───┐
⍝ │Dyalog│APL│
⍝ └──────┴───┘
¯3{1⌽(⍺↑⍵)(⍺↓⍵)}'DyalogAPL'
⍝ ┌──────┬───┐
⍝ │Dyalog│APL│
⍝ └──────┴───┘
3{0⌽(⍺↑⍵)(⍺↓⍵)}'DyalogAPL'
⍝ ┌───┬──────┐
⍝ │Dya│logAPL│
⍝ └───┴──────┘
3{(0>⍺)⌽(⍺↑⍵)(⍺↓⍵)}'DyalogAPL'
⍝ ┌───┬──────┐
⍝ │Dya│logAPL│
⍝ └───┴──────┘
¯3{(0>⍺)⌽(⍺↑⍵)(⍺↓⍵)}'DyalogAPL'
⍝ ┌──────┬───┐
⍝ │Dyalog│APL│
⍝ └──────┴───┘
¯3{(0>⍺)⌽(⍺↑⍵),⍥⊂(⍺↓⍵)}'DyalogAPL'
⍝ ┌──────┬───┐
⍝ │Dyalog│APL│
⍝ └──────┴───┘
¯3{(0>⍺)⌽⍺(↑,⍥⊂↓)⍵}'DyalogAPL'
⍝ ┌──────┬───┐
⍝ │Dyalog│APL│
⍝ └──────┴───┘
3{(0>⍺)⌽⍺(↑,⍥⊂↓)⍵}'DyalogAPL'
⍝ ┌───┬──────┐
⍝ │Dya│logAPL│
⍝ └───┴──────┘
3((0>⊣)⌽⊣(↑,⍥⊂↓)⊢)'DyalogAPL'
⍝ ┌───┬──────┐
⍝ │Dya│logAPL│
⍝ └───┴──────┘
¯3((0>⊣)⌽⊣(↑,⍥⊂↓)⊢)'DyalogAPL'
⍝ ┌──────┬───┐
⍝ │Dyalog│APL│
⍝ └──────┴───┘
¯3((0>⊣)⌽↑,⍥⊂↓)'DyalogAPL'
⍝ ┌──────┬───┐
⍝ │Dyalog│APL│
⍝ └──────┴───┘
F←(0>⊣)⌽↑,⍥⊂↓
¯3 F 'DyalogAPL'
⍝ ┌──────┬───┐
⍝ │Dyalog│APL│
⍝ └──────┴───┘
3 F 'DyalogAPL'
⍝ ┌───┬──────┐
⍝ │Dya│logAPL│
⍝ └───┴──────┘
