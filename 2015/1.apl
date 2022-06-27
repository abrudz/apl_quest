x←'anagram'
y←'Nag A Ram!'

{⍵/⍨⍵∊⍥⎕C⎕A}y
{⍵∩⍥⎕C⎕A}y
{l[⍋l←⍵∩⍥⎕C⎕A]}y
x≡⍥{l[⍋l←⍵∩⍥⎕C⎕A]}y
A←≡⍥{l[⍋l←⍵∩⍥⎕C⎕A]} ⍝ shortest

B←≡⍥{{⍵[⍋⍵]}⍵∩⍥⎕C⎕A}
C←≡⍥{{⍵[⍋⍵]}∘⎕C⍵∩⎕A,⎕C⎕A}
D←≡⍥({⍵[⍋⍵]}∘⎕C∩∘(⎕A,⎕C⎕A))

t←(⊢↑⍨∘⌈1.2×≢)1000⍴',.;:!?',∘⎕C⍨⎕A
ta←{⍵[?⍨≢⍵]}t
tb←'-'@1⊢t

'cmpx'⎕CY'dfns'
cmpx 't∘'∘,¨'ABCD',¨⊂'¨1000⍴ta tb'
⍝  t∘A¨1000⍴ta tb → 2.7E¯2 |   0% ⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕
⍝  t∘B¨1000⍴ta tb → 1.8E¯2 | -35% ⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕              
⍝  t∘C¨1000⍴ta tb → 1.3E¯2 | -52% ⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕                     
⍝  t∘D¨1000⍴ta tb → 1.2E¯2 | -55% ⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕⎕                      

u←'Björn' 'Ma/dá' '-123' '3.14'
v←'Bjørn' 'Adám:' '321%' '2.71'

'\PL'⎕R''⊢u
E←≡⍥({⍵[⍋⍵]}∘⎕C'\PL'⎕R'') ⍝ remove non-letters
u E¨v

'[\pM\pZ\pP]'⎕R''⊢u
F←≡⍥({⍵[⍋⍵]}∘⎕C'[\pM\pZ\pP]'⎕R'') ⍝ remove spacing marks, spaces, punctuation
u F¨v
