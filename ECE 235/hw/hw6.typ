#set math.equation(numbering: "(1)")
#set page(margin: (x: 1cm, y: 1cm))
 #import "@preview/physica:0.9.3": *
#place(top + right, rect(inset: 3pt)[ECE 235 HW6| Harry Luo])

= P1 
Consider Lithium atonm, which has an atomic number $Z=3$ . The three electrons in a lithium aton occupy orbitals in increasing energy levels. Describe the arrangement of there three electrons in term of their quantum number $n, l, m_l, m_s$, based on the Pauli exclusion principle. 
#line(length: 100%)
- first electron: ${n,l,m_l, m_s} = {1,0,0,1/2}$;
- second electron: ${n,l,m_l, m_s} = {1,0,0,-1/2}$; 
- third electron: ${n,l,m_l, m_s} = {2,0,0,1/2}$;


#line(length: 100% , stroke: 2pt)

= P2 (10-27)
- a. The energy gap between the valence band and the conduction band in silicon is $1.14 $eV.  at room temperature. What s the wavelength of a photon that will excite an electron from the top of the valence band to the bottom of the conduction band?

- b. Do the same calculation for Germanium, for which the energy gap is 0.72 eV.
  
- c. Do the same calculation for Diamond, for which the energy gap is 7.0 eV.
#line(length: 100%)
Using $E = h c / lambda => lambda = h c/ E:$ 
- a. $ lambda = (1240 e V "nm") / (1.14 e V) = 1.09 e hyph.minus 6 m; $
- b. $ lambda = (1240 e V "nm") / (0.72 e V) = 1.72 e hyph.minus 6 m; $ 
- c. $ lambda = (1240 e V "nm") / (7.0 e V) = 1.77 e hyph.minus 7 m $  



#line(length: 100% , stroke: 2pt)

= 3. ( 10.28)
- a. The energy band gap in Germainium is 0.72 eV. What wavelength range of visible light will be transmitted by a germanium crystal? (think about it carefully!)
- b. Now consider a crystal of of an insulator whose energy band gap is 3.6 eV. What wavelength range of visible light will this crystal transmit? 
- c. Justify your answers to part a,b.
#line(length: 100%)
- a. As visible light spectrum is from 380 nm to 720 nm, which is above $172 $nm as previously calculated, a germanius crystal will tabsorbs all visible light and transmit none.
- b. $ 
    lambda = (1240 e V "nm") / (3.6 e V) = 3.44 e hyph.minus 7 m = 344 "nm"
$ this is below 380 nm, so the crystal will transmit all visible light and absorb none.


#line(length: 100% , stroke: 2pt)

= 4. 
For energies ranging from $E_f- 0.2 $eV to $E_f + 0.2$eV, *plot the Fermi distribution function for each of the following temperatures: $4 K, 77 K, 300 K$*. Hand plot all 3 curves on one graph. (These 3 temperatures are important benchmarks in experiments, as 300 K is room temperature, 77 K is the temperature to which you can cool with liquid nitrogen and 4 K is the temperature to which you can cool with liquid helium) )  
#line(length: 100%)
Using the formula for fermi distribution:
$ 
     f_"FD" (E) = frac(1 , E^((E - E_f)slash(k T)) + 1) 
$ 
and ploting the graph for $E_f in [-0.2, +0.2]$eV, and for $T in {4, 77, 300}K$, we have the following graph.

#image("hw6_p4.png")


