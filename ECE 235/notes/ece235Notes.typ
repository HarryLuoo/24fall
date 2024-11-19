 #import "@preview/physica:0.9.3": *

//////////notecard mode////////////
// #show heading: text.with(weight: 1000, font: "Libre Baskerville", size: 6pt)
// #set text(7pt)
// #set page(margin: (x: 0.3cm, y: 0.5cm),numbering: "1/1", columns: 5, flipped: true)
// #show math.equation: set text(7pt)


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



///////////////////////////MT1/////////////////////////////
// = EM wave
// == waves
//   - Traverse wave: oscillation $perp$ propagation
//   - Longitudinal wave: oscillation $parallel$ propagation
//   - $v = lambda f$
// == EM wave function
// $ 
//     cases(E_x = E_0 sin(k z - omega t),
//     B_y = B_0 sin( k z - omega t)) 
// $ 
//   where $k = (2pi)/(lambda)$ (wave number) , $quad omega = 2pi f = k c$ ( dispersion relationship), $B_0:$ magnetic field amplitude, $E_0:$ electric field amplitude  
 
// == EM Energy flux
// Energy flux the energy transferred per unit area per unit time in the direction of wave propagation of an EM wave is defined by the Poynting vecter $ 
//     arrow(S) eq.triple (arrow(E) times arrow(B))/(mu_0).
// $ 
// Where $mu_0 = 1.25663706126 e hyph.minus 6 ("N"dot"A"^( hyph.minus 2))$ is the vacuum permeability.
// - Intensity of EM wave is the magnitude of the Poynting vector: $ 
//     I = angle.l S angle.r  = (E_0^2)/(377 Omega)
// $ 
//   where $Omega$ is ohm. Very unorthodoxy I know, but hey we are in Engineering Hall.

// - Specially, when EM wave is emitted from a point light source with power $P$ , $ 
//     I = (P)/(4 pi r^2) = (E_0^2)/(377 Omega) 
// $ 


// = Double slit interference
// Consider a double-slit setup, where the first dark line is at an angle $theta$ from the central bright line with a distance $Y$. Distance from light source to screen is $L$. Then by trignometry:$ 
//     Y = L tan theta. 
// $ 
   
// When considering constructive/distructive interference,given the separation between two slits is $d$  the path difference between the two slits is $ 
//     m lambda = d sin theta "constructive"\
//     (m+1/2) lambda = d sin theta "destructive" quad m = 0,1,2 dots
// $

// #line(length: 100%)
// = Photoelectric effect

// - Energy of a photon $ 
//     E_p = h f = frac(h c , lambda) =Phi + E_k 
// $ 
// where $Phi$ is the work function of the material, $E_k$ is the kinetic energy of the emitted electron at the surface of the material. $h = 6.26 e hyph.minus 34$ is the Planck constant, $c = 3 e hyph.minus 8 "m/s"$ is the speed of light, $f$ is the frequency of the photon, and $lambda$ is the wavelength of the photon.

// - Motion for Photoelectric effect:
//   $ 
//       E_(k,m) + ( hyph.minus e) V_m = E_(k,d) + ( hyph.minus e) V_d 
//   $ 
//  Where $E_(k,m)$ is K.E at the metal surface, $V_m$ is the voltage at the metal, $E_(k,d)$ is the K.E of the electron at the detector, and $V_d$ is the voltage at the detector. 
  
// - stopping potential
//    $ e V_"stop" = frac(h c  , lambda)- Phi  $  the minimum potential required to stop the emitted electron. 
// - Threshold frequency& wavelength: set $E_k = 0$: $ 
//   Phi = h f_t = frac(h c , lambda_t) \ =>
//     f_t = frac(Phi , h) , quad lambda_t = frac(h c , Phi) 
// $ 
   

// = Blackbody radiation
// - Stefan-Boltzmann law:  $ 
//     R = sigma  T^4.
// $Where $R$ is the *power radiated per unit area*, or surface energy density of radiation. T is temprature in  Kelvin, $sigma = 5.67 e hyph.minus 8 ("W"dot"m"^( hyph.minus 2) dot"K"^( hyph.minus 4))$ is the Stefan-Boltzmann constant.

// - Wien's displacement law: $ 
//     lambda_max T = b
// $ where $b = 2.89 e hyph.minus 3 ("m" dot"K")$ is the Wien's constant, and $lambda_max$ is the wavelength at which the blackbody *radiation is maximum*, and T is the temprature in Kelvin of the blackbody.

// - Rayleigh-Jeans law: $ 
//     R(lambda) = 1/4 c u(lambda) ,\
//     u(lambda) = 8 pi k T lambda^(-4)
// $ WHere $R$ is radiation power per unit area, or energy density, $u$ is the energy density of radiation, $c$ is the speed of light, and $k = 8.617 e hyph.minus 5 "eV/K" = 1.38 e hyph.minus 23 J dot K^-1 $ is the Boltzmann constatn This law is valid for long wavelength, but it diverges at short wavelength. *This equation is only good for long wavelength.*
// - Planck's law: $ 
//    u(lambda) = frac(8 pi h c lambda^(-5) , e^(h c slash lambda k T) - 1  ) 
// $ <eq.planck1>
// where $k = 1.38 e hyph.minus 23 ("J" dot"K"^( hyph.minus 1))$ is the Boltzmann constant, $h$ is the Planck constant, $T$ is the temprature in Kelvin of the blackbody.

// == Energy of radiation
// For an ideal blackbody, the energy radiated within a certain wavelength range is found by integrating @eq.planck1 over the range of wavelength. $ 
//     U = integral_(lambda_1)^(lambda_2) u(lambda)  dif lambda  
// $ 

// - It is often times easier to use mid-point approximation to handle the above integration:$ 
//     U approx u(lambda) Delta lambda 
// $ 
// Where $ lambda = (lambda_2 - lambda_1)/2$ is the mid-point of the wavelength range, and $Delta lambda$ is the width of the wavelength range. 
////////////////////////MT1///////////////////////////





/////////////////MT2///////////////////////////////////////////
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
    Psi(x,t) = A sin(k x - omega t)quad  \ "or" A e^(i(k x - omega t))  
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

= Potential Barrier
== Potential Well
=== Infinite potential well- particle in a box $E<V_0$ 
- For a particle in a box of length $L$ , where $V(x) = 0$ for $0 < x < L$, and $V(x) = infinity$ otherwise, the wavefunction inside box is found by$ 
    - frac(hbar^2 ,2m ) (dif ^2)/(dif x^2 ) psi(x) = E psi(x) \ =>
   psi_n (x) = sqrt(2/L) sin(frac(n pi x ,L ) ).  
$ Noticing boundary values, the following is obtained: $ 
    E_n = frac(hbar^2 k_n^2 , 2 m) = n^2 frac( hbar^2 pi^2 ,2 m L ^2 ) = n^2 E_1   
$ where $k= 2pi/ lambda; k^2 = (p/hbar)^2 = (2 m E)/(hbar^2)$ 

- Notably, $lambda_n = 2L/n;$ and  the energy levels can be also expressed in terms of $h c$ and $m c^2$: $ 
    E_1 = frac((h c)^2 ,8 m c^2 L^2 )  ; quad E_n = frac(n^2 ( h c)^2 ,8 m c ^2 L ^2 ) 
$ 
 These results are true for any potential well with $V(x) = 0$ inside the well.

- Normalization condition in box of length $L$: $ 
    integral_(0)^(L) abs(psi(x))^2 dif x = 1
$


=== Finite Square Well  ( $ E<V_0$ )
Consider Finite Square well with constant potential $V_0 >E$. 
- Inside the well, The Schrodinger's eqn becomes $ 
    psi'' =  frac((E - V_0 )  2m,- hbar^2  ) psi equiv alpha psi 
$ and is solved with boundary conditions as $ 
    psi_2(x) = A_1 sin (k x) + A_2 cos(k x)
$ 

- Outside well:$ 
    psi_1(x)= B_1 e^(k x) ; quad psi_3 (x) = C_2 e^(-k x)
$ 
    with $ 
    k = frac(sqrt(2m(V_0-E))  , hbar )  .
$ 
== Step potential: Transmission & Reflection
=== When $E>V_0,$
Now consider finite step potential $V(x) = V_0H(x), E>V_0$. The wave equation is solved as $ 
    psi_1(x) = A e^(i k_1 x) + B e^(-i k_1 x) ; \ psi_2(x) = C e^(i k_2 x) 
$ 
    with $k_1 = frac(sqrt(2 m E)  , hbar) , k_2 = frac(sqrt(2 m (E - V_0))  , hbar) $ Boundary condition further gives $ 
        B = frac(k_1-k_2 , k_1+k_2) A; \ C = frac(2 k_1 , k_1+k_2) A. 
    $ We are thus motivated to define Reflection and Transmission coefficients as $ 
        R = abs(B/A)^2 = frac((k_1-k_2)^2,(k_1+k_2)^2) ; \ T = frac(k_2 abs(C)^2  , k_1 abs(A)^2 )  = frac(4 k_1 k_2,(k_1+k_2)^2); \ R + T = 1.
    $ They are the probability of reflection and transmission respectively.

=== When $E<V_0,$ 
we have $R = 1$ and thus no transmission. This is the case for a particle in a finite square well.  
    Before potential step: $ 
        psi_1(x) = A e^(i k_1 x) + B e^(-i k_1 x) ; \ psi_2(x) = C e^(- alpha x)
    $ 
    where $alpha = frac(sqrt(2 m (V_0-E))  , hbar) $ and $k_1 = frac(sqrt(2 m E)  , hbar) $


== Box potential: Tunneling
- consider $E < V_0$ :
  Transmission: $T = G e^(-2 alpha L)$; $G = 16 E/V_0 ( 1- E / V_0)$  Particle can tunnel through the box potential before exponential decay to zero inside the box.


= Expectations & Operators
- expectation $ expval(f(x))  = integral_(-infinity)^(infinity) psi^* med f(x) med psi dif x $ .
- for infinite square well: $expval(x^2 )= frac(L^2  , 3) - frac(L^2  , 2 n^2  pi^2 ) $ 

- Momentum operator: $hat(p_q) = frac(hbar , i) partial_q$ , Hamiltonian operator: $hat(H) = frac(hat(p)^2  , 2m)  + V(x) $.
- $ expval(hat(p)) = integral_(-infinity)^(infinity) psi^* (hbar/i) partial_x psi dif x $ 


= Schrodinger's equation in 3D
- time independent: $ 
    - frac(hbar^2  , 2m) nabla^2 psi + V psi = E psi
$ 
== Infinite square well in 3D
Separation of variables: $ 
    psi( bold(x))= psi(x) med psi(y) med psi(z)  
$ 
and Schrodinger's eqn is solved as $ 
    psi( bold(x)) = A sin(k_1 x) sin(k_2 y) sin(k_3 z) 
$ 
and we find descriptions on energy level by plugging this solution back: $ 
    E_(n_1 n_2 n_3) = frac(hbar^2 pi^2  , 2 m L^2 ) ( n_1^2  + n_2^2  + n_3^2 ) 
$ 
or, when well is not cubic: $ 
    E_(n_1 n_2 n_3) = frac(hbar^2 pi^2  , 2 m) ( n_1^2  /L_x^2  + n_2^2  / L_y^2  + n_3^2  / L_z^2  ).
$ 
Where n is a quautum number $n in {1,2,3 dots}$. Ground state: $n_1 = n_2 = n_3 = 1$
- when potential is cubic, notice degeneracy in energy levels. For example, the first energy state: $ 
    E_(112) = E_(121) = E_(211)
$ 
 
== Scho's equation in spherical coord: atomic model, and quantum numbers

Due to ugliness of Spherical Laplacian, and out of our respect to Engeineering, we will skip the explicit Schrodinger's Eqn in spherical coord.

Sepration of variables: $ 
    psi(r, theta, phi) = R(r) med f(theta) med g(phi) 
$ 
- Solving partially using spherical harmonics: $ 
    Y_(l m) ( theta, phi) = f_(l m) (theta) g_m (phi) , \ g_m (phi) = e^(i m phi)
$ 
    A list of $Y_(l m)$ can be found in text p.274

- The radial part can be solved by Legendre polynomials: $ 
    R_(n l) (r) = A_(n l) e^(-r slash a_0 n) r^l cal(L)_(n l)^(r slash a_0) ,\
    a_0 = hbar^2  / (k e^2  mu)
$ 

=== quantization of angular momentum
Angular momentum of a particle satisfying 3d Scho's eqn is $ 
     bold(L) =  bold(r) times bold(p) => \ med abs( bold(L)) = hbar sqrt(l(l+1)),quad  L_z = m_l hbar
$ 
Where $l = 0,1,2, dots, (n-1)$ , and $m_l = 0, plus.minus 1, plus.minus 2, dots, plus.minus (l-1), plus.minus l $ are quantum numbers.


== Atomic energy level
Using solution of $R_(n l) (r)$ and $f_(l m)(theta) g_m (phi)$ on a Hydrogen atom, and using the potential due to nucleus being $V(r) = - Z k e^2  slash r $ , we can find the energy levels of an atom as$ 
    E_n = -frac(mu , 2n^2 )  (frac(Z k e^2  , hbar) )^2 = - frac(Z^2  E_1 , n^2 ) 
$ 

- For a hydrogen atom with $Z = 1,$ $E_1 = 1/2 frac(k e^2   , hbar)^2  mu = 13.6$ eV. 


== Quantum numbers 
- Principal quantum number $n = 1,2,3, dots$
- Azimuthal quantum number $l = 0(s),1(p),2(d),3(f) dots, (n-1)$
- Magnetic quantum number $m_l = 0, plus.minus 1, plus.minus 2, dots, plus.minus (l-1), plus.minus l $
- Spin quantum number $m_s = plus.minus 1/2$

=== Puali exclusion principle & Hund's rule
- Puali: No two electrons in an atom can have the same set of quantum numbers.

- Hund: Maximize unpaired elctrons: fill each $m_l$ in increasing order with $m_s = +1/2$, and then with $m_s = -1/2$. 

Example: on 2p shell: ${n,l,m_l,m_s} =$ {2,1,-1,1/2}, {2,1,0,1/2}, {2,1,1,1/2}, {2,1,-1,-1/2}, {2,1,0,-1/2}, {2,1,1,-1/2}. 



= Solids States
== Energy bands
Many atoms couples together to form a solid, and the energy levels of a solid can be described by the energy bands.

What matters the most, under the scope of this exam, is the following:

- Valance band: The highest energy band occupied by electrons at 0K. Electrons here are considered to be bounded.
- Conduction band: The lowest energy band unoccupied by electrons at 0K. Electrons here are considered to be free moving and contributs to conductivity.

- Band gap: $E_g = E_c - E_v$, discribes the energy difference between the valance band and the conduction band. This is the difficulty for an electron to move from valance band to conduction band, and for an atom to be conductive.

    - Insulator: $E_g > 4 $eV,
    - Semiconductor: $0<E_g < 4 $eV,
    - Metal: $E_g = 0$ eV.

== Fermi distribution
 $ 
     f(E)= frac(1 , e^((E-E_f) slash (k T) )+ 1)
 $ 
 
where $E_f$ is the Fermi energy, $k = 8.617 e hyph.minus 5 "eV/K"$ is the Boltzmann constant, and $T$ is the temprature in Kelvin.

- This distribution describes the probability of an electron to be found at energy level $E$ at temprature $T$, given the Fermi energy $E_f$.














#pagebreak()
= Appendix
1. Useful integral for probability of wavefunction $ 
    integral_(-infinity)^(infinity)e^(-a(x+b)^2)   dif x = sqrt(pi/a)   
$ 
1. Useful constants: 
   - hc = 1240 eV nm. 
   - For an electron: $m c^2 = 0.511$MeV $= 5.11 e 5 $ eV 



