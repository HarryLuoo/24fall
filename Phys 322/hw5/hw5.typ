#set math.equation(numbering: "(1)")
#set page(margin: (x: 3cm, y: 2cm))
 #import "@preview/physica:0.9.3": *
#place(top + right, rect(inset: 3pt)[HW 5 Phys322 | Harry Luo])

= 1
#image("assets/2024-10-24-16-53-45.png")
#line(length: 100%)



1. We learn from example 4.2 that the electric field inside sphere due to uniform polarization is $  bold(E') = - 1/(3 epsilon_0)  bold(P). $
So the electric field at center due to spherical cavity is $ 
     bold(E) =  bold(E_0) +  1/(3 epsilon_0)  bold(P),\
     =>  bold(D) = epsilon_0(bold(E_0) +  1/(3 epsilon_0)  bold(P)) =  bold(D_0) -  2/3bold(P)
$ 
1. As hinted, $ abs( bold(P) )A slash (4 pi epsilon_0 (L/2)^2 ) << abs( bold(E_0))$  implies that at the center of cavity, $ 
     bold(E) approx  bold(E_0) \ =>  bold(D) =  epsilon_0 bold(E_0) =  bold(D_0) -  bold(P)
$ 



3. We can treat the cavity as a parallel plate capacitor. Its surface charge density is $ 
    sigma = q/A = P. 
$ 
So the electric field at center of cavity due to wafer is $  bold(E)' =  - bold(P)/epsilon_0$ , and thus $ 
     bold(E) = E_0 +  bold(P)/epsilon_0, \
      bold(D) = epsilon_0 bold(E) =  D_0 
$ 





#pagebreak()
= 2
#image("assets/2024-10-24-16-54-03.png")
#line(length: 100%)
  
For a dialectic, the absence of free charge gives $rho_f = 0.$ So Gauss law becomes: $ 
    div arrow(D) &= rho_f = 0 \ 
     1/s partial_s (s D_s) &=  0 \ 
     D_s &= C/s,
$ for some constant $C.$ 
Noticing $arrow(D)(s) = epsilon_0 epsilon_r arrow(E) = epsilon_0 alpha s^(-2) arrow(E), $ we have $ 
     arrow(E)&= frac(C s , epsilon alpha) hat(s) ,\ 
     V & = - integral_(a)^(b) arrow(E) dot dif arrow(l) = -frac(C , epsilon_0 alpha) integral_(a)^(b) s dif s = - frac(C , 2 epsilon_0 alpha) (b^2 - a^2) .\

$ 
We find $C$ to be $ 
    C = frac(-2 epsilon alpha V , b^2 -a^2 ) . 
$ 
And thus $ 
    arrow(E)(s) = frac(-2 epsilon alpha V s , epsilon alpha (b^2  - a^2 )) = 
#rect(inset: 8pt)[
$ display(    frac(2 V s , a^2  - b^2 ) hat(s) ).$
]

$ 





#pagebreak()
= 3
#image("assets/2024-10-24-16-54-18.png")

$ 
    V^> ( r,z) = 1/(4 pi epsilon')(frac(q , (r^2  + ( z-d)^2 )^(1 slash 2) )+frac(q' , (r^2  + (z+d)^2 )^(1 slash 2)))\
    => V^> (r,0) = frac(1 ,4 pi epsilon' ) frac(q+q' ,(r^2 +d^2 )^(1 slash 2) ), quad (diff V^>)/(diff z) (r,0) = frac(1 , 4 pi epsilon') frac(d(q-q') , (r^2 +d^2 )^(3 slash 2))   .
$ 
and, $ 
    V^<(r,z) = 1/4 pi epsilon frac(q'' , (r^2 +(z-d)^2 )^(1 slash 2)) \ 
    => V^< (r,0) = 1/(4 pi epsilon) frac(q'' ,(r^2  + d^2 )^(1 slash 2) ), quad (diff V^<)/(diff z)( r,0) =     1/(4 pi epsilon) frac(q'' ,(r^2 +d^2 )^(3 slash 2) ) ,
$ 
where $epsilon' = epsilon_0(1+chi^'_e), epsilon = epsilon_0(1+chi_e).$ 

Boundary condition gives$ 
    1/epsilon' (q + q') = q'' / epsilon , quad (q-q') = q'' \ 
    => q'' = (2 epsilon)/ (epsilon + epsilon')q , quad q' = frac(epsilon' - epsilon , epsilon' + epsilon) q
$ 
Hence, 
$ 
    V^> (r,z) = frac(q , 4 pi epsilon') (frac(1 , (r^2  + (z-d)^2 )^(1/2)) + (frac(epsilon' - epsilon , epsilon' + epsilon)) frac(1 , (r^2 +(z+d)^2 )^(1/2)) ) , quad (z>= 0);\ 
    V^< (r,z) = frac(2 q , 4 pi (epsilon' + epsilon)) frac(1 , (r^2  + (z+d)^2 )^(1/2)), quad (z <= 0.) 
$ 











#pagebreak()
= 4
#image("assets/2024-10-24-16-54-31.png")
#line(length: 100%)
- Inside the cavity, $(r<a)$:
 Separation of Variables with dipole gives 
  $ 
  V_I (r,theta) = 1/(4 pi epsilon_0) (frac(p cos theta , r^2 ) + sum_(l=0)^(infinity) A_(1,l) r^l P_l (cos theta) )
  $ <eq.v1>
  where $p$ is the dipole moment.
  Dipole expansion gives $ 
      V_I (r,theta) = frac(p , 4 pi epsilon_0 ) (1/r^2 +r/a^3 (1/epsilon_r (A_2 + B_2)-1)) cos theta 
  $ 
  

$ 
    (diff V_I)/(diff r) = frac( p cos theta , 4 pi epsilon 0 a^3) (1/epsilon_r (A_2 + B_2)-3) 
$ 



- Within shell, ($a < r < b$ ), *assuming a dialectic constant $epsilon_r$ *, we can jot down the following by using results from Separation of Variables:
  $ 
     V_("II")(r,theta) = 1/(4 pi epsilon) sum_(l=0)^(infinity) (A_(2,l) r^(l) + frac(B_(2,l) , r^(l+1)) ) P_l (cos theta)) 
  $ 
  Dipole expansion, taking $l=1$  gives: $ 
     V_"II" (r,theta) = frac(p , 4 pi epsilon) (A_(2) r/a^3 + frac(B_(2) , r^2)) cos theta .
  $ <eq.v2>
$ 
    (diff V_"II" (a,theta))/(diff r) = frac(p cos theta , 4 pi epsilon a^(3) ) (A_2 -2 B_2) ; quad (diff V_"II" (b,theta))/(diff r)  = frac(p , 4 pi epsilon b^(3)) (A_2 ( b/a)^3 - 2 B_2) 
$ 


- Outside the shell, $(r>b)$:$ 
    V_"III" (r,theta) = frac(1 , 4 pi epsilon_0) sum_(l=0)^(infinity) B_(3,l)/r^(l+1) P_l (cos theta). 
$ 
  Taking $l = 1$ gives: $ 
    V_"III" (r,theta) = frac(p , 4 pi epsilon r^2 ) (A_(2) (b/a)^3 + B_2) .
$ <eq.v3>
$ 
    (diff V_"III" ( b,theta))/(diff r) = frac(p , 4 pi epsilon b^3) (-2)(A_2 ( b/a)^3 + B_2)  
$ 





Boundary Conditions: 

$ 
    epsilon (diff V_"II" (a, theta))/(diff r) = epsilon_0 (diff V_"I" (a, theta))/(diff r) ,\
    epsilon_0 (diff V_"III" (b,theta))/(diff r)  = epsilon (diff V_"II")/(diff r) (b, theta)
$ 

Painful algebra gives: $ 
    A_2 = (b/a)^(-3) frac(B_2 (2 epsilon_r - 2) , 2 + epsilon_r),\
    B_2 = frac(3 epsilon_r , (1 + 2 epsilon_r)- 2(a/b)^3 display( frac((1-epsilon_r)^2  ,2 + epsilon_r ) )   ) equiv f(epsilon_r, a, b)
$ 

We thus conclude: $ 
    V_I (r,theta) = frac(p cos theta , 4 pi epsilon r^2 ) (1+ ( r/a)^3 (f(epsilon_r, a, b) /epsilon_r)(1+(a/b)^3 frac(2 (epsilon_r-1) , 2 + epsilon_r) )-1), \ 
    V_"II" (r,theta) = frac(p cos theta ,4 pi epsilon r^2  ) f(epsilon_r,a,b) (1+ frac(2(epsilon_r - 1)  , 2 + epsilon_r) (r/b)^3)  , \ 
   V_"III" (r,theta) = frac(p cos theta , 4 pi epsilon r^2 )med frac(3 f(epsilon_r,a,b) ,(epsilon_r+2) )   
$ 



#pagebreak()
= 5
#image("assets/2024-10-24-16-54-46.png")
#line(length: 100%)

Identical set up, with dielectric material of permittivity $ epsilon,$ can be found in Example 4.5 of textbook. Citing the result, we have: $ 
     bold(D) = cases(frac(Q, 4 pi r^2 ) hat(r) quad  &(r>a) , 0 quad &(r<a) ) ,  quad bold(E) = cases(0 quad & (r<a) ,frac(Q, 4 pi epsilon r^2 ) hat(r) quad & (r in a,b), frac(Q, 4 pi epsilon_0 r^2 )hat(r) quad & (r > b) ).
$ 
Using $ W = 1/2 integral_(V)  bold(D) dot  bold(E) dif tau,$ with $ epsilon = epsilon_0(1+ chi_e)$, we have: $ 
    W &= 1/2 integral  bold(D) dot  bold(E)  dif tau \ 
    & = frac(Q^2,8pi ) (1/epsilon integral_(a)^(b) 1/r^2  1/r^2  r^2  dif r quad + 1/epsilon_0 integral_(b)^(infinity) 1/r^2  dif r ) \ 
    & = frac(Q^2 ,8 pi epsilon_0 ) ( (1/a - 1/b)(1/(1+chi_e))+ 1/b) \ 
    & = (1/a + chi_e/b) frac(Q^2 ,8 pi epsilon_0 (1 + chi_e) )  
$ 
  
