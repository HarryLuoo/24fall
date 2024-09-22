#set math.equation(numbering: "(1)")
#set page(margin: (x: 1cm, y: 1cm))
#import "@preview/physica:0.9.3": *
= ECE235 HW1, Harry Luo
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
  (P')/(P) = (T')^4 / T_0^4 = 2 quad => T' = root(4, 2T_0^4) = root(4, 2*107.33^4) =
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
    E = h f = 4.136×10^(-15) * 100* 10^6 "eV" = 
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
As suggested on Piazza, we assume constant energy density of sunlight from $0$nm  to $254.6$nm to be the intensity of $254.6 slash 2 = 127.3$ nm: $ 
  u(127.3"nm") (254.6 "nm") = (8 pi h c (127.3 e hyph.minus 9 "m" )^(-5))/(e^(h c slash ( k* 5800"K" * 127.3 e hyph.minus 9"m" ) )-1) * (254.6 e hyph.minus 9"m") approx 1.23e hyph.minus 4 quad J slash m^3
$ 
Integration of the energy density is thus approximately $ 
    R' = 1/c (1.23 e hyph.minus 4)  quad W slash m^3
$ 
Total energy is given by $ 
    R = sigma T^(4) = sigma * 5800"K"^(4) approx 6.42 e 7 quad W slash m^2 
$ 
Thus the maximal fractional power is $ 
     (R')/(R) approx 1.4 e hyph.minus 4 
$ 
#line(length: 100%)


= 3.26

- (a)
Using the photoelectric equation,we can find threshold freq and wavelength, $f_t, lambda_t$ as follows, $ 
    Phi = h f_t = frac(h c , lambda_t) quad => f_t = frac(Phi , h) , quad lambda_t = frac(h c  , Phi) 
$ 

- (b,c,d)
  The stopping potential can be found as follows, $ 
      e V_0 = frac(h c , lambda) - Phi quad => V_0 = frac(h c , lambda e ) - frac(Phi , e)   .
  $ 
  
For $lambda = 300$nm: $
  V_0 = frac(h c , e* 300 e hyph.minus 9 "m" ) -frac(1.9 "eV" ,e ) =           
$  

#line(length: 100%)
= 3.28


#line(length: 100%)
= 3.31


#line(length: 100%)
= 3.32


#line(length: 100%)
= 3.42

