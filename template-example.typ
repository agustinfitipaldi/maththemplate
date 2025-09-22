// Example usage of the homework template
#import "homework-template.typ": *

// Page setup (MUST be at document level, not in function)
#set page(
  margin: (left: 1.7in, right: 1.7in),
  numbering: "1",
  footer: [
    #align(center)[#context [#counter(page).display()]]
  ],
)
#set par(first-line-indent: 0pt)
#set block(spacing: 2.5em)

// Create the homework title
#homework_title("Homework 1", "Math 456", "Student Name")

// Add a section header
#section_header[Section 1.2]

// Numbered problems with yellow boxes and circled numbers
#numbered_problem(15)[
  Prove that for any finite-dimensional vector space $V$,
  we have $dim V = dim "null" T + dim "range" T$.

  #align(center, $cal(L)(V,W) subset cal(L)(U,V)$)
]

#numbered_problem(22)[
  Find the matrix representation of the linear transformation
  $T: bold(R)^3 -> bold(R)^2$ defined by:

  $T(x,y,z) = (2x + y - z, x - 3y + 2z)$
]

// Basic problem without number
#problem[
  This is a practice problem or note section. No circled number,
  but still gets the yellow background for consistency.

  You can include equations: $integral_0^pi sin(x) d x = 2$
]

// Another section
#section_header[Section 2.1]

#numbered_problem(8)[
  Show that if $U$ and $W$ are subspaces of $V$, then
  $U + W$ is also a subspace of $V$.

  We need to verify three properties:
  1. Contains additive identity
  2. Closed under addition
  3. Closed under scalar multiplication
]
