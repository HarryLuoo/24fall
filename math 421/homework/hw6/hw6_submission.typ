#set math.equation(numbering: "(1)")
#set page(margin: (x: 2cm, y: 1cm))
 #import "@preview/physica:0.9.3": *
#place(top + right, rect(inset: 3pt)[Math 421 HW 6 Harry Luo])

= Problem 1
Prove the following statements:
+ there exists a number $1 < x < 2$ that solves the equation $x^2 - x - 1 = 0$.
+ There exists a number $x in RR$ that solves the equation $x^(5) - x + 1 = 0 $.
#line(length: 100%)
Solution: 
Recall Intermediate Value theorem : if  $f : [a,b]-> RR$ is continuous, and $f(a)<0<f(b)$, then $exists c in [a,b]$ s.t. $f(c) = 0$    

1. From lecture, we know that since $f(x)= x^2-x-1$ is a polynomial function, it's continuous on $RR$. 
   Noticing that $f(1) = -1, med f(2) = 1$ , by IVT, there exists $x in [1,2]$ such that $f(x) = 0$.
   Specifically, since $f(1) eq.not 0, med f(2) eq.not 0, x in (1,2).$ #h(1fr) $qed$

2. Similarly, we know that since $f(x) = x^5 - x + 1$ is a polynomial function, it's continuous on $RR$. 
   Noticing that $f(-2) = -29 < 0, med f(-1) = 1 >0$, by IVT, there exists $x in [-2,-1]$ such that $f(x) = 0$.
   Specifically, since $f(-2) eq.not 0, med f(-1) eq.not 0,$ $x in (-2,-1)in RR.$ #h(1fr) $qed$



#pagebreak()

= Problem 2
Let $a < b$ be  numbers and $f : [a,b] -> RR$ be a function. We say that $x in [a,b]$ is a fixed point for $f$ if $f(x) = x$. Prove that if $f$ is continuous and $f(x) in [a,b]$ for all $x in [a,b]$, then $f$ has a fixed point.

#line(length: 100%)
Solution:

Consider an auxiliary function $ g: [a,b] -> RR, g(x) = f(x) - x.$ Since $f$ and $x$ ( a polynomial function) are both continuous functions, $g$ is also continuous.

Thus the existence of a fixed point for $f$ is equivalent to the existence of a root for $g$.  

Noticing: $ 
    g(a) = f(a) - a ; quad g(b) = f(b) - b,
$ 
and that $ 
    f(x) in [a,b] forall x in [a,b]quad  <=> quad f(a)>= a; f(b)<= b,
$ 
we have: $ 
    g(a)>= 0; quad  g(b)<= 0. 
$ 
In the cases where $g(a) = 0$ or $g(b) = 0$, we have $f(a) = a$ or $f(b) = b$, respectively.

In the rest of the cases, by IVT, $exists c in [a,b], med s.t. med g(c) = 0. $ i.e. $f(c) = c$.

Therefore, $exists x in [a,b],med s.t. med f(x)=x$, and thus proving the existence of a fixed point for $f$. #h(1fr) $qed$ 




#pagebreak()


= Problem 3
Let $f : [0,1]-> RR$ be a continuous function such that $f(0) = f(1)$. Prove that there exists $x in [0, 1/2]$ such that $f(x) = f(x + 1/2)$. Hint: consider the function $g(x) = f(x) - f(x + 1/2)$. Is it possible for $g(0)$ and $g(1/2)$ to both be positive?    
#line(length: 100%)
Solution:

Consider the suggested function $g(x) = f(x) - f(x + 1/2)$. Since $f$ is continuous, $g: [0,1]-> RR$ is also continuous. Noticing
$ 
     g(0) &= f(0) - f(1/2) = f(1)- f(1/2) , \ g(1/2) &= f(1/2) - f(1) = f(1/2) - f(0),
$ 
and that $ 
    g(0)+ g(1/2) &= f(1)- f(1/2) + f(1/2) - f(1) = 0 \ 
    & => g(0) = - g(1/2)
$ 
So $g(0)$ and $g(1/2)$ cannot both be positive. i.e. $ 
    g(0) &>= 0, g(1/2) <= 0,\
    "or," g(0)&<= 0,  g(1/2) >= 0.
$ 
In the special cases where $g(0) = 0$ or $g(1/2) = 0$, we have $f(0) = f(1/2)$ or $f(1/2) = f(1)$, respectively.

In the rest of the cases, IVT implies that there exists $x in [0,1/2]$ such that $g(x) = 0$, i.e. $f(x) = f(x + 1/2)$. #h(1fr) $qed$



#pagebreak()
= Problem 4
For each of the following functions $f : [ - 1, 1]-> RR$, find all global extrema and find the points $x in [-1,1]$ at which $f$ attains these extrema. No proof is required.
+ $ 
    f(x) = cases(1-x quad &"if" x>= 0, 1+ x quad &"if" x < 0.) 
$ 

$max f = 1, x = 0; quad min f = 0, x = 1 "or" -1.$ 
  #line(length: 100%)

+ $ 
    f(x) = cases(1-x quad &"if" x>= 0, -1-x quad &"if" x < 0.) 
$ 

$max f = 1, x = 0; quad min f$ Does not exist.
  #line(length: 100%)
+ $ 
    f(x) = cases(1-x quad &"if" x>= 0, -x quad &"if" x < 0.) 
$ 
$max f = 1, x = 0 "or" -1; quad min f = 0, x= 1$ 






#pagebreak()

= Problem 5
Let $h > 0$. Prove that there is a point on the parabola $ 
    {(x,x^2) in RR^2: -10 <= x <= 10}, 
$ that is closest to the point $(0,h)$.
#line(length: 100%)
Solution: 

We construct a distance function $g: [-10, 10] -> RR$ that $ 
    g(x) = sqrt(x^2  + (x^2 - h)^2 ) = sqrt(x^4 + ( 1- 2h) x^2 + h^2).   
$ 
$g(x)$ is continuous on $[-10, 10]$, since it's a composition of $x^4 + ( 1-2h) x^2 + h^2$ , a continuous function since it's a polynomial function, and $sqrt(x)$, a continuous function. 

So by EVT, $g(x)$ has a global minimum at some $x in [-10, 10]$.

In other words, there exists a point on the parabola that is closest to the point $(0,h)$. #h(1fr) $qed$



#pagebreak()

= Problem 6
Let $a < b$ be numbers and $ f, g , h : [ a, b]-> RR$ be functions.
+ Prove that if $f$ is continuous, then $abs(f)$ has a global maximum. Given a continuous function $ f$ we define $norm(f)$ to be equal to this value. (i.e. the global maximum of $abs(f)$ ).
+ Prove that if $g$ is continuous, then $norm(c g) = abs(c) dot norm(g)$ for any $c  in RR.$
+ Prove that if g and h are continuous, then $norm(g + h) <= norm(g) + norm(h)$.   
#line(length: 100%)

Solution:
1. Since $abs(f)$ is the composition of $f$ and $abs(x)$, both continuous functions, $abs(f)$ is continuous on $[a,b]$ . By EVT, $abs(f)$ has a global maximum on $[a,b]$ . 
   
2. By definition, $norm(f) <=> max (abs(f))$ . 
    
    So, by noticing that $abs(c)$ is a positive constant, $forall c in RR:$   $ 
    norm(c g) = max(abs(c g)) = max(abs(c) abs(g)) = abs(c) dot max(abs(g)) = abs(c) dot norm(g).
$ 

3. Similarly, $ 
    norm(g+h) = max(abs(g+h)). 
$ 
Since $ 
    abs(g+h) &<= abs(g) + abs(h) \ => max(abs(g+h)) &<= max(abs(g) + abs(h))  ,
$ 
and also $ 
    abs(g)<= norm(g)& quad, abs(h) <= norm(h) \
    => abs(g) + abs(h) &<= norm(g)+ norm(h) \
    => max(abs(g) + abs(h)) &<= norm(g) + norm(h), 
$ 
we can find that 
$ 
    norm(g+h) = max(abs(g+h)) <= max(abs(g) + abs(h)) <= norm(g) + norm(h),
$ 
as wanted.