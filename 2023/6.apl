⍝ Write a function that:
  ⍝ takes a 2-element character vector left argument where the first element represents the separator character between multiple key/value pairs and the second element represents the separator between the key and the value for each pair.
  ⍝ takes a character vector right argument representing a valid set of key/value pairs (delimited as specified by the left argument).
  ⍝ returns a 2-column matrix where the first column contains the character vector keys of the key/value pairs and the second column contains the character vector values.

'/'≠'CTO:Morten/ATA:Brian/HLD:Adám'
⍝ 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1
'/'⊢'CTO:Morten/ATA:Brian/HLD:Adám'
⍝ CTO:Morten/ATA:Brian/HLD:Adám
'/'(≠⊆⊢)'CTO:Morten/ATA:Brian/HLD:Adám'
⍝ ┌──────────┬─────────┬────────┐
⍝ │CTO:Morten│ATA:Brian│HLD:Adám│
⍝ └──────────┴─────────┴────────┘
':'(≠⊆⊢)¨'/'(≠⊆⊢)'CTO:Morten/ATA:Brian/HLD:Adám'
⍝ ┌────────────┬───────────┬──────────┐
⍝ │┌───┬──────┐│┌───┬─────┐│┌───┬────┐│
⍝ ││CTO│Morten│││ATA│Brian│││HLD│Adám││
⍝ │└───┴──────┘│└───┴─────┘│└───┴────┘│
⍝ └────────────┴───────────┴──────────┘
↑':'(≠⊆⊢)¨'/'(≠⊆⊢)'CTO:Morten/ATA:Brian/HLD:Adám'
⍝ ┌───┬──────┐
⍝ │CTO│Morten│
⍝ ├───┼──────┤
⍝ │ATA│Brian │
⍝ ├───┼──────┤
⍝ │HLD│Adám  │
⍝ └───┴──────┘
'/:'{↑⍺[2](≠⊆⊢)¨⍺[1](≠⊆⊢)⍵}'CTO:Morten/ATA:Brian/HLD:Adám'
⍝ ┌───┬──────┐
⍝ │CTO│Morten│
⍝ ├───┼──────┤
⍝ │ATA│Brian │
⍝ ├───┼──────┤
⍝ │HLD│Adám  │
⍝ └───┴──────┘
'/:'{⍺[1](≠⊆⊢)⍵}'CTO:Morten/ATA:Brian/HLD:Adám'
⍝ ┌──────────┬─────────┬────────┐
⍝ │CTO:Morten│ATA:Brian│HLD:Adám│
⍝ └──────────┴─────────┴────────┘
'/:'{⍺[1](≠⊆⊢)¨⊂⍵}'CTO:Morten/ATA:Brian/HLD:Adám'
⍝ ┌───────────────────────────────┐
⍝ │┌──────────┬─────────┬────────┐│
⍝ ││CTO:Morten│ATA:Brian│HLD:Adám││
⍝ │└──────────┴─────────┴────────┘│
⍝ └───────────────────────────────┘
'/:'{⊃⍺[1](≠⊆⊢)¨⊂⍵}'CTO:Morten/ATA:Brian/HLD:Adám'
⍝ ┌──────────┬─────────┬────────┐
⍝ │CTO:Morten│ATA:Brian│HLD:Adám│
⍝ └──────────┴─────────┴────────┘
'/:'{↑⍺[2](≠⊆⊢)¨⊃⍺[1](≠⊆⊢)¨⊂⍵}'CTO:Morten/ATA:Brian/HLD:Adám'
⍝ ┌───┬──────┐
⍝ │CTO│Morten│
⍝ ├───┼──────┤
⍝ │ATA│Brian │
⍝ ├───┼──────┤
⍝ │HLD│Adám  │
⍝ └───┴──────┘
kvp←'CTO:Morten/ATA:Brian/HLD:Adám'
'/:'{↑⍺[2](≠⊆⊢)¨⊃⍺[1](≠⊆⊢)¨⊂⍵}kvp
⍝ ┌───┬──────┐
⍝ │CTO│Morten│
⍝ ├───┼──────┤
⍝ │ATA│Brian │
⍝ ├───┼──────┤
⍝ │HLD│Adám  │
⍝ └───┴──────┘
'/:'{↑⍺[2](≠⊆⊢)¨↑⍺[1](≠⊆⊢)¨⊂⍵}kvp
⍝ ┌───┬──────┐
⍝ │CTO│Morten│
⍝ ├───┼──────┤
⍝ │ATA│Brian │
⍝ ├───┼──────┤
⍝ │HLD│Adám  │
⍝ └───┴──────┘
'/:'{↑⍺[2](≠⊆¨⊢)↑⍺[1](≠⊆¨⊢)⊂⍵}kvp
⍝ ┌───┬──────┐
⍝ │CTO│Morten│
⍝ ├───┼──────┤
⍝ │ATA│Brian │
⍝ ├───┼──────┤
⍝ │HLD│Adám  │
⍝ └───┴──────┘
'/:'{⍺[2](↑≠⊆¨⊢)⍺[1](↑≠⊆¨⊢)⊂⍵}kvp
⍝ ┌───┬──────┐
⍝ │CTO│Morten│
⍝ ├───┼──────┤
⍝ │ATA│Brian │
⍝ ├───┼──────┤
⍝ │HLD│Adám  │
⍝ └───┴──────┘
'/:'{⊃(↑≠⊆¨⊢)/(⍺[2])(⍺[1])(⊂⍵)}kvp
⍝ ┌───┬──────┐
⍝ │CTO│Morten│
⍝ ├───┼──────┤
⍝ │ATA│Brian │
⍝ ├───┼──────┤
⍝ │HLD│Adám  │
⍝ └───┴──────┘
'/:'{⊃(↑≠⊆¨⊢)/⍺[2 1],⊂⊂⍵}kvp
⍝ ┌───┬──────┐
⍝ │CTO│Morten│
⍝ ├───┼──────┤
⍝ │ATA│Brian │
⍝ ├───┼──────┤
⍝ │HLD│Adám  │
⍝ └───┴──────┘
'/:'{⊃(↑≠⊆¨⊢)/(⌽⍺),⊂⊂⍵}kvp
⍝ ┌───┬──────┐
⍝ │CTO│Morten│
⍝ ├───┼──────┤
⍝ │ATA│Brian │
⍝ ├───┼──────┤
⍝ │HLD│Adám  │
⍝ └───┴──────┘
'/:'∊⍨kvp
⍝ 0 0 0 1 0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 1 0 0 0 1 0 0 0 0
kvp
⍝ CTO:Morten/ATA:Brian/HLD:Adám
'/:'(~⍤∊⍨)kvp
⍝ 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1
'/:'(~⍤∊⍨⊆⊢)kvp
⍝ ┌───┬──────┬───┬─────┬───┬────┐
⍝ │CTO│Morten│ATA│Brian│HLD│Adám│
⍝ └───┴──────┴───┴─────┴───┴────┘
'/:'((≢)~⍤∊⍨⊆⊢)kvp
⍝ 6
'/:'((2÷⍨≢)~⍤∊⍨⊆⊢)kvp
⍝ 3
'/:'((2,⍨2÷⍨≢)~⍤∊⍨⊆⊢)kvp
⍝ 3 2
'/:'((⊢⍴⍨2,⍨2÷⍨≢)~⍤∊⍨⊆⊢)kvp
⍝ ┌───┬──────┐
⍝ │CTO│Morten│
⍝ ├───┼──────┤
⍝ │ATA│Brian │
⍝ ├───┼──────┤
⍝ │HLD│Adám  │
⍝ └───┴──────┘
'/:'(⊢⌺2~⍤∊⍨⊆⊢)kvp
⍝ ┌──────┬──────┐
⍝ │CTO   │Morten│
⍝ ├──────┼──────┤
⍝ │Morten│ATA   │
⍝ ├──────┼──────┤
⍝ │ATA   │Brian │
⍝ ├──────┼──────┤
⍝ │Brian │HLD   │
⍝ ├──────┼──────┤
⍝ │HLD   │Adám  │
⍝ └──────┴──────┘
'/:'(⊢⌺(⍪2 2)~⍤∊⍨⊆⊢)kvp
⍝ ┌───┬──────┐
⍝ │CTO│Morten│
⍝ ├───┼──────┤
⍝ │ATA│Brian │
⍝ ├───┼──────┤
⍝ │HLD│Adám  │
⍝ └───┴──────┘
'/:'(~⍤∊⍨⊆⊢)kvp
⍝ ┌───┬──────┬───┬─────┬───┬────┐
⍝ │CTO│Morten│ATA│Brian│HLD│Adám│
⍝ └───┴──────┴───┴─────┴───┴────┘
'/:'(~⍤∊⍨)kvp
⍝ 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1
'/:'(⍳)kvp
⍝ 3 3 3 2 3 3 3 3 3 3 1 3 3 3 2 3 3 3 3 3 1 3 3 3 2 3 3 3 3
'/:'(3=⍳)kvp
⍝ 1 1 1 0 1 1 1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 1
'/:'(⊢⊆⍨3=⍳)kvp
⍝ ┌───┬──────┬───┬─────┬───┬────┐
⍝ │CTO│Morten│ATA│Brian│HLD│Adám│
⍝ └───┴──────┴───┴─────┴───┴────┘
'/:'(⊢⌺(⍪2 2)⊢⊆⍨3=⍳)kvp
⍝ ┌───┬──────┐
⍝ │CTO│Morten│
⍝ ├───┼──────┤
⍝ │ATA│Brian │
⍝ ├───┼──────┤
⍝ │HLD│Adám  │
⍝ └───┴──────┘
