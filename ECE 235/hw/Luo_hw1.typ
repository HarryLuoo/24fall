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

