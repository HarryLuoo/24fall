#set math.equation(numbering: "(1)")
#set page(margin: (x: 1cm, y: 1cm))
 #import "@preview/physica:0.9.3": *
#place(top + right, rect(inset: 3pt)[ECE 235 Homework 8])

= 1.
Given the width of the depletion region $W$ as $W = sqrt(display(frac(2 epsilon_s (N_A + N_D) , q N_A N_D)) V_(b i )) $ , where $N_A, N_D$ are the doping concentrations, $V_(b i)$ is the built-in potential, and $epsilon_s$ is the permittivity of the semiconductor. A silicon PN junction has $N_A = 10^16 "cm"^3$, $N_D = 10^15 "cm"^3$, and the intrinsic carrier concentration $n_i = 1.5 * 10^10 "cm"^-3$. The permittivity of silicon is $epsilon_s = 11.7 epsilon_0$, and $epsilon_0 = 8.85 * 10^(-14) "F/cm"$.
- Calculate the built-in potential $V_"bi"$   
- Calculate the depletion region width at equilibrium.
#line(length: 100%)

= a. 
using the relation $ 
    V_"bi" = display(frac(k T , q)) ln(display(frac(N_A N_D , n_i^2 )) ), 
$ where , taking $T = 300 K$, $k = 1.38 * 10^(-23) "J/K"$, and $q = 1.6 * 10^(-19) "C"$, we have:
$ 
    display(frac(N_A N_D , n_i^2 )) = display(frac(10^16 * 10^15 , (1.5 * 10^10)^2 )) = 4.44 e 10, quad display(frac(k T , q)) = 0.0259 V  
$ 
Thus $ 
#rect(inset: 8pt)[
$ display(    V_"bi" = 0.0259 ln(4.44 * 10) = 0.635 V. )$
]
 
$ 

= b. 
Notice $N_A + N_D = 1.1 * 10^16 "cm"^(-3), N_A N_D = 10^31 "cm"^(-6)$ ,

Using $ 
  W &= sqrt(display(frac(2 epsilon_s (N_A + N_D) , q N_A N_D)) V_(b i )) \ 
  & = sqrt(display(frac(2 * 1.035 e hyph.minus 12 * 1.1 e 16 , 1.6 e hyph.minus 19 * 10^31)) * 0.635 V) 
#rect(inset: 8pt)[
$ display(  = 9.48 e hyph.minus 5 "cm" )$
]

$ 



#line(length: 100% , stroke: 2pt)
= 2.
Felectric FIeld in the Depletion Region. 

The expression for the maximum electric field in the depletion region is $E_"max"= display(frac(q N_A W_P , epsilon_s))= display(frac(q N_D W_N ,epsilon_s )) $, where $W_P, W_N$ are the widths of the depletion region on the P and N sides, respectively. 
- Using the information from problem 1, calculate the maximum electric field at equilibrium.
- Show that the built-in potential $V_"bi"$ is the integral of the electric field across the depletion region: $ 
V_"bi" = integral_(0)^(W) E(x) dif x 
$ 
#line(length: 100%)
= a. 
Using $ 
     W = W_N + W_P,  
$ with charge neutrality condition: $
q N_A W_P = q N_D W_N => W_P/ W_N = N_D / N_A  = 0.1.
$ 
So $ 
    W = &W_N + W_P = 1.1 W_N 
    \ => & W_N = W/1.1 = (9.48 * 10^(-5)) / (1.1) = 8.64 e hyph.minus 5 "cm", \ 
    &W_P = 0.1 W_N = 8.64 e hyph.minus 6 "cm"
$ 
Using
$ 
    E_"max" = display(frac(q N_A W_P , epsilon_s))  
$ 
We have $ 
    E_"max" =(1.6 * 10^(-19) C * ( 10^16 "cm"^(-3) (8.64 * 10 ^(-6)))) / (1.035 * 10^(-12) F/"cm") 
#rect(inset: 8pt)[
$ display(    = 1.334 * 10^4 V slash "cm")$
]

$

= b. 
// Consider the Poisson's equation in 1D, with $rho = q N_D$: $ 
//     (dif ^2 phi)/(dif x^2 ) = - display(frac(q N_D , epsilon_s))   
// $ 
// Integrating twice, we have $ 
//     phi(x) = display(frac(- q N_D x^2  , 2 epsilon_s))+ C_1 x + C_2  
// $ 
// Using $E= - (dif phi)/(dif x) , $we have $ 
//     E(x) = display(frac(q N_D , epsilon_s)) x - C_1. 
// $ 

// For a depletion region extending on $x in [0,W]$, we have $E(0) = E_"max", E(W) = 0.$ Applying the boundary conditions, we have $ 
//     E(0) &= -C_1 = E_"max" => C_1 = - E_"max" \ 
//     E(W) &= display(frac(q N_D , epsilon_s)) W + E_"max" = 0 \ 
//      &=> display(frac(q N_D W , epsilon_s)) = - E_"max".
// $ 
// So,  a linear relationship on endpoints gives us  $ 
//     E(x)= E_"max" - display(frac(E_"max" x ,W ))  = E_"max" (1-x/W)  $ 

 
// Then we can write $ 
    
//    integral_(0)^W E(x) dif x & = integral_(0)^W E_"max" ( 1 - x/W)  dif x \ 
//     & =  display(frac(E_"max" W , 2)) 
// $ 

Using definition that $ 
    E(x) = - (dif V)/(dif x), 
$ we have $ 
    integral_(0)^W E(x) dif x = V(0) - V(W).   
$ 
Since P-side is at a lower potential thatn the N-side in equilibrium, we have $ 
    V_"bi" = V(N)-V(P) = V(0)- V(W) = integral_(0)^W E(x) dif x
$ #h(1fr) $qed$


