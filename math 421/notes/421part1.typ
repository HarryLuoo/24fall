= Numbers

== Even and Odd number
Even: $x in NN$ is even iff $exists y in NN med s.t. med x = 2y$.

Odd: $x in NN$ is odd iff $exists y in NN union {0} med s.t. med x = 2y+1$.  

== Mathematical Induction
To prove some statement $P(n)$ is true for all $n in NN$, we need to prove two things:
+ [Base Case] $P(n)$ is true.
+ [Inductive Step]: $forall n in NN, quad P(n) => P(n+1)$  

- Note that, it can often be useful to use formulas for fractions such like $ 
    frac(1 ,n(n+1) ) = 1/n - 1/(n+1)quad ; quad frac(1 , (2n - 1)(2n +1 )) = 1/2 ( frac(1 , 2n-1) - frac(1 , 2n + 1)  )  
$ 



== Properties of $RR$ 
- Addition
  - closure: $forall x,y in RR, x+y in RR$
  - commutative: $forall x,y in RR, x+y = y+x$
  - associative: $forall x,y,z in RR, x+(y+z) = (x+y)+z$
  - identity: $forall x in RR, x+0 = x$
  - inverse: $forall x in RR, exists -x in RR med s.t. x+(-x) = 0$
- Multiplication
  - closure: $forall x,y in RR, x dot y in RR$
  - comuutative: $forall x,y in RR, x dot y = y dot x$
  - associative: $forall x,y,z in RR, x dot (y dot z) = (x dot y) dot z$
  - identity: $forall x in RR, x dot 1 = x$
  - inverse: $forall x in RR, x eq.not 0, exists x^(-1) in RR med s.t. med  x dot x^(-1) = 1$
- Distributivity: $forall a,b,c in RR, (a+b) dot c = a dot c + b dot c$

=== Propositions
- if $ a,b,c in RR med s.t. med a + b = a + c quad => b = c$.
- If $a,c,b in RR med s.t. med a dot b = a dot c , a eq.not 0 quad => b = c $  
- $forall a in RR, quad a dot 0 = 0 = 0 dot a$
- if $a,b in RR, med a dot b = 0 $ , then $a = 0 $or $b = 0$
- $forall a,b in RR, (-a) dot b = -(a dot b) = a dot (-b)$
- $forall a,b in RR, quad (-a) dot (-b) = a b$ 

== Properties of Inequalities
- Trichotomy: for each $a, b in RR,$ only one of the following is ture:
  $a < b, quad a = b, quad b < a$.
- Transitivity: $forall a,b,c in RR, a < b quad "and" quad b < c quad => a < c$  
- Addition: $forall a,b,c in RR, a < b quad => a + c < b + c$
- Multiplication: $forall a,b,c in RR, a < b quad "and" quad c > 0 quad => a c < b c$
- Reciprocal: $forall a,b in RR, a < b quad "and" quad c < 0 quad => a c > b c$
- flip sign: $forall a,b in RR, a < b quad => -b < -a$



= Functions and Sets

== Image and Preimage
- _def_ : Let $f: A -> B$ be a function:

 If $X subset A $, the *image* of $X$ under $f$ is $ 
     f(X) = {f(a): a in X} 
$ 
- The image of $f$ is $f(A)$
If $Y subset B$ the *preimage* of $Y$ under $f$ is $ 
      f^(-1)(Y) = {a in A: f(a) in Y} 
$ 
     



== Surjective, Injective,Bijective
- _def _ : Let $f: A -> B$ be a function:

- *Surjective*: $f$ is surjective iff $f(A) =B$. i.e $ 
    forall b in B, exists a in A quad s.t. quad f(a) = b 
$ 定义域无落单

- *Injective*: $f$ is injective iff $f(a) = f(b) => a = b$. i.e $ 
    forall a,b in A, f(a) = f(b) quad => quad a = b

$

Bijective: both surjective and injective

== Interval
- _def_: A set $I in RR$ is an *interval* iff $ 
    ( forall x,y,x in RR med , x, z in I med , x<y<z) => y in I
$ 
 
- _Lemma_: $forall a, b in RR, med a<b, med => (a,b)$ is an interval.


=== Definition of Open and Closed Intervals
- _def_: A set $U subset.eq RR$ is *open* iff $ 

forall x in U, exists med epsilon > 0  quad s.t. quad (x-epsilon, x+ epsilon)subset.eq U 
$  

- _def_: A set $F subset.eq RR$ is *closed* iff $F^c = { x in RR: x in.not F}$ is open.
- Lemma: Union of open sets is open.
- Lemma: Intersections of finitely many open sets is open.



= Limits
== Definition of Limit via epsilon-delta
$ 
    lim_(x -> a) f(x) = l \ <=>  forall epsilon > 0, med exists delta > 0 med  s.t. med 0 < |x-a| < delta quad => |f(x) - l| < epsilon
$ 




== Limit Operation laws
- _Theorem_: Let $f, g: RR -> RR$ be functions and $a in RR$ be a limit point. If $lim_(x -> a) f(x) = l$ and $lim_(x -> a) g(x) = m$, then:
  - $ lim_(x -> a) (f(x) + g(x)) = l + m $
  - $ lim_(x -> a) (f(x) - g(x)) = l - m $
  - $ lim_(x -> a) (f(x) dot g(x)) = l dot m $
  - $ lim_(x -> a) (f(x) / g(x)) = l / m quad", if " m eq.not 0 $