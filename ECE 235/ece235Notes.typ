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

#line(length: 100%)
= Photoelectric effect
- Energy of a photon $ 
    E_p = h f = frac(h c , lambda) =Phi + E_k 
$ 
where $Phi$ is the work function of the material, $E_k$ is the kinetic energy of the emitted electron at the surface of the material. $h = 6.26 e hyph.minus 34$ is the Planck constant.

- Motion for Photoelectric effect:
  $ 
      E_(k,m) + ( hyph.minus e) V_m = E_(k,d) + ( hyph.minus e) V_d 
  $ 
 
  
- stopping potential
   $ e V_"stop" = frac(h c  , lambda)- Phi  $  the minimum potential required to stop the emitted electron. 
- Threshold frequency& wavelength: set $E_k = 0$: $ 
    f_t = frac(Phi , h) , quad lambda_t = frac(h c , Phi) 
$ 
   

= Blackbody radiation
- Stefan-Boltzmann law:  $ 
    R = sigma  T^4.
$Where $R$ is the power radiated per unit area, or energy density. T is temprature in  Kelvin, $sigma = 5.67 e hyph.minus 8 ("W"dot"m"^( hyph.minus 2) dot"K"^( hyph.minus 4))$ is the Stefan-Boltzmann constant.

- Wien's displacement law: $ 
    lambda_max T = b
$ where $b = 2.89 e hyph.minus 3 ("m" dot"K")$ is the Wien's constant, and $lambda_max$ is the wavelength at which the blackbody radiation is maximum, and T is the temprature in Kelvin of the blackbody.

- Rayleigh-Jeans law: $ 
    R(lambda) = 1/4 c u(lambda) ,\
    u(lambda) = 8 pi k T lambda^(-4)
$ WHere $R$ is radiation power per unit area, or energy density, $u$ is the energy density of radiation, $c$ is the speed of light, and $k = 8.617 e hyph.minus 5 "eV/K" = 1.38 e hyph.minus 23 J dot K^-1 $ is the Boltzmann constatn This law is valid for long wavelength, but it diverges at short wavelength.
- Planck's law: $ 
   u(lambda) = frac(8 pi h c lambda^(-5) , e^(h c slash lambda k T) - 1  ) 
$ where $k = 1.38 e hyph.minus 23 ("J" dot"K"^( hyph.minus 1))$ is the Boltzmann constant, $h$ is the Planck constant, $T$ is the temprature in Kelvin of the blackbody.


= Schrodinger equation
- _example_: an electronmoving in a thin metal wire is a reasonalble approximation of a particle in a one dimensional infinite well. the potential inside the wire is constant on average but risese sharply at each end. suppose the electron is in a wire 1.0cm long, 
    - (a) compute the ground state energy for the electron
    - (b)what would be the probability of finding it in a very narrow region $Delta x = 0.01 L$ wide centered at $x = 5L/8$?
  Ground staet energy:$ 
      E_1 = frac(h^2 , 8 m L ^2 )  = 
  $ 
   probability: $ 
       P =  
   $ 
   