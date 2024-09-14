//week 1

= Heat Equation
For tempreature $u( bold(x))$, head conduction or particle diffusion can be described by the head equation:
$ 
    u_t = k nabla^2 u 
$ <eq.heat>
== Fundamental Solution
The fundamental solution $Phi$ is found by solving the heat equation with a delta function as the initial condition:$ 
    cases(Phi_t = kappa nabla^2 Phi,
     Phi(bold(x),t=0) = delta(bold(x)))
$ 

It is solved to be the Green's function $ 
    Phi(bold(x),t) = 1/(4 pi kappa t)^(n slash 2) exp(-abs(bold(x))^2/(4 kappa t))
$ <eq.phi>

== Initial Value problem 
Consider a general initial value $g( bold(x))$, heat equation becomes: $ 
    cases(u_t = kappa nabla^2 u, u(bold(x),0) = g(bold(x)))
$ 
   
An arguement of linearity and superposition can be made to arrive at the solution: $ 
    u( bold(x),t) = g star Phi eq.triple integral_(bb(R)^n) g( bold(y)) Phi( bold(x) -  bold(y))  dif v_y   
$ <eq.headIV>


- _example_:
  - Useful special functions: Heaviside step function, and error function$ 
    "erf"(x) eq.triple (2)/(sqrt(pi) ) integral_(0)^(x) exp(-z^2) dif z
  $ 
  
  - example statement: consider a long rod heated on the region $[-1,1]$ at time zero. Mathematically,$ 
      cases(u_t = kappa u_(x x), u(x,0) = g(x) = H(x+1)- H(x-1)) 
  $ 
  - _Solution_: $ 
      u(x,t) &= g star Phi \ 
      & =  (1)/(sqrt(4pi kappa t) ) integral_( hyph.minus infinity)^(infinity) g(y) exp( (-( x - y)^2) /( 4 kappa t))  dif y \ 
      & = 1/sqrt(4 pi kappa t) integral_(-1)^(1) exp(-(x-y)^2 slash 4 kappa t)  dif y  
  $ 
  
  let $x-y = z sqrt(4 kappa t) , z = display((x-y)/(sqrt(4 pi kappa t) ))$ 
$ 
    u &= (- sqrt(4 pi kappa t) )/(sqrt( 4 pi kappa t) ) integral_((x+1)slash(sqrt(4 kappa t) ))^((x-1)slash(sqrt(4 kappa t) )) e^(-z^2)  dif z  \ 
    & = 1/2 ("erf"((x+1)/(sqrt(4 kappa t)) ) - "erf"((x-1)/(sqrt(4 kappa t) )))
$ 
  Notice that the erf function is an odd function, so we can combine this to be $ 
      u = "erf" ( (1)/sqrt(4 kappa t)) 
  $ 
  
  We can study this solution via asympotic analysis
  - for small x, talor expansion of erf function to second degree gives $ 
      "erf"(x) approx (2x)/(sqrt(pi) ) 
  $ We are interested in large t, so $ 
      "erf"((1)/sqrt(4 kappa t)) approx (1)/(sqrt(pi kappa t) ) med tilde.op (1)/(sqrt(t))
  $ 
  
  
== Heat eqn with forcing ( heat source/ sink)
Consider the original heat equation without forcing $ 
    u_t = kappa nabla^2 u 
$ 
Now, consider heat source $f( bold(x),t)$, the heat equation becomes: $ 
    cases(u_t = kappa nabla^2 u + f( bold(x),t ), u(bold(x),0) = 0)
$

We can use *Duhamel's Principle* to transform heat source to a collection of heat impulses( initial value problems) over time domain.