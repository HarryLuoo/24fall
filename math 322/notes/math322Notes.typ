#import "@preview/physica:0.9.3": *
#set text(12pt, font:"linux libertine")
#set page(margin: (x: 4cm, y: 3cm),numbering: "1/1", columns: 1, flipped: false)
#set math.equation(numbering:"[1")
#show math.equation: set text(12pt)
#set math.cases(gap: 0.2em)

#heading(outlined: false)[Notes on Math 322: PDE]
Harry Luo\
Fall 2024

#line(length: 100%, stroke: (thickness: 2pt))
#set heading(numbering: "1.1.")
#show heading: text.with( weight: 1000, font: "Times New Roman")
#show heading: underline
#outline(indent: auto,)


//Notations
#include "322notations.typ"
#pagebreak()
//part 1: from week 1 to midterm 1
#include "322part1.typ"
