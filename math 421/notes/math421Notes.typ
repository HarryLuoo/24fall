#import "@preview/physica:0.9.3": *
#set text(12pt, font:"linux libertine")
#set page(margin: (x: 4cm, y: 3cm),numbering: "1/1", columns: 1, flipped: false)
#set math.equation(numbering:"[1")
#show math.equation: set text(12pt)
#set math.cases(gap: 0.2em)

= Notes on Math 421: Calculus, proof based
Harry Luo\
Fall 2024

#line(length: 100%, stroke: (thickness: 2pt))
#set heading(numbering: "1.1.")
#show heading: text.with(size: 13pt, weight: 900, font: "Times New Roman")
#outline(indent: auto,)
#pagebreak()

//Notations
#include "421notations.typ"

//part 1: from week 1 to midterm 1
#include "421part1.typ"
