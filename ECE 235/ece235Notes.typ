 #import "@preview/physica:0.9.3": *
#show heading: text.with(weight: 1000, font: "Libre Baskerville")
#set text(11pt)
#set page(margin: (x: 4cm, y: 2cm),numbering: "1/1", columns: 1, flipped: false)
#set math.equation(numbering:"[1")
#show math.equation: set text(11pt)
#show heading: underline
#set math.cases(gap: 0.2em)
= Highlights from ECE 235: Solid-state Physics
Harry Luo\
#line(length: 100%, stroke: (thickness: 2pt))
#set heading(numbering: "1.1")
#outline(indent: auto,)
#pagebreak()


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
$ 
    - frac(hbar^2 ,2m ) (diff^2 )/(diff x^2)Psi(x,t) + V(x,t) Psi(x,t) = i hbar (diff ) /( diff t)Psi(x,t)   
$ 
