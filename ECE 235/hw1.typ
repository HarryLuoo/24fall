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
$ display("Power increases by a factor of 16.")$
]
 
#line(length: 100%)
= 3.19

- (a)
Let initial tempreture be $T_0$ and the new tempreture be $T'$. By Wien's Law, we have $ lambda T_0 = 2.898e^(-3) med m dot K quad => T_0 = (2.898e^(-3)) / (27e^(-6)) K = 107.33K.
 $Let's use Stefan-Boltzmann Law to find the new tempreture. $ 
     (P')/(P) = (T')^4 / T_0^4 = 2 quad => T' = root(4,2T_0^4) = root(4,2*107.33^4) = 
#rect(inset: 8pt)[
$ display(     127.63K)$
]

 $ 

 - (b)
  By Wien's law, $ 
      lambda = (2.898e^(-3)) / T' =( 2.898e^(-3) )/ 127.63 m =  
#rect(inset: 8pt)[
$ display(      22.7 mu m )$
]

  $ 
#line(length: 100%)

= 3.24
- (a)
Energy quantization shows: $ 
    E = h f = (h c) / lambda.
$ 
Given $lambda in (380,750)$nm, $ (h c)/(750"nm")<E<(h c)/(380"nm") quad => E in (1.653,3.542)"eV"
 $ 

- (b)
  $
  E = h f = 4.136×10^-15 * 100* 10^6 "eV" = 4.136×10^-7 "eV"
  $ 
#line(length: 100%)

= 3.25


= 3.26


= 3.28


= 3.31


= 3.32


= 3.42

