 #import "@preview/physica:0.9.3": *
// #show heading: text.with(weight: 1000, font: "Libre Baskerville", size: 6pt)
// #set text(6pt)
// #set page(margin: (x: 0.3cm, y: 0.5cm),numbering: "1/1", columns: 4, flipped: true)
// #show math.equation: set text(6pt)


#set math.equation(numbering:"[1")
#show heading: underline
#set math.cases(gap: 0.2em)
#set page("us-letter")


// = Highlights from ECE 235: Solid-state Physics
// Harry Luo\
// #line(length: 100%, stroke: (thickness: 2pt))
// #set heading(numbering: "1.1")
// #outline(indent: auto,)
// #pagebreak()


= EM wave
== waves
  - Traverse wave: oscillation $perp$ propagation
  - Longitudinal wave: oscillation $parallel$ propagation
  - $v = lambda f$
== EM wave function
$ 
    cases(E_x = E_0 sin(k z - omega t),
    B_y = B_0 sin( k z - omega t)) 
$ 
  where $k = (2pi)/(lambda)$ (wave number) , $quad omega = 2pi f = k c$ ( dispersion relationship), $B_0:$ magnetic field amplitude, $E_0:$ electric field amplitude  
 
== EM Energy flux
Energy flux the energy transferred per unit area per unit time in the direction of wave propagation of an EM wave is defined by the Poynting vecter $ 
    arrow(S) eq.triple (arrow(E) times arrow(B))/(mu_0).
$ 
Where $mu_0 = 1.25663706126 e hyph.minus 6 ("N"dot"A"^( hyph.minus 2))$ is the vacuum permeability.
- Intensity of EM wave is the magnitude of the Poynting vector: $ 
    I = angle.l S angle.r  = (E_0^2)/(377 Omega)
$ 
  where $Omega$ is ohm. Very unorthodoxy I know, but hey we are in Engineering Hall.

- Specially, when EM wave is emitted from a point light source with power $P$ , $ 
    I = (P)/(4 pi r^2) = (E_0^2)/(377 Omega) 
$ 


= Double slit interference
Consider a double-slit setup, where the first dark line is at an angle $theta$ from the central bright line with a distance $Y$. Distance from light source to screen is $L$. Then by trignometry:$ 
    Y = L tan theta. 
$ 
   
When considering constructive/distructive interference,given the separation between two slits is $d$  the path difference between the two slits is $ 
    m lambda = d sin theta "constructive"\
    (m+1/2) lambda = d sin theta "destructive" quad m = 0,1,2 dots
$

#line(length: 100%)
= Photoelectric effect

- Energy of a photon $ 
    E_p = h f = frac(h c , lambda) =Phi + E_k 
$ 
where $Phi$ is the work function of the material, $E_k$ is the kinetic energy of the emitted electron at the surface of the material. $h = 6.26 e hyph.minus 34$ is the Planck constant, $c = 3 e hyph.minus 8 "m/s"$ is the speed of light, $f$ is the frequency of the photon, and $lambda$ is the wavelength of the photon.

- Motion for Photoelectric effect:
  $ 
      E_(k,m) + ( hyph.minus e) V_m = E_(k,d) + ( hyph.minus e) V_d 
  $ 
 Where $E_(k,m)$ is K.E at the metal surface, $V_m$ is the voltage at the metal, $E_(k,d)$ is the K.E of the electron at the detector, and $V_d$ is the voltage at the detector. 
  
- stopping potential
   $ e V_"stop" = frac(h c  , lambda)- Phi  $  the minimum potential required to stop the emitted electron. 
- Threshold frequency& wavelength: set $E_k = 0$: $ 
  Phi = h f_t = frac(h c , lambda_t) \ =>
    f_t = frac(Phi , h) , quad lambda_t = frac(h c , Phi) 
$ 
   

= Blackbody radiation
- Stefan-Boltzmann law:  $ 
    R = sigma  T^4.
$Where $R$ is the *power radiated per unit area*, or surface energy density of radiation. T is temprature in  Kelvin, $sigma = 5.67 e hyph.minus 8 ("W"dot"m"^( hyph.minus 2) dot"K"^( hyph.minus 4))$ is the Stefan-Boltzmann constant.

- Wien's displacement law: $ 
    lambda_max T = b
$ where $b = 2.89 e hyph.minus 3 ("m" dot"K")$ is the Wien's constant, and $lambda_max$ is the wavelength at which the blackbody *radiation is maximum*, and T is the temprature in Kelvin of the blackbody.

- Rayleigh-Jeans law: $ 
    R(lambda) = 1/4 c u(lambda) ,\
    u(lambda) = 8 pi k T lambda^(-4)
$ WHere $R$ is radiation power per unit area, or energy density, $u$ is the energy density of radiation, $c$ is the speed of light, and $k = 8.617 e hyph.minus 5 "eV/K" = 1.38 e hyph.minus 23 J dot K^-1 $ is the Boltzmann constatn This law is valid for long wavelength, but it diverges at short wavelength. *This equation is only good for long wavelength.*
- Planck's law: $ 
   u(lambda) = frac(8 pi h c lambda^(-5) , e^(h c slash lambda k T) - 1  ) 
$ <eq.planck1>
where $k = 1.38 e hyph.minus 23 ("J" dot"K"^( hyph.minus 1))$ is the Boltzmann constant, $h$ is the Planck constant, $T$ is the temprature in Kelvin of the blackbody.

== Energy of radiation
For an ideal blackbody, the energy radiated within a certain wavelength range is found by integrating @eq.planck1 over the range of wavelength. $ 
    U = integral_(lambda_1)^(lambda_2) u(lambda)  dif lambda  
$ 

- It is often times easier to use mid-point approximation to handle the above integration:$ 
    U approx u(lambda) Delta lambda 
$ 
Where $ lambda = (lambda_2 - lambda_1)/2$ is the mid-point of the wavelength range, and $Delta lambda$ is the width of the wavelength range. 


= Wavelike properties of particles
== De broglie Hypothesis
$ 
    f= E/h quad, lambda = h/p 
$ 
Where $E$ is the total energy, p is the momentum, and $lambda$ is the wavelength of the particle. $h = 6.63 e hyph.minus 34 "J" dot"s"$ is the Planck constant.  
- For a particle of zero rest energy, $ 
    E = p c = h f = frac(h c ,lambda ) , 
$ 
    where p is the momentum of the particle.
- For a moving particle, $ 
    E = 1/2 m v^2 = frac(p^2,2m )  
$ 


== Wavefunction for particles
$ 
    Psi(x,t) = A sin(k x - omega t)quad  "or" A e^(i(k x - omega t))  
$ 
- probability density of the particle is $ 
    p(x,t) = abs(Psi)^2 equiv Psi^* Psi
$
== Uncertainty Principle
$ 
    Delta x Delta p >= frac(hbar , 2), quad Delta E Delta t >= frac(hbar , 2) 
$ Where x is position, p is momentum, E is energy, t is time, and $hbar = h/(2 pi) = 1.05 e hyph.minus 34 "J" dot"s"$ is the reduced Planck constant.
=== Min. Energy of Particle in a box 
$ 
    E = frac(p^2 ,2m ) >= frac(hbar^2 ,2 m L^2 )   
$ 
= Schrodinger's equation
== Time-dependent Schrodinger's equation in 1D
 1D Schrodinger's equation in position basis:$ 
    - frac(hbar^2 ,2m ) (diff^2 )/(diff x^2)Psi(x,t) + V(x,t) Psi(x,t) = i hbar (diff ) /( diff t)Psi(x,t)   
$ 
== Time-independent Schrodinger's equation in 1D
Via separation of variable, set $Psi(x,t) =  psi(x) phi(t)$, and noticing $f= E/h$, we have $ 
-frac(hbar ,2m ) (dif ^2)/(dif x^2 ) psi(x) + V(x)psi(x) = E psi(x) \ 
   "time variation of wavefunction:" phi(t) = e^(-i E t slash hbar)  
   
$ 
  
- Probability density is thus simplified to $ 
    p(x) = abs(Psi(x,t))^2 = abs(psi(x))^2
$ 
- Normalization condition: $ 
    integral_(-infinity)^(infinity) abs(psi(x))^2 dif x = 1
$


== Infinite potential well- particle in a box 
- For a particle in a box of length $L$ , where $V(x) = 0$ for $0 < x < L$, and $V(x) = infinity$ otherwise, the wavefunction is found by$ 
    - frac(hbar^2 ,2m ) (dif ^2)/(dif x^2 ) psi(x) = E psi(x) \ =>
   psi_n (x) = sqrt(2/L) sin(frac(n pi x ,L ) ).  
$ Noticing boundary values, the following is obtained: $ 
    E_n = frac(hbar^2 k_n^2 , 2 m) = n^2 frac( hbar^2 pi^2 ,2 m L ^2 ) = n^2 E_1   
$ where $k= 2pi/ lambda; k^2 = (p/hbar)^2 = (2 m E)/(hbar^2)$ 

- Specially, the energy levels can be also expressed in terms of $h c$ and $m c^2$: $ 
    E_1 = frac((h c)^2 ,8 m c^2 L^2 )  ; quad E_n = frac(n^2 ( h c)^2 ,8 m c ^2 L ^2 ) 
$ 
 

- Normalization condition in box of length $L$: $ 
    integral_(0)^(L) abs(psi(x))^2 dif x = 1
$



= Appendix
1. Useful integral for probability of wavefunction $ 
    integral_(-infinity)^(infinity)e^(-a(x+b)^2)   dif x = sqrt(pi/a)   
$ 
2. Useful constants: 
   - hc = 1240 eV nm. 
   - For an electron: $m c^2 = 0.511$MeV $= 5.11 e 5 $ eV 


//////
= Past homework 
= 3.17
By Stefan-Boltzmann Law, set total power $P = kappa R$ and initial tempreture $T_0$ , we have $
  R = sigma T^4 => P = kappa sigma T^4\
  P'/P = T'^4/T^4 = (2T_0)^4 / T_0^4 = 16)
$
#rect(inset: 8pt)[
  $display("Power increases by a factor of 16.")$
]

#line(length: 100%)
= 3.19

- (a)
Let initial tempreture be $T_0$ and the new tempreture be $T'$. By Wien's Law, we have $ lambda T_0 = 2.898e^(-3) med m dot K quad => T_0 = (2.898e hyph.minus 3) / (27e hyph.minus 6)) K = 107.33K. $

Using Stefan-Boltzmann Law to find the new tempreture. $
  (P')/(P) = (T')^4 / T_0^4 = 2 quad => T' = root(4, 2T_0^4) = root(4, 2 times 107.33^4) =
  #rect(inset: 8pt)[
    $ display(127.63K)$
  ]
$

- (b) By Wien's law, $
    lambda = (2.898e hyph.minus 3) / T' =( 2.898e hyph.minus 3 )/ 127.63 m =
    #rect(inset: 8pt)[
      $ display(22.7 mu m)$
    ]
  $
#line(length: 100%)

= 3.24
- (a)
Energy quantization shows: $
  E = h f = (h c) / lambda.
$
Given $lambda in (380,750)$nm, $ (h c)/(750"nm")<E<(h c)/(380"nm") quad => 
#rect(inset: 8pt)[
$ display(E in (1.653,3.542)"eV")$
]
 $

- (b)
  $
    E = h f = 4.136×10^(-15)  times  100 times  10^6 "eV" = 
#rect(inset: 8pt)[
$ display(    4.136×10^-7 "eV")$
]

  $
#line(length: 100%)

= 3.25

- (a)
By the photoelectric effect equation, at therashold wavelength, we have $ 
     Phi = h f_t = h c/ lambda_t quad => lambda_t = (h c)/(Phi) = (1.24e hyph.minus 6)/(4.87 )"m" = 
#rect(inset: 8pt)[
$ display(     2.546 e hyph.minus 7 m)$
]

$ 



- (b)
As suggested on Piazza, we use mid-point approximation to approximate the integrated energy density of sunlight from $0$nm  to $254.6$nm by using the intensity at $254.6 slash 2 = 127.3$ nm as constant density: $ 
  u(127.3"nm") med  times (254.6 "nm") = (8 pi h c (127.3 e hyph.minus 9 "m" )^(-5))/(e^(h c slash ( k times  5800"K"  times  127.3 e hyph.minus 9"m" ) )-1)  times  (254.6 e hyph.minus 9"m") approx 1.23e hyph.minus 4 quad J slash m^3
$ 
Energy density is thus approximately $ 
    R' = c/4 (1.23 e hyph.minus 4)  quad J slash m^3
$ 
Total energy is given by $ 
    R = sigma T^(4) = sigma  times  5800"K"^(4) approx 6.42 e 7 quad W slash m^2 
$ 
Thus the maximal fractional power is $ 
#rect(inset: 8pt)[
$ display(     (R')/(R) approx 1.4 e hyph.minus 4 )$
]

$ 
#line(length: 100%)


= 3.26

- (a)
Using the photoelectric equation,we can find threshold freq and wavelength, $f_t, lambda_t$ as follows, $ 
    Phi = h f_t = frac(h c , lambda_t) quad \ => f_t = frac(Phi , h) = (1.9 e V)/(4.136 e hyph.minus 15 e V dot s) = 
#rect(inset: 8pt)[
$ display(    4.59 e 4 " Hz")$
]
 , \
     lambda_t = frac(h c  , Phi) = (1240 "eV" dot "nm")/(1.9 "eV") = 
#rect(inset: 8pt)[
$ display(     653 "nm")$
]

$ 

- (b,c,d)
  The stopping potential can be found as follows, $ 
      e V_0 = frac(h c , lambda) - Phi quad => V_0 = frac(h c , lambda e ) - frac(Phi , e)   .
  $ 
  
For $lambda = 300$nm: $
  V_0 = frac(1240 "eV" dot "nm" , e times  300 e hyph.minus 9 "m" ) -frac(1.9 "eV" ,e ) = 
#rect(inset: 8pt)[
$ display(   2.23 V)$
]
$

For $lambda= 400$ nm, $ 
    V_0 = 1/e (1240"eV" dot "nm")/(400"nm") - 1.9"eV" = 
#rect(inset: 8pt)[
$ display(    1.20 V)$
]
 
$ 


#line(length: 100%)
= 3.28
- (a)
  $ 
      f_t = (Phi)/(h) = (4.22 "eV")/(4.14e hyph.minus 15 "eV" dot s) =
#rect(inset: 8pt)[
$ display(      1.02  times  10^15 "Hz")$
]

  $ 
  
- (b)
$ 
    f = c/lambda = (3 e 8)/(560 e hyph.minus_9) "Hz" = 
#rect(inset: 8pt)[
$ display(    5.36  times  10^14 "Hz" < f_t)$
]

$ 
Frequency is less than the threshold frequency, so *no* photoelectrons are emitted.
#line(length: 100%)
= 3.31
Consider the photoelectric effect equation for $n = 60$ photons,
$ 
    E = n (h c)/(lambda) = (60 times 6.63e hyph.minus 34  times  3e 8)/(550 e hyph.minus -9 ) J = 
#rect(inset: 8pt)[
$ display(    2.17 e hyph.minus 17 J)$
]
 .
$ 


#line(length: 100%)
= 3.32

- (a) $ 
    Phi = frac(h c, lambda) = frac(1240, 653) "eV" = 
#rect(inset: 8pt)[
$ display(    1.9 "eV" )$
]

$ 

- (b) $ 
    E_k = frac(h c , lambda ) - Phi = frac(1240, 300) "eV" - 1.9 "eV" =
#rect(inset: 8pt)[
$ display(     2.23 "eV"  )$
]

$ 


#line(length: 100%)
= 3.42
Consider the stopping potential function for both cases, we have $ 
    e V = frac(h c , lambda )- Phi  \
=> cases(
V_1 = display(1/e frac(h c, lambda_1) )- Phi , 
V_2 = display(1/e frac(h c, lambda_2)) - Phi  

)
$<eq.3.42> 
Where $V_1 = 0.52 V, med lambda_1 = 450 "nm"$; $V_2 = 1.9V, med lambda_2 = 300 "nm"$.

Solving @eq.3.42 for $h$ and $Phi$: $ 
    cases(0.52V = display(1/e frac(h c, 450"nm") )- Phi , 
1.9V = display(1/e frac(h c, 300"nm")) - Phi  \ 
) => 
#rect(inset: 8pt)[
$ display(cases(h = 6.6376 e hyph.minus 34 "J" dot "s" quad"(a good approximation!)  ", Phi = 2.24 "eV"))$
]

$ 


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
 
= 6-5
+ Show that the wave funciton $Psi(x,t) = A sin (k x - omega t)$ does not satisfy the time-dependent Schrodinger equation.
+ Show that $Psi(x,t) = A cos( k x - omega t) + i A sin(k x - omega t)$satisfies the time-dependent Schrodinger equation.
#line(length: 10%)
Solution:
Recall the time-dependent Schrodinger equation:$ 
    -hbar^2/(2m) Psi_(x x) + V Psi = i hbar Psi_t ,
$ <eq.1> assuming $V = 0$.

+ We have $ Psi_(x x) =- k^2 A sin (k x - omega t)$ , and $Psi_t = -A omega cos ( k x - omega t)$. Trivially, plugging back into @eq.1, the LHS is *not equal* to the RHS. 


+ We have $ - frac(hbar^2 ,2 m ) Psi_(x x) = frac(hbar^2 k^2 A ,2 m ) cos ( k x - omega t) + frac(hbar^2 i k^2 A ,2 m  )sin ( k x - omega t)\
  i hbar Psi_t = hbar omega A cos ( k x - omega t) + i hbar omega A sin(k x - omega t) . $ 
  Upon noticing $hbar omega = frac( hbar^2 k^2 ,2 m  ) +V ,$ with $V = 0,$  the two equations above *are equivalent*


#line(length: 100%)

= 6-9
A particle is in a infinite square well of width $L$. Calculate the ground-state energy if:
+ The particle is a proton and $L = 0.1$ nm. a typical size for a molecule;
+ the particle is a proton and $L = 1$fm, a typical size for a nucleus.
#line(length: 10%)   
Solution:
Using $E_1 = frac(hbar^2 pi^2 , 2 m L^2 ), $ we have:
+ $ 
    E_1 = frac(hbar^2 pi^2 ,2 * 1.67 e hyph.minus 27 "kg" *  (0.1"nm" ^2 ) ) = 3.28 e hyph.minus 21 "kg" m^2 slash s^2 = 
#rect(inset: 8pt)[
$ display(    0.021 "eV")$
]

$
 
+ Similarly, $ 
    E_1 = 3.28 e hyph.minus 11 "kg" m^2 slash s^2 = 
#rect(inset: 8pt)[
$ display(    205 "MeV")$
]

$ 


#line(length: 100%)
= 6-12
A mass of $10^(-6)$ g is moving with a speed of about $10^(-1)$cm/s in a box of length $1$cm. Treating this as a one-dimensional infinite square well, calculate the approximate value of the quantum number $n$    
#line(length: 10%)
Solution:
Equating the kinetic energy of the particle to the energy of n-th level of the box, we have:$ 
    1/2 m v^2 = frac(n^2 pi^2 hbar^2 ,2 m L^2 ) quad => n = frac(m v L ,pi hbar ) \
    => n = frac(10^(-6)g * 0.1 "cm/s" * 1 "cm" ,pi hbar ) =
#rect(inset: 8pt)[
$ display(     3.02 e 19    )$
]

$ 





#line(length: 100%)
= 6-16
The wavelength of light emitted by a ruby laser is $694.3$nm. Assuming that the emission of a photon of this wavelength accompanies the transition of an electron from the $n=2$ level to the $n=1$ level of an infinite square well, compute $L$ for the well.
#line(length: 10%)
Solution:
Equating the energy difference between the two energy levels to the energy of the photon emitted, we have: $ 
     Delta E = frac(h c ,lambda ), quad Delta E = E_2 - E_1 = frac( 3 hbar^2 pi^2 ,2 m L^2 )  \
     => L= sqrt(frac(3 pi lambda h ,8 m c ) ) = (frac(3 * 694.3 "nm" * h , 8 * m_e *c) ) =
#rect(inset: 8pt)[
$ display(      7.95 * e hyph.minus 10 " m" )$
]

$ 
