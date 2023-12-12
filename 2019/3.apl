⍝ Given a non-empty character vector of single-letter grades, produce a 3-column, 5-row, alphabetically-sorted matrix of each grade, the number of occurrences of that grade, and the percentage (rounded to 1 decimal position) of the total number of occurrences of that grade. The table should have a row for each grade even if there are no occurrences of a grade.
g←9 3 8 4 7/'DABFC'
{⍵} g
⍝ DDDDDDDDDAAABBBBBBBBFFFFCCCCCCC
'ABCDF'{⍺ ⍵} g
⍝ ┌─────┬───────────────────────────────┐
⍝ │ABCDF│DDDDDDDDDAAABBBBBBBBFFFFCCCCCCC│
⍝ └─────┴───────────────────────────────┘
'ABCDF'{⍺←'foo' ⋄ ⍺ ⍵} g
⍝ ┌─────┬───────────────────────────────┐
⍝ │ABCDF│DDDDDDDDDAAABBBBBBBBFFFFCCCCCCC│
⍝ └─────┴───────────────────────────────┘
{⍺←'foo' ⋄ ⍺ ⍵} g
⍝ ┌───┬───────────────────────────────┐
⍝ │foo│DDDDDDDDDAAABBBBBBBBFFFFCCCCCCC│
⍝ └───┴───────────────────────────────┘
{⍺←'ABCDF' ⋄ ⍺ ⍵} g
⍝ ┌─────┬───────────────────────────────┐
⍝ │ABCDF│DDDDDDDDDAAABBBBBBBBFFFFCCCCCCC│
⍝ └─────┴───────────────────────────────┘
{⍺←'ABCDF' ⋄ ⍺∘.=⍵} g
⍝ 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
⍝ 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0
⍝ 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1
⍝ 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
⍝ 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0
{⍺←'ABCDF' ⋄ +/⍺∘.=⍵} g
⍝ 3 8 7 9 4
{⍺←'ABCDF' ⋄ s←+/⍺∘.=⍵ ⋄ ≢⍵} g
⍝ 31
{⍺←'ABCDF' ⋄ s←+/⍺∘.=⍵ ⋄ s÷≢⍵} g
⍝ 0.09677419355 0.2580645161 0.2258064516 0.2903225806 0.1290322581
{⍺←'ABCDF' ⋄ s←+/⍺∘.=⍵ ⋄ 100×s÷≢⍵} g
⍝ 9.677419355 25.80645161 22.58064516 29.03225806 12.90322581
{⍺←'ABCDF' ⋄ s←+/⍺∘.=⍵ ⋄ ⍕100×s÷≢⍵} g
⍝ 9.677419355 25.80645161 22.58064516 29.03225806 12.90322581
{⍺←'ABCDF' ⋄ s←+/⍺∘.=⍵ ⋄ 1⍕100×s÷≢⍵} g
 9.7 25.8 22.6 29.0 12.9
{⍺←'ABCDF' ⋄ s←+/⍺∘.=⍵ ⋄ 2⍕100×s÷≢⍵} g
 9.68 25.81 22.58 29.03 12.90
{⍺←'ABCDF' ⋄ s←+/⍺∘.=⍵ ⋄ ¯2⍕100×s÷≢⍵} g
 9.7E0 2.6E1 2.3E1 2.9E1 1.3E1
{⍺←'ABCDF' ⋄ s←+/⍺∘.=⍵ ⋄ 1⍕100×s÷≢⍵} g
 9.7 25.8 22.6 29.0 12.9
{⍺←'ABCDF' ⋄ s←+/⍺∘.=⍵ ⋄ ⍎1⍕100×s÷≢⍵} g
⍝ 9.7 25.8 22.6 29 12.9
{⍺←'ABCDF' ⋄ s←+/⍺∘.=⍵ ⋄ ⍪⍎1⍕100×s÷≢⍵} g
 9.7
⍝ 25.8
⍝ 22.6
⍝ 29
⍝ 12.9
{⍺←'ABCDF' ⋄ s←+/⍺∘.=⍵ ⋄ s,⍪⍎1⍕100×s÷≢⍵} g
⍝ 3  9.7
⍝ 8 25.8
⍝ 7 22.6
⍝ 9 29
⍝ 4 12.9
{⍺←'ABCDF' ⋄ s←+/⍺∘.=⍵ ⋄ ⍺,s,⍪⍎1⍕100×s÷≢⍵} g
⍝ A 3  9.7
⍝ B 8 25.8
⍝ C 7 22.6
⍝ D 9 29
⍝ F 4 12.9
{⍺←'ABCDF' ⋄ s←+/⍺∘.=⍵ ⋄ ⍺,s,⍪1000×s÷≢⍵} g
⍝ A 3  96.77419355
⍝ B 8 258.0645161
⍝ C 7 225.8064516
⍝ D 9 290.3225806
⍝ F 4 129.0322581
{⍺←'ABCDF' ⋄ s←+/⍺∘.=⍵ ⋄ ⍺,s,⍪⌊1000×s÷≢⍵} g
⍝ A 3  96
⍝ B 8 258
⍝ C 7 225
⍝ D 9 290
⍝ F 4 129
{⍺←'ABCDF' ⋄ s←+/⍺∘.=⍵ ⋄ ⍺,s,⍪⌊0.5+1000×s÷≢⍵} g
⍝ A 3  97
⍝ B 8 258
⍝ C 7 226
⍝ D 9 290
⍝ F 4 129
{⍺←'ABCDF' ⋄ s←+/⍺∘.=⍵ ⋄ ⍺,s,⍪10÷⍨⌊0.5+1000×s÷≢⍵} g
⍝ A 3  9.7
⍝ B 8 25.8
⍝ C 7 22.6
⍝ D 9 29
⍝ F 4 12.9
