⍝ Write a function that will reshape a given array into the smallest square matrix that will contain all the elements of the argument, padding with additional elements if necessary. The pad element should be 0 if the array is numeric and space ' ' if the array is character.
{≢⍵}1 2 3 4 5
⍝ 5
{(≢⍵)*÷2}1 2 3 4 5
⍝ 2.236067977
{⌈(≢⍵)*÷2}1 2 3 4 5
⍝ 3
{s×s←⌈(≢⍵)*÷2}1 2 3 4 5
⍝ 9
{⍵↑⍨s×s←⌈(≢⍵)*÷2}1 2 3 4 5
⍝ 1 2 3 4 5 0 0 0 0
{(s,s)⍴⍵↑⍨s×s←⌈(≢⍵)*÷2}1 2 3 4 5
{(,⍨⍴×⍨↑⍵⍨)⌈(≢⍵)*÷2}1 2 3 4 5
{s(,⍴×↑⍵⍨)s←⌈(≢⍵)*÷2}1 2 3 4 5
{(,⍴×↑⍵⍨)⍨⌈(≢⍵)*÷2}1 2 3 4 5
⍝ 1 2 3
⍝ 4 5 0
⍝ 0 0 0
