⍝ Write a dfn which calculates the distance (in meters) a projectile travels given an initial velocity in meters per second and a trajectory in degrees. Use 9.8 meters per second squared as the gravitational constant.
D←{9.8÷⍨(⍺*2)×1○2×○⍵÷180}
D←{9.8÷⍨⍺×⍺×1○2×○⍵÷180}
D←{9.8÷⍨⍺×⍺×1○○⍵÷90}
v←100 0 100 ⋄ a←45 45 90
v D a

⍝ Without ○
Sin←{-/(⍵∘*÷!)¯1+2×⍳9}  ⍝ Taylor series

0=1+*○0J1  ⍝ Euler's identity
¯1=*○0J1
(⍟¯1)=○0j1
(0J1×⍟¯1)=○¯1
(0J¯1×⍟¯1)=○1
0J¯1×⍟¯1

⍝ Madhava series
pi←4×-/÷¯1+2×⍳999
pi=○1
pi-○1

pi←(12*÷2)×-/÷(3∘*×1++⍨)0,⍳99
pi=○1
pi-○1

{9.8÷⍨⍺×⍺×Sin pi×⍵÷90}
