#set math.equation(numbering: "(1)")
#set page(margin: (x: 1cm, y: 1cm))
 #import "@preview/physica:0.9.3": *
#place(top + right, rect(inset: 3pt)[ECE 235 Homework 8])

= 1.
Given the width of the depletion region $W$ as $W = sqrt(display(frac(2 epsilon_s (N_A + N_D) , q N_A N_D)) V_(b i )) $ , where $N_A, N_D$ are the doping concentrations, $V_(b i)$ is the built-in potential, and $epsilon_s$ is the permittivity of the semiconductor. A silicon PN junction has $N_A = 10^16 "cm"^3$, $N_D = 10^15 "cm"^3$, and the intrinsic carrier concentration $n_i = 1.5 * 10^10 "cm"^-3$. The permittivity of silicon is $epsilon_s = 11.7 epsilon_0$, and $epsilon_0 = 8.85 * 10^(-14) "F/cm"$.
- Calculate the built-in potential $V_"bi"$   
- Calculate the depletion region width at equilibrium.
#line(length: 100%)





#line(length: 100% , stroke: 2pt)
= 2.
Felectric FIeld in the Depletion Region. 

The expression for the maximum electric field in the depletion region is $E_"max"= display(frac(q N_A W_P , epsilon_s))= display(frac(q N_D W_N ,epsilon_s )) $, where $W_P, W_N$ are the widths of the depletion region on the P and N sides, respectively. 
- Using the information from problem 1, calculate the maximum electric field at equilibrium.
- Show that the built-in potential $V_"bi"$ is the integral of the electric field across the depletion region: $ 
V_"bi" = integral_(0)^(W) E(x) dif x 
$ 
 





