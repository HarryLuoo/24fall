#import "@preview/physica:0.9.3": *
#show heading: text.with(size: 11pt, weight: 1000, font: "Libre Baskerville")
#show raw.where(block: false): box.with(
  fill: luma(240),
  inset: (x: 3pt, y: 0pt),
  outset: (y: 3pt),
  radius: 2pt,
)
#show raw.where(block: true): block.with(
  fill: luma(240),
  inset: 10pt,
  radius: 4pt,
)
#set text(11pt)
#set page(margin: (x: 5cm, y: 3cm),numbering: "1/1", columns: 1, flipped: false)
#set math.equation(numbering:"1")
#show math.equation: set text(11pt)
#set math.cases(gap: 0.2em)
#heading(outlined: false)[Notes for Software Lab]
Harry Luo\
#line(length: 100%, stroke: (thickness: 2pt))
#set heading(numbering: "1.1")
#outline(indent: auto,)
#line(length: 100%)

= Spin Dynamics
== Spin Hamiltonian