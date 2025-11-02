// Homework Template with Yellow Problem Boxes
// Extracted from Math 108A homework files
// Usage: #import "homework-template.typ": *
//        #show: homework.with(hw_number: "Homework 1", course: "Math 123", name: "Your Name")

// Main template wrapper - applies all document settings
#let homework(
  hw_number: none,
  course: none,
  name: none,
  body
) = {
  // Page configuration
  set page(
    margin: (left: 1.7in, right: 1.7in),
    numbering: "1",
    footer: [
      #align(center)[#context [#counter(page).display()]]
    ],
  )

  // Paragraph and spacing settings
  set par(first-line-indent: 0pt)
  set block(spacing: 2.5em)

  // Reduce excessive spacing around display math
show math.equation: set block(spacing: 1em)

  // Optional title if parameters provided
  if hw_number != none and course != none and name != none {
    align(center)[
      = #hw_number

      #course

      #name
    ]
  }

  // Document content
  body
}

// Basic problem environment with yellow background (no number)
#let problem(body) = {
  block(
    fill: rgb("#ffec8e"),
    inset: 12pt,
    radius: 10pt,
  )[#body]
}

// Problem environment with circled number
#let np(number, body) = {
  block(
    fill: rgb("#ffec8e"),
    inset: 12pt,
    radius: 10pt,
  )[
    #table(
      columns: (auto, 1fr),
      inset: (x: 0pt, y: 0pt),
      stroke: none,
      align: (center + horizon, left + top),
      column-gutter: 12pt,
      [
        #box(
          fill: white,
          stroke: 1pt + black,
          radius: 50%,
          inset: (x: 6pt, y: 4pt),
          width: 32pt,
          height: 32pt,
        )[#text(weight: "bold", size: 1.5em)[#number]]
      ],
      [#body],
    )
  ]
}

// Section header with lines above and below
#let section_header(title) = {
  align(center)[
    #line(length: 100%)
    #h(0pt)
    #v(-35pt)
    #text(weight: "bold", size: 1.5em)[#title]
    #v(-35pt)
    #h(0pt)
    #line(length: 100%)
    #v(0pt)
  ]
}

// Homework title header
#let homework_title(hw_number, course, name) = {
  align(center)[
    = #hw_number

    #course

    #name
  ]
}

// Example usage (uncomment to test):
/*
#import "homework-template.typ": *

#show: homework.with(
  hw_number: "Homework 1",
  course: "Math 123",
  name: "Your Name"
)

#section_header[Section 1A]

#np(1)[
  This is a numbered problem with a yellow background and circled number.

  You can write math: $f(x) = x^2 + 1$
]

#problem[
  This is a basic problem box without a number.

  Still has the yellow background: $integral_0^1 x^2 dx = 1/3$
]

#np(5)[
  Another numbered problem. The numbers can be anything you want.
]

#section_header[Section 2B]

#np(12)[
  Problems in a new section continue with whatever numbers you specify.
]
*/
