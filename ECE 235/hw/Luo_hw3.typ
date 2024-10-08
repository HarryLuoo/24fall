#set math.equation(numbering: "(1)")
#set page(margin: (x: 3cm, y: 1cm))
 #import "@preview/physica:0.9.3": *
#place(top + right, rect(inset: 3pt)[ECE235 HW3 Harry Luo])

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

