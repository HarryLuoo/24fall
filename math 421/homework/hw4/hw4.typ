#set math.equation(numbering: "(1)")
#set page(margin: (x: 3cm, y: 1cm))
 #import "@preview/physica:0.9.3": *
#place(top + right, rect(inset: 3pt)[MATH 421 HW4, Harry Luo])
= Problem 1
Prove or disprove the following statements:
+ The set $ {x in RR: x >= 2}$ is open.
+ The set $ {x in RR: x != 2 }$ is open.
== solution: 
+ Let $ epsilon > 0$. Consider $ 2 in [2,infinity)$: , and interval $ (2- epsilon, 2+epsilon)$:

  Since $ 2-epsilon/2 in (2 - epsilon, 2+epsilon)$ , but $ 2-epsilon/2 in.not [2,infinity)$, 

  it follows that for any $ epsilon > 0$, the interval $ (2-epsilon, 2+epsilon)$ is not a subset of $ {x in RR: x >= 2}$, so
  the set $ {x in RR: x >= 2}$ is not open.

+ Let $ epsilon > 0, x in {x in RR: x != 2 }.$ Let $ epsilon =abs( frac(x-2,2 ))$.

  Then for any $ y in (x - epsilon, x+epsilon),$ we have $ 
      y < x + epsilon , quad y > x - epsilon\ 
      => abs(y - x) < epsilon = abs( frac(x-2,2 ))\
  $ Thus by triangle inequality, $ 
      abs(y-2) &= abs(y - x + x - 2) \ &>= abs(x-2) - abs(y-x) \ &>= abs(x-2)- abs( frac(x-2,2 ))   \ &= frac(abs(x-2), 2)  \ & = epsilon > 0 
  $ 
  
  Therefore $ y != 2 => y in {x in RR: x != 2 }$. So the set is open.








#line(length: 100%)
= Problem 2:
Let $ A, B subset.eq RR$ be subsets. Prove the following statements:
+ _(De Morgan's Laws)_ $ (A sect B)^(c) = A^(c) union B^(c) "and"(A union B)^(c) = A^(c) sect B^(c)$ 
+ If $ A$ and $ B$ are closed then $ A sect B$ and $ A union B$ are closed.
== solution:




#line(length: 100%)
= Problem 3:
Let $ epsilon > 0$ . For each of the following fuctinos $ RR -> RR$ and numbers $ l in RR,$ find a $ delta$ s.t. $ 0 < abs(x-1)< delta$ implies $ abs(f(x)-l) < epsilon$.
+ $ f(x) = x^4 "and" l = 1$  
+ $ display(g(x)= cases(1 slash x "if" x != 0, 0 "if" x=0)),"and" l = 1$ 
+ $ h(x)= f(x)+g(x) "and" l = 2.$ hint: in the proof of the corresponding limit laws, we saw how to pick this $ delta$ based on our answers for (a) and (b).

== solution:




#line(length: 100%)
= Problem 4:
let $ f,g: RR -> RR$ be functions s.t. $ lim_(x -> a) f(x) = l "and" lim_(x -> a) g(x)= m$ for some numbers a,l,m in $ RR$. Prove that if $forall x in RR f(x)<= g(x),$ then $ l < m$.
== solution:





#line(length: 100%)
= Problem 5:
Let $ f,g: RR -> RR$ be functions and $ a in RR.$ Prove or disprove the following statements:
- (a) If $lim_(x -> a) f(x)$ and $lim_(x -> a) g(x) $ both do not exist, then $lim_(x -> a) (f + g)(x) $ does not exist.

- (b) If $lim_(x -> a) f(x) $ exists and $lim_(x -> a) (f + g)(x) $ does not exist, then $lim_(x -> a) g(x) $ does not exist.

- (c) If $lim_(x -> a) f(x) $ exists and $lim_(x -> a) g(x) $ does not exist, then $lim_(x -> a) (f + g)(x) $does not exist.
_(hint: Each statement is either an application of the limit law for addition, or it is false. Remember, if the statement is false, then we need to come up with a counterexample.)_

== solution: