#set math.equation(numbering: "(1)")
#set page(margin: (x: 2cm, y: 1cm))
 #import "@preview/physica:0.9.3": *
#place(top + right, rect(inset: 3pt)[Math 421 HW 6 Harry Luo])

= Problem 1
Prove the following statements:
+ there exists a number $1 < x < 2$ that solves the equation $x^2 - x - 1 = 0$.
+ There exists a number $x in RR$ that solbes the equation $x^(5) - x + 1 = 0 $.
#line(length: 100%)
Solution: 


#pagebreak()

= Problem 2
Let $a < b$ be  numbers and $f : [a,b] -> RR$ be a function. We say that $x in [a,b]$ is a fixed point for $f$ if $f(x) = x$. Prove that if $f$ is continuous and $f(x) in [a,b]$ for all $x in [a,b]$, then $f$ has a fixed point.

#line(length: 100%)
Solution:


#pagebreak()


= Problem 3
Let $f : [0,1]-> RR$ be a continuous function such that $f(0) = f(1)$. Prove that there exists $x in [0, 1/2]$ such that $f(x) = f(x + 1/2)$. Hint: consider the function $g(x) = f(x) - f(x + 1/2)$. Is it possible for $g(0)$ and $g(1/2)$ to both be positive?    
#line(length: 100%)
Solution:




#pagebreak()
= Problem 4
For each of the following functions $f : [ - 1, 1]-> RR$, find all global extrema and find the points $x in [-1,1]$ at which $f$ attains these extrema.
+ $ 
    f(x) = cases(1-x quad &"if" x>= 0, 1+ x quad &"if" x < 0.) 
$ 
  #line(length: 100%)

+ $ 
    f(x) = cases(1-x quad &"if" x>= 0, -1-x quad &"if" x < 0.) 
$ 
  #line(length: 100%)
+ $ 
    f(x) = cases(1-x quad &"if" x>= 0, -x quad &"if" x < 0.) 
$ 

#pagebreak()

= Problem 5
Let $h > 0$. Prove that there is a point on the parabola $ 
    {(x,x^2) in RR^2: -10 <= x <= 10}, 
$ that is closest to the point $(0,h)$.
#line(length: 100%)
Solution: 




#pagebreak()

= Problem 6
Let $a < b$ be numbers and $ f, g , h : [ a, b]-> RR$ be functions.
+ Prove that if $f$ is continuous, then $abs(f)$ has a global maximum. Given a continuous function $ f$ we define $norm(f)$ to be equal to this value. (i.e. the global maximum of $abs(f)$ ).
+ Prove that if $g$ is continuous, then $norm(c g) = abs(c) dot norm(g)$ for any $c  in RR.$
+ Prove that if g and h are continuous, then $norm(g + h) <= norm(g) + norm(h)$.   
#line(length: 100%)