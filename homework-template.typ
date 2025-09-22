// Homework Template with Yellow Problem Boxes
// Extracted from Math 108A homework files
// Usage: #import "homework-template.typ": *

// Page configuration - IMPORTANT: Copy these lines to the TOP of your document
// Do NOT put these inside a function - they must be at document level
/*
#set page(
  margin: (left: 1.7in, right: 1.7in),
  numbering: "1",
  footer: [
    #align(center)[#context [#counter(page).display()]]
  ],
)
#set par(first-line-indent: 0pt)
#set block(spacing: 2.5em)
*/

// Basic problem environment with yellow background (no number)
#let problem(body) = {
  block(
    fill: rgb("#ffec8e"),
    inset: 12pt,
    radius: 10pt,
  )[#body]
}

// Problem environment with circled number
#let numbered_problem(number, body) = {
  block(
    fill: rgb("#ffec8e"),
    inset: 12pt,
    radius: 10pt,
  )[
    #table(
      columns: (auto, 1fr),
      inset: (x: 0pt, y: 0pt),
      stroke: none,
      align: (center + horizon, left + horizon),
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
// First, copy the page setup from above (uncommented):
#set page(
  margin: (left: 1.7in, right: 1.7in),
  numbering: "1",
  footer: [
    #align(center)[#context [#counter(page).display()]]
  ],
)
#set par(first-line-indent: 0pt)
#set block(spacing: 2.5em)

#homework_title("Homework 1", "Math 123", "Your Name")

#section_header[Section 1A]

#numbered_problem(1)[
  This is a numbered problem with a yellow background and circled number.

  You can write math: $f(x) = x^2 + 1$
]

#problem[
  This is a basic problem box without a number.

  Still has the yellow background: $integral_0^1 x^2 dx = 1/3$
]

#numbered_problem(5)[
  Another numbered problem. The numbers can be anything you want.
]

#section_header[Section 2B]

#numbered_problem(12)[
  Problems in a new section continue with whatever numbers you specify.
]
*/