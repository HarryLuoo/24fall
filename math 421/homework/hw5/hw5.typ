#set math.equation(numbering: "(1)")
#set page(margin: (x: 1cm, y: 1cm))
 #import "@preview/physica:0.9.3": *
#place(top + right, rect(inset: 3pt)[M421 HW5\ Harry Luo])

= Problem 1
Let $a > 0 $. Define the function $f: RR -> RR$by: $ 
    f(x) = cases(
      frac(sqrt(x)-sqrt(a),x-a) quad &(x eq.not a , x>0),
      0 quad &(x = a "or" x<= 0) .
    ) 
$ 
  Find limit of $f$ as x approaches a, and prove your answer.
#line(length: 100%)


When $x eq.not a, x>0:$ $ 
    f(x) = frac(sqrt(x)-sqrt(a)   ,x-a ) = frac(sqrt(x)-sqrt(a),(sqrt(x)^2-sqrt(a)^2  ) ) =frac(1 ,sqrt(a)+sqrt(x)   ).at() 
$
Claim: $ lim_(x->a) f(x) = frac(1,2sqrt(a)).
$
Proof: 
For any given $epsilon,$ let $delta = min(a/2, 2a^(3 slash 2)c^2 epsilon ), $where $c = 1+ sqrt(2) slash 2$, s.t. if $ 
     abs(x-a)< delta,$ then $abs(f(x)- 1/(2sqrt(a) ))<epsilon$. Because:
     $ 
        abs(x-a)< delta => a-delta < x< a+delta \ => 
        sqrt(x)+sqrt(a)   > sqrt(a-delta)+sqrt(a)
     $ Since $delta <= a/2,$ $
sqrt(x) - sqrt(a) &>sqrt(a ) + sqrt(a/2) \ &= (1+sqrt(2)/2 ) sqrt(a) quad := c sqrt(a)  
     $ 
It follows that $ 
    2sqrt(a)(sqrt(a) +sqrt(x) )^2 &> 2 a^(3/2)c^2 \ =>quad frac(abs(x-a) ,2sqrt(a)(sqrt(x)+sqrt(a)  )^2  ) &<
    frac(abs(x-a) ,2 a^(3/2)c^2 ) \ &= frac(delta ,2 a^(3/2)c^2  ) < epsilon    
$ 
So that: $ 
    abs(f(x)-1/(2sqrt(a) )) = abs(1/(sqrt(a)+sqrt(x) )-1/(2sqrt(a) )) = abs(sqrt(a)-sqrt(x) )/(2sqrt(a)(sqrt(a)+sqrt(x) ) ) = frac(abs(x-a) ,2sqrt(a)(sqrt(x)+sqrt(a)  )^2  ) < epsilon
    $
#h(1fr) $qed$ 
       
#pagebreak()
= Problem 2
Let $f: RR -> RR$ be a function s.t. $lim_(x->0)f(x) = 0$. Define the function $g: RR -> RR$ by $ 
    g(x)= cases(f(x) dot sin(1/x) "if" x=0, 0 "if" x eq.not 0. )
$ 
   Prove that $lim_(x->0) g(x) = 0$
#line(length: 100%) 


- When $x eq.not 0: $ 
 $
    abs(g(x)) = abs(f(x) dot sin(1/x)) <= abs(f(x)) 
$

Given that $lim(x->0)f(x) = 0$, by definition, $forall epsilon > 0, quad exists delta>0, $ s.t. $0<abs(x)<delta quad => abs(f(x)) < epsilon$  \
So for $ 0<x<delta$: $ abs(g(x)) <= abs(f(x)) < epsilon. $
Also notice that $x = 0:$  $ g(0) = 0 < epsilon. $  \ 
So $forall x in RR, forall epsilon > 0$ , $exists delta > 0 med s.t. med 0<abs(x)< delta => abs(g(x))< epsilon$. In other words, $lim_(x->0)g(x) = 0$.





#pagebreak()
= Problem 3
Suppose that $f,g: RR-> RR$ are functions s.t. $abs(f(x))<= abs(g(x)), forall x in RR$.  g is continuous at 0, and $g(0)=0$. Prove that $f$is continuous at 0.
#line(length: 100%)
Given that $g$ is continuous at $0$, we know $ 
    forall epsilon > 0, exists delta >0 med s.t. med 0<abs(x)<delta => abs(g(x))<epsilon. 
$ So, for the same $delta,$ $ 0< abs(x-0)< delta =>  abs(f(x)-0)<= abs(g(x))< epsilon 
$ Noticing $abs(f(0)) <= g(0)=0 quad => f(0)=0$ . We have thus proved that $ 
     lim_(x -> 0) f(x) = f(0)
$ 

  
#h(1fr) $qed$





#pagebreak()
= Problem 4
Let $f: RR -> RR, f(x)= abs(x)$. 
+ Prove that $f$is continuous.
+ Let $g:RR-> RR$be a continuous function. Prove that $abs(g)$ is also a continuous function.
#line(length: 100%)

1. Consider arbitrary point $c in RR$ . To prove that f is continuous over $RR,$ we need to show that $ 
    forall epsilon > 0, exists delta > 0, s.t. med abs(x-c)<delta => abs(f(x)-f(c))<epsilon. 
  $ Let $epsilon > 0$ be given, choosing   $delta = min{epsilon, abs(c)}$ when $c eq.not 0$ , then 
  - c > 0 : $ abs(f(x) - f(c)) = abs(abs(x)-c) = abs(x-c) < delta = epsilon.
  $
  - c < 0: $ abs(f(x) - f(c)) = abs(abs(x)-abs(c)) = abs(-x+c) = abs(x-c) < delta = epsilon.
  $
  - c = 0: choose $delta = epsilon.$  $ abs(f(x) - f(c)) = abs(abs(x)-abs(0)) = abs(x) < delta = epsilon.
  $
  So in all cases and for all $ epsilon > 0,$ there exists a $delta>0$ s.t. $abs(x-c)<delta => abs(f(x)-f(c))<epsilon$. Therefore, f is continuous over $RR$.

2. Given that $g$ is a continuous function, and, from part 1, that $abs(x)$ is continuous, we can construct their composite function $abs(g) = f compose g$. 
  
  From lecture, we know that the composition of two continuous functions is also continuous. Therefore, $abs(g)$ is a continuous function.
#h(1fr) $qed$



#pagebreak()
= Problem 5
Let $a,b,c in RR$ with $a<b<c$. Suppose that $f:[a,b]-> RR; g:[b,c]-> RR$ are both continuous, and $f(b)=g(b)$. Prove that the fucntion $h: [a,c]-> RR$ defined by $ 
    h(x) = cases(f(x) quad "if" x<= b,g(x) quad "if" x>b) 
$ is continuous.
  #line(length: 100%)
- Continuity on $[a,b):$ when $x in [a,b), h(x)=f(x)$. Since $f$ is continuous on $[a,b]$, $h$ is continuous on $[a,b)$.
- Continuity on $(b,c]:$ when $x in (b,c], h(x)=g(x)$. Since $g$ is continuous on $[b,c]$, $h$ is continuous on $(b,c]$.
- Continuity at $b:$ Given that $f(x)$ is continuous on $[a,b]$, and $g(x)$ is continuous on $[b,c]$, we have the following: $ 
  lim_(x->b-) f(x) = f(b), quad lim_(x->b+) g(x) = g(b)\
$
  Since $f(b) = g(b),$ it follows that $
    lim_(x->b-) h(x) = lim_(x->b-) f(x) = f(b) = g(b) = lim_(x->b+) g(x) = lim_(x->b+) h(x) .
$ 
  Using the fact that $ lim_(x -> b) h(x) = l <=> lim_(x -> b^(-) )h(x) = l = lim_(x -> b^(+) ) h(x) ,    $ 
  and $h(b) = f(b)$ ,
  We have shown that $ lim_(x -> b) h(x) = h(b)$ , and thus $h$ is continuous at $b$.

- Collecting the above, we have shown that $h$ is continuous on $[a,c]$.



#pagebreak()
= Problem 6
Suppose that $f:RR ->RR$ is a continuous function. Prove that for any open set $U subset.eq RR,$ the set $f^(-1) (U)$ is also open.   
#line(length: 100%)
Take an arbitrary point $x_0 in f^(-1)(U)$. By definition of preimage, $f(x_0) in U.$
Since $U$is an open set, then by definition $ 
    exists epsilon > 0, s.t. med (f(x_0)-epsilon, f(x_0)+ epsilon ) subset.eq U. 
$ 
   
Considering the continuity of $f$ at $x_0 in RR$, we have $ 
    forall epsilon > 0, exists delta > 0, s.t. med abs(x-x_0)<delta => abs(f(x)-f(x_0))<epsilon.\
    => quad x_0 - delta < x < x_0 + delta; quad f(x_0)-epsilon < f(x) < f(x_0)+epsilon.
$
It follows that $ 
    f(x) in (f(x_0)-epsilon, f(x_0)+epsilon) subset.eq U. 
$ So by definition of preimage, $ 
    x in f^(-1)(U).
$
Since $x_0$ is arbitrary, we have shown that $ 
    forall x_0 in f^(-1)(U), exists delta > 0, s.t. med (x_0-delta, x_0+delta) subset.eq f^(-1)(U).
$ Which satisfies the definition of an open set. Therefore, $f^(-1)(U)$ is open.
#h(1fr) $qed$
