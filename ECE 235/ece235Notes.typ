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
    E_p = h f = Phi + E_k 
$ 
where $Phi$ is the work function of the material, $E_k$ is the kinetic energy of the emitted electron at the surface of the material. $h = 6.26 e hyph.minus 34$ is the Planck constant.

- Motion for Photoelectric effect:
  $ 
      E_(k,m) + ( hyph.minus e) V_m = E_(k,d) + ( hyph.minus e) V_d 
  $ 
 
  
- stopping potential
   $ V_"stop" = (E_(k,m))/(e) = (h f - Phi)/(e), $  the minimum potential required to stop the emitted electron.
- Threshold frequency $f_"tr" = (Phi)/(h)$ 