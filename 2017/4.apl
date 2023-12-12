⍝ Write a function that calculates and returns the areas of 0 or more pie slices. The left argument is 0 or more angles (in degrees). The right argument is 0 or more pie diameters. If the number of angles and diameters are not equal to each other (and neither is a single number), a LENGTH ERROR should be generated.
⍝ Explicit:
{(○r)×r←⍵÷2}        ⍝ area of circle: rectangle of (circumference÷2)×radius
{○×⍨⍵÷2}            ⍝ area of circle
{(⍺÷360)×○×⍨⍵÷2}    ⍝ area of sector: fraction of degrees of whole circle
{(⍺÷360)×○⍵×⍵÷2×2}  ⍝ unroll self-multiplication
{⍺×○⍵×⍵÷2×2×360}    ⍝ move divisions together
{⍺×○⍵×⍵÷1440}       ⍝ consolidate

⍝ Tacit:
{○⍺×⍵×⍵÷1440}             ⍝ pi-times is the only monadic function; move far left
{○(⍺×⍵)×⍵÷1440}           ⍝ express as function applied to arguments
{○(⍺×⍵)×(⍺⊢⍵)÷1440}       ⍝ ditto; since we don't need ⍺, we use the right identity function
{○(⍺×⍵)×(⍺⊢⍵)÷⍺(1440⍨)⍵}  ⍝ constant becomes constant function
○××⊢÷1440⍨                ⍝ strip mention of arguments
