#set math.equation(numbering: "(1)")
#set page(margin: (x: 1cm, y: 1cm))
 #import "@preview/physica:0.9.3": *
#place(top + right, rect(inset: 3pt)[ECE 235 hw 5 Harry Luo])

= 7.1
Find the energies $E_(311), E_(222), E_(321)$and construct an energy level diagram for the 3d cubic well that includes the 3rd, 4th, 5th excited states. Which of the states on your diagram are degenerate? 
#line(length: 100%)
Using the formula $ 
    E_(n_1 n_2 n_3) = frac(hbar^2 pi^2  , 2m L^2 ) (n_1^2 + n_2^2 + n_3^2),  quad E_0 = frac(hbar^2 pi^2  , 2 m L^2 ) 
$ we have: $ 
    E_(311) = frac(hbar^2 pi^2  , 2m L^2 ) (3^2 + 1^2 + 1^2) = 11 E_0 \ 
    E_(222) = frac(hbar^2 pi^2  , 2m L^2 ) (2^2 + 2^2 + 2^2) =12 E_0 \ 
    E_(321) = frac(hbar^2 pi^2  , 2m L^2 ) (3^2 + 2^2 + 1^2) = 14 E_0
$ 
- Degeneracy:
The state (3,1,1) is degenerate with (1,3,1) and (1,1,3), all having energy $11E_0$.
The state (3,2,1) is degenerate with all permutations of these numbers: (3,1,2), (2,3,1), (2,1,3), (1,3,2), (1,2,3), all having energy $14E_0$.
The state (2,2,2) is non-degenerate.

Therefore, the 1st and 2nd states are degenerate (from textbook), the 3rd excited state corresponds to $E_{311}$ (and its degenerate states), the 4th excited state is $E_{222}$, and the 5th excited state is $E_{321}$ (and its degenerate states).
#image("assets/2024-10-29-10-57-27.png", width: 50%)





#line(length: 100% , stroke: 2pt)
= 7.2
A particle is confined to a 3d box that has sides $L_1, med  L_2 = 2L_1, med L_3 = 3L_1$. GIve the sets of quantum numbers $n_1,n_2,n_3$ that correspond to the lowest 10 energy levels of this box. 
#line(length: 100%)
From textbook, $ 
    E_(n_1 n_2 n_3) = frac(hbar^2 pi^2  , 2 m L_1^2 ) (n_1^2  + frac(n_2^2  , 4) + frac(n_3^2  , 9) ) 
$ 
So we can write down the sets of quantum numbers corresponding to the lowest 10 energy states in an increasing order:
$ 
    E_(111) &= 1.361 E_0 \
    E_(112) &= 1.694 E_0 \ 
    E_(121) &= 2.111 E_0 \ 
    E_(113) &= 2.250 E_0 \ 
    E_(122) &= 2.444 E_0 \ 
  E_(123) &= 3.000 E_0 \ 
  E_(114) &= 3.028 E_0 \ 
  E_(131) &=3.360 E_0 \ 
  E_(132)&=3.472 E_0 \ 
  E_(124) &=3.778 E_0
$ 



#line(length: 100% , stroke: 2pt)
= 7.8
Consider a particle moving in a 2d space defined by $V=0$ for $0 < x < L$ and $0< y < L$  and $V = infinity$ elsewhere.
- a. write down the wave functions fo rthe particle in this well.
- b. find the expression for the corresponding energies.
- c. what are the sets of quantum numbers for the lowest energy degenerate state?
#line(length: 100%)
- a.By separation of variables (set $k_3 = 0$ ), the wavefunction in 2d takes the form:  $ 
    psi(x,y) =A sin k_1 x sin k_2 y = A sin frac(n_1 pi x ,L ) sin frac(n_2 pi y , L)  
$ 

- b. The energy is given by $ 
    E_(n_1 n_2) = frac(hbar^2 pi^2  , 2m L^2 ) (n_1^2 + n_2^2)
$

- c.the lowest energy degenerate state corresponds to permutations of ${n_1,n_2}={1,2}$ , i.e. $n_1 = 1, n_2 = 2$ and $n_1 = 2, n_2 = 1$  


#line(length: 100% , stroke: 2pt)
= 7.9
If $n = 3$ , 
- a. what are the possible values of $l$ ? 
- b. for each value of $l$ in (a), list the possible values of $m.$ 
- c. using the fac that there tow quantum states for each combiniation of values of $l$  and $m$ because of electron spin, find the total number of electron states with $n=3. $ 
#line(length: 100%)
- a. $l = 0,1,2, dots, (n-1) = 0,1,2.$ 
- b. $m = -l , (-l+1), dots, l.$ 
 $ l=0, m = 0; \ l = 1, m = 0, plus.minus 1;\ l = 2, m = 0, plus.minus 1, plus.minus  2. $ 


- c. since there are 9 different values for $m,$ the total number of electron states with $n=3$ is $2*9= 18$ .

#line(length: 100% , stroke: 2pt)
#pagebreak()
= 7.16
What are the possible values of $n$ and $m$ if 
- a. l = 3,
- b. l = 4,
- c. l = 0?
- d. compute the minimum possible energy for each case.
#line(length: 100%)
- a. since the $l_max = n-1,$ n can take $4,5,6, dots$; $m = plus.minus 3, plus.minus 2, plus.minus 1, 0$   
- b. $n = 5,6,7, dots$; $m = plus.minus 4, plus.minus 3, plus.minus 2, plus.minus 1, 0$
- c. $n = 1, m =0$.
- d.minimum energy is given by $E_n = - frac(E_1 , n^2 )$, where $E_1 = 1/2 ( k e^2  / hbar)^2  mu = 13.6 "eV"$ . Therefore,$ 
    E_4 = -13.6/4^2  "eV" = -0.85 "eV" \
    E_5 = -13.6/5^2  "eV" = -0.54 "eV" \
    E_1 = -13.6 "eV"
$ 



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