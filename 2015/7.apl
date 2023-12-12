⍝ Write a function to perform case-insensitive membership between two arrays.
(6⍴⎕A) {(⎕C ⍺)∊(⎕C ⍵)} 'cdxy'
(6⍴⎕A) ((⎕C⊣)∊(⎕C⊢)) 'cdxy'
(6⍴⎕A) (⎕C⍤⊣∊⎕C⍤⊢) 'cdxy'
(6⍴⎕A) (∊⍥⎕C) 'cdxy'
(6⍴⎕A) ∊⍥⎕C 'cdxy'
(3 2⍴⎕A) ∊⍥⎕C (2 2⍴'cdxy')
(3 2⍴⎕A) ∊⍥⎕C⍥(⊂⍤¯1) (2 2⍴'cdxy')
(3 2⍴⎕A) ⍳⍨⍥⎕C (2 2⍴'cdxy')
(3 2⍴⎕A) ≢⍤⊢ (2 2⍴'cdxy')
(3 2⍴⎕A) (⍳⍨⍥⎕C≤≢⍤⊢) (2 2⍴'cdxy')

F←⍳⍨⍥⎕C≤≢⍤⊢
(3 2⍴⎕A) F (2 2⍴'cdxy')
