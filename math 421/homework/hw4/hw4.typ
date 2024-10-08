#set math.equation(numbering: "(1)")
#set page(margin: (x: 2cm, y: 2cm))
 #import "@preview/physica:0.9.3": *
#place(top + right, rect(inset: 3pt)[MATH 421 HW4, Harry Luo])
= Problem 1
Prove or disprove the following statements:
+ The set $ {x in RR: x >= 2}$ is open.
+ The set $ {x in RR: x != 2 }$ is open.
#line(length: 100%)
== solution: 
+ Let $ epsilon > 0$. Consider $ 2 in [2,infinity)$: , and interval $ (2- epsilon, 2+epsilon)$:

  Since $ 2-epsilon/2 in (2 - epsilon, 2+epsilon)$ , but $ 2-epsilon/2 in.not [2,infinity)$, 

  it follows that for any $ epsilon > 0$, the interval $ (2-epsilon, 2+epsilon)$ is not a subset of $ {x in RR: x >= 2}$, so
  the set $ {x in RR: x >= 2}$ is not open. So we have *disproved* the statement.
  #h(1fr) $qed$
  
+ Let $ epsilon > 0, x in {x in RR: x != 2 }.$ Let $ epsilon =abs( frac(x-2,2 ))$.

  Then for any $ y in (x - epsilon, x+epsilon),$ we have $ 
      y < x + epsilon , quad y > x - epsilon\ 
      => abs(y - x) < epsilon = abs( frac(x-2,2 ))\
  $ Thus by triangle inequality, $ 
      abs(y-2) &= abs(y - x + x - 2) \ &>= abs(x-2) - abs(y-x) \ &>= abs(x-2)- abs( frac(x-2,2 ))   \ &= frac(abs(x-2), 2)  \ & = epsilon > 0 
  $ 
  
  Therefore $ y != 2 => y in {x in RR: x != 2 }$. So the set is open. The statement is thus *proved*
  #h(1fr) $qed$

 





#pagebreak()
= Problem 2:
Let $ A, B subset.eq RR$ be subsets. Prove the following statements:
+ _(De Morgan's Laws)_ $ (A sect B)^(c) = A^(c) union B^(c) "and"(A union B)^(c) = A^(c) sect B^(c)$ 
+ If $ A$ and $ B$ are closed then $ A sect B$ and $ A union B$ are closed.
#line(length: 100%)
== solution:
+ 
  - Let $x in (A sect B)^(c) $, then $x in.not (A sect B) => (x in.not A ) "or" (x in.not B)$  

    This is equivalent to $ x in A^(c) "or" x in B^(c) => x in (A^(c) union B^(c))$.
  
    So for any $x in (A sect B)^c$, $x in (A^(c) union B^(c) )$, thus the two sets are equal.  

  - Let $x in (A union B)^(c)$, then $x in.not (A union B) => x in.not A "and " x in.not B$.

    So $x in A^(c) "and" x in B^(c) => x in (A^(c) sect B^(c))$.
    So for any $x in (A union B)^c$, $x in (A^(c) sect B^(c))$, thus the two sets are equal.
    #h(1fr) $qed$

  
+ 
  - If A is closed and B is closed, then $A^(c) "and" B^(c) $ are open. Since unions of open sets are open, then $A^(c) union B^(c)$ is open. 
    

    By De Morgan's Laws, $ A^(c) union B^(c)   = (A sect B)^(c)$ is open. 

    Thus $A sect B$ is closed.

  - If A is closed and B is closed, then $A^(c) $ and $B^(c) $are open. Since finite intersections of open sets are open,  $A^(c) sect B^(c)$ is open. 

    By De Morgan's Laws, $ A^(c) sect B^(c) = (A union B)^(c)$ is open. 

    Thus $A union B$ is closed.#h(1fr)$qed$ 



#pagebreak()
= Problem 3:
Let $ epsilon > 0$ . For each of the following functions $ RR -> RR$ and numbers $ l in RR,$ find a $ delta$ s.t. $ 0 < abs(x-1)< delta$ implies $ abs(f(x)-l) < epsilon$.
+ $ f(x) = x^4 "and" l = 1$  
+ $ display(g(x)= cases(1 slash x "if" x != 0, 0 "if" x=0)),"and" l = 1$ 
+ $ h(x)= f(x)+g(x) "and" l = 2.$ hint: in the proof of the corresponding limit laws, we saw how to pick this $ delta$ based on our answers for (a) and (b).
#line(length: 100%)
== solution:
1. For any arbitrary $ epsilon$ , there exists a $ delta = min{1,epsilon slash 15}$, s.t. $ 0 < abs(x-1)< delta$, 
   so $ 0<abs(x-1)<1 =>cases(abs(x+1)<3, abs(x^2 +1)<5 )  $ and $ 
       abs(f(x)-l) = abs(x^(4) -1) &= abs(x-1)abs(x+1)abs(x^2 +1) \
       & < delta * 3 * 5 \ 
       & =  15 delta = epsilon 
   $ #h(1fr) $ qed$ 
    
2. For any arbitrary $ epsilon$ there exists $ delta = min{1/2, epsilon slash 2}$ , s.t. $ 0 < abs(x-1)< delta$, 
   so $ 
       1-delta < x < delta+1 => 1/2 < 1/x < 2. 
   $ 
   and $ 
       abs(g(x)-1) = abs(1/x - 1) = abs(x-1)/x < 2 abs(x-1) = 2 delta = epsilon. 
   $ #h(1fr) $qed$
   


3. $ 
    abs(h(x) - 2) = abs(f(x)- 1 + g(x) - 1) < abs(f(x)-1) + abs(g(x)-1) 
$ <eq.3c>

 From the previous two parts, we know that we can choose $ delta_1 = min{1, epsilon_1/15}$ and $ delta_2 = min{1/2, epsilon_2/2}$. To ensure @eq.3c is smaller than $ epsilon$ , we choose $ 
     delta = min{1/2, 1, epsilon/2, epsilon/15} =  min{1/2, epsilon/15.}
 $ Therefore, $ 
      abs(h(x) - 2) < epsilon. 
 $ 
 #h(1fr) $qed$
 

#pagebreak()
= Problem 4:
let $ f,g: RR -> RR$ be functions s.t. $ lim_(x -> a) f(x) = l "and" lim_(x -> a) g(x)= m$ for some numbers a, $ l,m in RR$. Prove that if $forall x in RR  , f(x)<= g(x),$ then $ l <= m$.
#line(length: 100%)
== solution:

Given that $lim_(x -> a) f(x) = l "and" lim_(x -> a) g(x)= m$, we know that $ 
    forall epsilon > 0, exists delta_1 > 0, s.t. med 0 < abs(x-a) < delta_1 => abs(f(x) - l) < epsilon\
    => l - epsilon <f(x)<epsilon + l\
    forall epsilon > 0, exists delta_2 > 0, s.t. med  0 < abs(x-a) < delta_2 => abs(g(x) - m) < epsilon \
    => m - epsilon <g(x)<epsilon + m
$ 
 
If $forall x in RR, f(x) <= g(x)$, then  $ 
    l - epsilon < f(x) <= g(x) < epsilon + m \ => quad l - epsilon  < epsilon + m \ => l < m + 2 epsilon
$ 

Since $epsilon >0$ is arbitrary, the above inequality can be reduced to: $ 
    l <= m .
$ 
The statement is thus proved.
#h(1fr) $qed$




#pagebreak()
= Problem 5:
Let $ f,g: RR -> RR$ be functions and $ a in RR.$ Prove or disprove the following statements:
- (a) If $lim_(x -> a) f(x)$ and $lim_(x -> a) g(x) $ both do not exist, then $lim_(x -> a) (f + g)(x) $ does not exist.

- (b) If $lim_(x -> a) f(x) $ exists and $lim_(x -> a) (f + g)(x) $ does not exist, then $lim_(x -> a) g(x) $ does not exist.

- (c) If $lim_(x -> a) f(x) $ exists and $lim_(x -> a) g(x) $ does not exist, then $lim_(x -> a) (f + g)(x) $does not exist.
_(hint: Each statement is either an application of the limit law for addition, or it is false. Remember, if the statement is false, then we need to come up with a counterexample.)_
#line(length: 100%)
== solution:

- (a) Suppose $lim_(x -> a) f(x)$ and $lim_(x -> a) g(x)$ both does not exist, but consider a special case where $f(x) = - g(x)$, then $ 
    lim_(x -> a) (f + g)(x) = lim_(x -> a) 0 = 0 ,
$ which is a well-defined limit. So the statement is negated, i.e. *false*, by counterexample.
 
- (b) Suppose $lim_(x -> a) f(x) = m$ , and $lim_(x -> a) (f + g)(x)$ does not exist, but $lim_(x->a) g(x) = l,$ for some $l,m in RR.$  Then by limit law for addition, $ 
    lim_(x->a ) (f + g) =   lim_(x -> a) f(x)+ lim_(x -> a) g(x) = l + m in RR.
$ This contradicts with the assumption that $lim_(x -> a) (f + g)(x)$ does not exist. So our assumption is false, and the original statement is *true*.

- (c) Assume that $lim_(x -> a) f(x) = l$ exists and $lim_(x -> a) g(x) $ does not exist, but $lim_(x-> a ) (f+g)(x) = m, $ exists, for some $l,m in RR$. Then, by the limit law for addtion, we have, $ 
    lim_(x -> a) (f + g)(x) = lim_(x -> a) f(x) + lim_(x -> a) g(x)=m\ => quad lim_(x->a) g(x) =  m - lim_(x -> a) f(x)= m - l  in RR. 
$ We found that $lim(x->a)g(x)$ is well defined, which contradicts to our assumption. So our assumption that $lim(x->a)(f+g)(x)$ exists is false, and the original statement is *true* by contradiction.  
  
#h(1fr) $qed$