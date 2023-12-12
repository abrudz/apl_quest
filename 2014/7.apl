⍝ Imagine there are two circles that are tangent to one another. One circle is stationary, the other can “roll” around the stationary circle. Write a dfn which takes the diameters of the stationary and mobile circles and returns the number of revolutions the mobile must traverse until the tangent points meet again.
R←1{0=⍺|⍺⍺×⍵:⍺⍺ ⋄ ⍺((⍺⍺+1)∇∇)⍵} ⍝ Recursive
I←{1+⍣(0=⍺|⍵×⊣)0}               ⍝ Iterative

∘.R⍨⍳10

⍝ Fix non-terminationwith left argument of 0:
R←1{0=⍺:0 ⋄ 0=⍺|⍺⍺×⍵:⍺⍺ ⋄ ⍺((⍺⍺+1)∇∇)⍵}
I←{0=⍺:0 ⋄ 1+⍣(0=⍺|⍵×⊣)0}

'cmpx'⎕CY'dfns'
s←0,⍳100
m←⍳100
cmpx's∘.R m' 's∘.I m'
⍝  s∘.R m → 2.4E¯1 |   0% ⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕
⍝  s∘.I m → 1.1E¯1 | -54% ⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕                      

G←{⍺÷⍺∨⍵}   ⍝ GCD
L←{(⍺×⍵)÷⍵} ⍝ LCM
⍝ Tacit:
G←⊣÷∨
L←∧÷⊢

cmpx's∘.I m' 's∘.G m' 's∘.L m'
⍝  s∘.I m → 1.1E¯1 |   0% ⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕
⍝  s∘.G m → 1.8E¯3 | -99% ⎕                                       
⍝  s∘.L m → 1.9E¯3 | -99% ⎕                                       

cmpx 's∘.G m' 's∘.L m'
⍝  s∘.G m → 1.8E¯3 |  0% ⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕  
⍝  s∘.L m → 1.9E¯3 | +4% ⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕
