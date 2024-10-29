#set math.equation(numbering: "(1)")
#set page(margin: (x: 1cm, y: 1cm))
 #import "@preview/physica:0.9.3": *
#place(top + right, rect(inset: 3pt)[ECE 235 hw 5 Harry Luo])

= 7.1





#line(length: 100% , stroke: 2pt)
= 7.2





#line(length: 100% , stroke: 2pt)
= 7.8




#line(length: 100% , stroke: 2pt)
= 7.9




#line(length: 100% , stroke: 2pt)
= 7.16




#line(length: 100% , stroke: 2pt)
= Add-on problem 
A free particle of mass m with wave number $k_1$ is traveling to the right. at $x = 0$ , the potential jumps from zero to $V_0$ and remains at this value for positive x.

- a. If the total energy is equal to $2 V_0$, what is the wave number in the region $x>0$ ? Express your answer in terms of $k_1$ and $V_0$ .
#line(length: 100%)
Energy in each region is found as $ 
    &E_1 = K_1 + V_1 = frac(hbar^2  k_1^2  , 2m) & (x<0), \ 
&E_2 = K_2 + V_2 = frac(hbar^2  k_2^2  , 2m) + V_0 quad & (x>0),
$ 
where $k_1, k_2$ are the wavenumbers in region $x<0, x>0$ respectively.

Given Total energy $E = 2 V_0$, we have: $ 
    &2 V_0 =  frac(hbar^2  k_1^2  , 2m) &=> k_1^2 = frac(4m V_0 , hbar^2 ) \ 
    &2 V_0 = frac(hbar^2  k_2^2  , 2m) + V_0 &=> k_2^2 = frac(2m V_0 , hbar^2 ) \
$ 
 Therefore, algebra gives $ 
     k_2 = frac(k_1 , sqrt(2  ) ) . 
 $ 
 #line(length: 100% , stroke: 1pt)



- b. Calculate the reflection coefficient R and the transmission coefficient T at the potential step. Note that $1 + R = T$(typo?) .
#line(length: 100%)
From lecture,  $ 
     R = (frac(k_1-k_2 , k_1+k_2) )^2 , quad T =frac(4 k_1 k_2 , (k_1 + k_2) ^2 ), quad R+T=1
$ 
(it was hinted in problem that $1+R = T$, but is it a typo? I think it should be $R+T=1$ as per lecture slides.)

Since we found the relationship between $k_1, k_2$, we can write $ 
    R = (frac(k_1 - k_1 slash sqrt(2)  , k_1 + k_1 slash sqrt(2) )) ^2  = (frac(sqrt(2) -1 , sqrt(2) +1) )^2 approx 0.02943 \ 

    T = frac(4 k_1 dot k_1 slash sqrt(2)  , (k_1 + k_1 slash sqrt(2) )^2 ) = frac(4 slash sqrt(2)  , (1 + 1 slash sqrt(2) )^2 ) approx 0.9705 
$ 
It can be verified that $R+T=1$. 


#line(length: 100% , stroke: 1pt)
- c. If one million particles with wave number $k_1$ are incident upon the potential step, how many particles are expected to continue along the positive x direction? How does this compare with the classical prediction ( which says that all particles go through if their energy is above that of the potential step?)
#line(length: 100%)
Number of transmitted particles: $ 
    N_T = T N_0 = 0.9705 * 10^6 approx 9.705 * 10^5
$ 

Number of reflected particles $ 
    N_R = R N_0 = 0.02943 * 10^6 approx 2.943 * 10^4 .
$ 

However, classically, since each particles carries same energy $2 V_0$, all particles should go through.