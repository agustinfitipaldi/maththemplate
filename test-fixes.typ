#import "homework-template.typ": *

#show: homework.with(
  hw_number: "Fix Test",
  course: "Typst Testing",
  name: "Testing Lists & Math"
)

#section_header[Testing Indented Lists]

#np(1)[
  Here's a regular list:
  - First item
  - Second item
  - Third item

  And here's an indented/nested list:
  - Top level item
    - Indented item 1
    - Indented item 2
      - Double indented
      - Another double indented
    - Back to single indent
  - Another top level

  That should all render with proper indentation now.
]

#section_header[Testing Display Math Spacing]

#np(2)[
  Here's some text before the math.

  $
  integral_0^1 x^2 d x = 1/3
  $

  And here's text after. The spacing above and below should be reasonable now (0.65em instead of 2.5em).

  $
  sum_(n=1)^infinity 1/n^2 = pi^2/6
  $

  More text after another equation.
]

#np(3)[
  Combined test - lists with math:
  - First item with inline math: $f(x) = x^2$
  - Second item with display math below:

  $
  lim_(x -> infinity) (1 + 1/x)^x = e
  $

  - Nested items:
    - With math: $alpha + beta = gamma$
    - More nesting:
      $
      mat(1, 2; 3, 4)
      $
    - Back out

  Everything should look normal now.
]
