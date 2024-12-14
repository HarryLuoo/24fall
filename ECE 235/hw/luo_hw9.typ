#set math.equation(numbering: "(1)")
#set page(margin: (x: 1cm, y: 1cm))
 #import "@preview/physica:0.9.3": *
#place(top + right, rect(inset: 3pt)[ECE 235 Homework 9, Harry Luo])


= P1 
A silicon P-N junction diode is fabricated with the following parameters: $N_A = 10^16 "cm"^(-3), N_D = 10^15"cm"^(-3)$. The intrinsic carrier concentration is $n_i = 1.5* 10^10 "cm"^(-3)$ at 300K, and the electron and hole mobility are $mu_n= 1350 "cm"^2slash "V" , mu_p = 480 "cm"^2 slash (V dot s)$ respectively. Junction cross area is $0.01 "cm"^2$; the electron lifetime in the p-region is $tau_n = 1mu s$, the hole lifetime in the n-region is $tau_p = 2 mu s$.
+ Calculate the diffusion coefficient for electron and hole (based on Einstein's relation) 
+ calculate the building voltage across the depletion region 
+ calculate the current at biases including: $-0.1 V, 0.3 V, 0.7V$   

#line(length: 100%)
+ 
  For electrons, $ 
    D_n= mu_n  (k T) / q = 1350 "cm"^2 slash V dot s * 25.85"mV" = 
#rect(inset: 8pt)[
$ display(    34.898 "cm"^2 slash s.)$
]

  $ For holes,$ 
      D_p = mu_p  (k T) / q = 480 "cm"^2 slash V dot s * 25.85"mV" = 
#rect(inset: 8pt)[
$ display(      12.408 "cm"^2 slash s. )$
]

  $ 
   
+ $ 
    V_"bi" = display(frac(k T , q)) ln(display(frac(N_A N_D , n_i^2 )) ) =25.85"mV" ln(display(frac(10^16 10^15 , (1.5*10^10)^2 )) ) 
#rect(inset: 8pt)[
$ display(    = 0.644 V.)$
]

$ 


+ recall $ 
    I =& I_s (exp(V_a/ V_T) - 1), \ "where" 
    I_s =& A q n_i^2 (display(frac(D_n , L_n N_A)+ D_p/(L_p N_D)) ), \
    "and" L_n =& sqrt(D_n tau_n), quad L_p = sqrt(D_p tau_p).
$ 
So, $ 
    L_n &= sqrt(34.898 "cm"^2 slash s * 1 mu s) = 5.907 * 10^(-3)   "cm", \
     L_p &= sqrt(12.408 "cm"^2 slash s * 2 mu s) = 4.981 * 10^(-3)  "cm", $  
     $ 
     => I_s = 0.01 "cm"^2 * 1.6*10^(-19) C &* (1.5*10^10 "cm"^(-3))^2 \  &(frac(34.898 "cm"^2  slash s, 5.907 * 10^(-3)"cm" * 10^16"cm"^(-3)) + frac(12.408"cm"^2 , 4.981 * 10^(-3) "cm"* 10^15"cm"^(-3)) ) \ = 1.11 * 10^(-12) A.
$ 
From which we can find the current given the bias voltage.
$ 
    I(-0.1V) &= 1.11 * 10^(-12)(exp(-0.1/0.02585) - 1)= 
#rect(inset: 8pt)[
$ display(    -1.09 * 10^(-12)A,)$
]
 \ 
    I(0.3V) &= 1.11 * 10^(-12)(exp(0.3/0.02585) - 1)= 
#rect(inset: 8pt)[
$ display(    1.22 * 10^(-7)A, )$
]
\ 
    I(0.7V) &= 1.11 * 10^(-12)(exp(0.7/0.02585) - 1) = 
#rect(inset: 8pt)[
$ display(    0.645 A)$
]
.
$ 
