⍝ Write a function that:
  ⍝ takes a scalar or vector left argument
  ⍝ takes a scalar or vector right argument
  ⍝ returns a Boolean result that is the same shape as the right argument where 1's mark the ends of occurrences of the left argument in the right argument

'issi' ⍷ 'Mississippi'
⍝ 0 1 0 0 1 0 0 0 0 0 0
↑'Mississippi'('issi' ⍷ 'Mississippi')
⍝ M i s s i s s i p p i
⍝ 0 1 0 0 1 0 0 0 0 0 0
↑'Mississippi'('issi' {1⌽⍺⍷⍵} 'Mississippi')
⍝ M i s s i s s i p p i
⍝ 1 0 0 1 0 0 0 0 0 0 0
↑'Mississippi'('issi' {¯1⌽⍺⍷⍵} 'Mississippi')
⍝ M i s s i s s i p p i
⍝ 0 0 1 0 0 1 0 0 0 0 0
↑'Mississippi'('issi' {(≢⍺)⌽⍺⍷⍵} 'Mississippi')
⍝ M i s s i s s i p p i
⍝ 1 0 0 0 0 0 0 0 1 0 0
↑'Mississippi'('issi' {(-≢⍺)⌽⍺⍷⍵} 'Mississippi')
⍝ M i s s i s s i p p i
⍝ 0 0 0 0 0 1 0 0 1 0 0
↑'Mississippi'('issi' {(-¯1+≢⍺)⌽⍺⍷⍵} 'Mississippi')
⍝ M i s s i s s i p p i
⍝ 0 0 0 0 1 0 0 1 0 0 0
↑'Mississippi'('issi' {(1-≢⍺)⌽⍺⍷⍵} 'Mississippi')
⍝ M i s s i s s i p p i
⍝ 0 0 0 0 1 0 0 1 0 0 0
↑'Mississippi'('issi' ({1-≢⍺}⌽⍷) 'Mississippi')
⍝ M i s s i s s i p p i
⍝ 0 0 0 0 1 0 0 1 0 0 0
F←{1-≢⍺}⌽⍷
'issi' F 'Mississippi'
⍝ 0 0 0 0 1 0 0 1 0 0 0
↑'Mississippi'('issi' (⍷) 'Mississippi')
⍝ M i s s i s s i p p i
⍝ 0 1 0 0 1 0 0 0 0 0 0
↑(⌽'Mississippi')('issi' (⍷⍥⌽) 'Mississippi')
⍝ i p p i s s i s s i M
⍝ 0 0 0 1 0 0 1 0 0 0 0
↑('Mississippi')('issi' (⌽⍷⍥⌽) 'Mississippi')
⍝ M i s s i s s i p p i
⍝ 0 0 0 0 1 0 0 1 0 0 0
G←⌽⍷⍥⌽
'issi' G 'Mississippi'
⍝ 0 0 0 0 1 0 0 1 0 0 0
