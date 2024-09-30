#set math.equation(numbering: "(1)")
#set page(margin: (x: 3cm, y: 2cm))
 #import "@preview/physica:0.9.3": *

#place(top + right, rect(inset: 3pt)[_ECE235 HW2, HARRY LUO_])


= 3.48
_A 100-W beam of light is shone onto a blackbody of mass $2e hyph.minus 3$ kg for $10^4$sec. The blackbody is initially at rest in a frictionless space. *(a)*Compute the total energy and momentum absorbed by the blackbody from the light beam. *(B)*calculate the blackbody's velocity at the end of the period of illumination; *(C)*Compute the final kinetic energy of the blackbody. Why is the latter less than the total energy of the absorbed photons? 
_
- (A)
Energy absorbed: $ 
    E = integral_(T) P dif t = 100 J slash s * 10^4 s = 10^6 J  . 
$ 
Momentum of photon is calculated by: $ 
    p = E/(c) = (10^6 J) / (3 * 10^8 m slash s) = 
  3.33 * 10^-3 N dot s.
$
Conservation of momentum tells us that the blackbody will have the same momentum as the photons, so the total momentum absorbed is *_$3.33 * 10^-3 N dot s.$_*



- (B)
By exploiting momentum, we find the terminal velocity by: $ 
    p = m v quad => Delta v = (Delta p)/m = (3.33 * 10^-3 N.s) / (2 * 10^-3 "kg") = 1.67 m slash s\
    => v_t = Delta v - v_i = 
#rect(inset: 8pt)[
$ display(    1.67 m slash s.)$
]

$

- (C)
  $ 
      T = 1/2 m v^2 = 1/2 * 2 e hyph.minus 3* 1.67^2 J= 
#rect(inset: 8pt)[
$ display(      2.78 * 10^(-3) J)$
]

  $ 
Kinetic energy being less than the total energy absorbed is due to the fact that the blackbody is a perfect absorber, and the difference in energy is lost to *increase its internal heat* and *radiate into space*.


#line(length: 100%)
= 3.51
_Determine the fraction of the energy radiated by the Sun in the visible region of the spectrum(350 nm to 700 nm). Assume that the Sun's surface temperature is 5800K.
_
- 
By Planck's law, the energy radiated by the Sun in the visible region is found by the following integration:$ 
    U_v = integral_(350 "nm")^(700 "nm") (8 pi h c lambda^(-5))/(e^(h c slash lambda k T) - 1) d lambda.

$ 
We approximate this integral using mid-point approximation, with $lambda = (700 + 350) slash 2 "nm" = 525 "nm"$ and interval $Delta lambda = 350$nm  :$ 
    U_v approx u(lambda) Delta lambda =(8 pi h c (525  "nm" )^(-5))/(e^(h c slash 525 "nm" dot k dot 5800 K) - 1) times 350 "nm" = 0.389 J slash m^3. 
$ 
Then, using Rayleigh-Jeans Equation:
$ 
    R_v = c/4 U_v = 2.92 e 7  W slash m^2,
$ 
while total energy radiated by Sun is $ 
     R = sigma T^(4) = sigma  times  5800"K"^(4) approx 6.42 e 7 quad W slash m^2  .
$ 

Thus the fraction of energy radiated in the visible region is: $ 
#rect(inset: 8pt)[
$ display(    frac(R_v , R) = 0.455.)$
]

$



#line(length: 100%)
= Other Problem (1)
_If a person of mass 70kg walks at the speed of $5 "km/hr"$, what is their DeBroglie wavelength? Do you think it would be possible to observe the person's wavelike properties in experiment ( compare it to the conditions of double slit experiment)? Explain your reasoning._  
-
$ 
    lambda = frac(h,m v ) = frac(h,70 "kg" dot  5 "km/h" )  = 
#rect(inset: 8pt)[
$ display(    6.815 e hyph.minus 36 med m. )$
]

$ 

This wavelength is of magnitudes smaller than what is typically observed in double slit experiments, which are on the order of $10^-10 m$ or bigger. It is thus nearly impossible to detect.


#line(length: 100%)
= Other Problem (2)
_You are given the task of constructing a double slip experiment for electrons of energy of 5 eV (converting this into velocity)._
+ _If you wish the first dark line of the interference patter to occur at $5degree$, what must the separation between the slits be?_
+ _How far from the slits must the detector plane be located, if the first dark line on each side of the central maximum is to be seperated by 1cm? _
- 
$ 
    T = 1/2 m v^2 quad => v = sqrt(frac(2 T,m ) ) = sqrt(frac(2 times 5 e V, 9.11 e hyph.minus 31 "kg" ) ) = 1.326 e 6 med m slash s.
$ 
We need to find the wavelength of our propagating electrons: $ 
    lambda = frac(h, m v) = frac(6.63 e hyph.minus 34, 9.11 e hyph.minus 31 times 1.326 e 6) = 5.485 e hyph.minus 10 m.
$
For the first dark fringe to occur at $5degree$, we have: $ 
    d sin(theta) = 1/2 lambda quad => d = frac( lambda, 2sin(theta)) = frac(5.485 e hyph.minus 10 m, 2sin(5degree)) \
#rect(inset: 8pt)[
$ display(    d = 3.146 e hyph.minus 9 m)$
]
.
$

- $ 
    Y = L tan theta => L = frac(Y, tan(theta)) = frac(0.5"cm", tan(5degree)) = 
#rect(inset: 8pt)[
$ display(    5.71 "cm")$
]

$ 

#line(length: 100%)
= Other Problem (3)
_A particle moving in one dimension between rigid walls separated by a distance $L $ has the wave function $psi(x) = A sin(pi x /L )$. Since the particle must remain etween the walls, what must be the value of A? _

- Using the Noamalized wavefunction in a confined 1-D space, we can jot down the following: $ 
    integral_(0)^(L) psi^*(x) psi(x) dif x  =1\
    => integral_(0)^(L) abs(psi(x))^2  dif x=integral_(0)^(L) A^2 sin^2(pi x /L) dif x = 1\
$ 
The above integral yields: $ 
    eval((1/2x + L/(4pi) sin( (2pi)/L x))_(0)^(L)) = 1/A^2 \ 
#rect(inset: 8pt)[
$ display(    => A = sqrt(2/L) )$
]

$ 
 
