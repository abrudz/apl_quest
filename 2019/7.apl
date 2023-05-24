w←'APL' 'Problem' 'Solving' 'Competition'
↑w
⍝ APL        
⍝ Problem    
⍝ Solving    
⍝ Competition
10↑⍤1↑w
⍝ APL       
⍝ Problem   
⍝ Solving   
⍝ Competitio
{' '=⍵}10↑⍤1↑w
⍝ 0 0 0 1 1 1 1 1 1 1
⍝ 0 0 0 0 0 0 0 1 1 1
⍝ 0 0 0 0 0 0 0 1 1 1
⍝ 0 0 0 0 0 0 0 0 0 0
{+/' '=⍵}10↑⍤1↑w
⍝ 7 3 3 0
{2÷⍨+/' '=⍵}10↑⍤1↑w
⍝ 3.5 1.5 1.5 0
{⌊2÷⍨+/' '=⍵}10↑⍤1↑w
⍝ 3 1 1 0
{-⌊2÷⍨+/' '=⍵}10↑⍤1↑w
⍝ ¯3 ¯1 ¯1 0
{⍵⌽⍨-⌊2÷⍨+/' '=⍵}10↑⍤1↑w
⍝    APL    
⍝  Problem  
⍝  Solving  
⍝ Competitio
F←{⍵⌽⍨-⌊2÷⍨+/' '=⍵}↑⍤1∘↑
10 F w
⍝    APL    
⍝  Problem  
⍝  Solving  
⍝ Competitio
