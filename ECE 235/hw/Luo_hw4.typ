#set math.equation(numbering: "(1)")
#set page(margin: (x: 1cm, y: 1cm))
 #import "@preview/physica:0.9.3": *
#place(top + right, rect(inset: 3pt)[ECE 235 HW 4 Harry Luo])

= 6-23
Sketch (a) the wave function and (b) the probability distribution for the n=4 state for the finite square well potential.
#line(length: 100%)
#image("prob_n=4.png")
#image("wavefn_n=4.png")


#line(length: 100% , stroke: 2pt)




= 6-28
Compute the expectation value of the x component of the momentum of a particle of mass $m$ in the $n=3$ level of a one-dimensional infinite infinite square well of width $L$. Reconcile your answer with the fact that the kinetic energy of the particle in this level is $9 pi^2 hbar^2 slash 2 m L^2$ 
#line(length: 100%)

$ 
    expectationvalue(p_x) = integral_(-infinity)^(infinity) psi_3^* x (frac(hbar , i) (diff psi_3)/(diff x) )  dif x &= integral_(0)^(L) sqrt(2/L) sin(3 pi x / L) (frac(hbar , i) (diff)/(diff x) )) sqrt(2/L) sin(3 pi x / L)  dif x \ 
    & =  (2 hbar)/(L i) integral_(0)^(L) sin(3 pi x / L ) cos(3 pi x / L) frac(3 pi  , L)  dif x  \ 
     "letting " u = frac(3 pi x , L), quad  quad
    & = frac(2 hbar , L i) integral_(0)^(3pi) sin(u) cos(u) dif x   
    =0  
$ 
This result is consistent with the fact that the kinetic energy is non-zero, as the kinetic energy is related to the expectation value of the square of the momentum, not the momentum itself.







#line(length: 100% , stroke: 2pt)

= 6-29
Find (a) $expectationvalue(x)$ and (b) $expectationvalue(x^2)$ for the second excited state (n=3) in an infinite square well potential.
#line(length: 100%)

Noticing that, for n = 3, $ 
    psi_3 =sqrt(2/L) sin(3 pi x / L) 
$ 
- a. $ 
    expectationvalue(x)= 2/L integral_(0)^(L)  sin^2(3 pi x / L) x dif x= L / 2   
$ 

- b. $ 
    expectationvalue(x^2)= 2/L integral_(0)^(L)  sin^2(3 pi x / L) x^2 dif x = frac(L^2 , 3) - frac(L^2 , 2 pi^2 ) 
$
  


#line(length: 100% , stroke: 2pt)

= 6-32
Find $sigma_x = sqrt( expectationvalue(x^2) - expectationvalue(x)^2 ), sigma_p = sqrt( expectationvalue(p^2)- expectationvalue(p)^2  )$ and $sigma_x sigma_p$ for the ground-state wave function of an infinite square well. Use the fact that $ expectationvalue(p) =0$ by symmetry and $ expectationvalue(p^2)= expectationvalue(2m E)$ from problem 6-31    
#line(length: 100%)
 First find $ expectationvalue(x)$, exploiting symmetry of its probability density function: $ 
    expectationvalue(x) = 2/L integral_(0)^(L)  sin^2( pi x / L) x dif x = L/2 
 $ 
Then find $ expectationvalue(x^2)$: $ 
    expectationvalue(x^2) = 2/L integral_(0)^(L)  sin^2( pi x / L) x^2 dif x = frac(L^2 ,3 ) - frac(L^2 , 2 pi^2 )  
    $
It follows that $ 
    sigma_x = sqrt( expectationvalue(x^2) - expectationvalue(x)^2 ) = sqrt( frac(L^2 ,3 ) - frac(L^2 , 2 pi^2)- (L^2/4) ) = sqrt(1/12 - 1/(2 pi ^2)) med L 
$ 
Using the fact that $expectationvalue(p) = 0, quad expectationvalue(p^2)= 2m E = frac(hbar^2 pi^2 ,L^2 )$ 
$ 
    sigma_p = sqrt( expectationvalue(p^2) - expectationvalue(p)^2 ) = sqrt( frac(hbar^2 pi^2 ,L^2 ) ) = frac(hbar pi , L) 
$ 
Thus, $ 
    sigma_x sigma_p = sqrt(1/12 - 1/(2 pi ^2)) med hbar pi 
$ 
