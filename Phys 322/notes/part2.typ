#import "@preview/physica:0.9.3": *
#set math.equation(numbering:"[1")

#let scr(it) = text(
  features: ("ss01",),
  box($cal(it)$),
)

= Magnetostatics 
== Magnetic Forces on Charge
For a moving charge of velocity $ bold(v)$ and charge $Q$ in a magnetic field $ bold(B)$ , the magnetic force is found by the Lorentz force law:
$ 
    F_"mag" = Q (bold(v) times bold(B))
$ 
Notice that magnetic force does no work. We can see this by considering an infinetesmal displacement on Q, $dif  bold(l) =  bold(v) dif t$ , then the work done by B field is $ 
    dif W = F_"mag" dot dif  bold(l) = Q underbrace((bold(v) times bold(B)) dot bold(v),"perpendicular") dif t = 0
$ 
== Magnetic Force on Current
=== Line current
Magnetic force on a segment of current carrying wire with $I = lambda  bold(v)$ is: $ 
     bold(F) = integral_(l) I (dif  bold(l) times  bold(B))   
$ 

=== Surface and volume current density
- Surface current density: $ 
     bold(K) = (dif  bold(I)) / (dif l_perp) = sigma bold(v);
$ with $dif l_perp$ an infinitesimal width running parallel to the current flow. 
    Force on a surface current: $ 
     bold(F) = integral_(A) (bold(K) times bold(B)) dif a
$
- Volume current density: $ 
     bold(J) = (dif  bold(I)) / (dif a_perp) = rho bold(v);
$ with infinitesimal cross section $dif a_perp$ running parallel to the flow.
    Force on a volume current: $ 
     bold(F) = integral_(V) (bold(J) times bold(B)) dif tau
$

== Continuity Equation

$ 
    I = integral_(s)  bold(J) dif a_perp = integral_(s)  bold(J) dot dif a.     
$ 
So, noticing a conservation of charge
$ 
integral.cont   bold(J) dif a = integral_(v) div  bold(J) dif tau = -  (dif )/(dif t) integral_(v) rho dif tau \ 
=>
    div bold(J) = - (dif rho) / (dif t)
$

== Magnetostatics: Steady currents
Magnetostatics is the regime where : $ 
    (diff rho)/(diff t) = 0 => div  bold(J) = 0 .
$ 
And the Biot-Savart law is used to find the magnetic field due to steady linear current: $ 
#rect(inset: 8pt)[
$ display( bold(B)(r) = frac(mu_0 I , 4 pi) integral_(l) frac(dif  bold(l)' times scr(hat(r)) , scr(r)^2) ,)$
]

$
and for a volume current: 
$ 
      bold(B)(r) = frac(mu_0 , 4pi) integral_(V) frac( bold(J)(arrow(r)') times scr(hat(r)),scr(r^2 ) ))  dif  tau'
$ 



== Div of B, curl of B, and Ampere's law
B-S law tells us of the div of B: $ 
    div  bold(B) = 0
$
suggesting the inexistence of magnetic monopoles.

We can find curl of B from B-S law too:$ 
    curl  bold(B) = mu_0  bold(J)  
$ and by Stokes' theorem, we can write: $ 
#rect(inset: 8pt)[
$ display(    integral.cont  bold(B) dot dif  bold(l) = mu_0 I_"enc")$
]

$
where the line integal is over an amperean loop.

*note*: Ampere's law is only useful when $ bold(B)$ is constant over the loop, and in whcih case we can pull it out of the integral.  
Such symmetry is often found in amperean loops for infinite straight wire, infinite plane, infinite solunoid, and toroid.


== Magnetic Vector Potential
By helmholtz theorem, $div  bold(B) = 0$ invites the notion of a vector potential $ bold(A)$ such that $ 
    bold(B) = curl  bold(A)
$. We choose $div A = 0$, then ampere's law gives: $ 
    curl  bold(B) = curl(curl  bold(A)) = grad(div  bold(A)) - laplacian  bold(A) = mu_0 bold(J) \ =>
#rect(inset: 8pt)[
$ display(     laplacian  bold(A) = - mu_0 bold(J))$
]
$ 
which is poisson's equation for $ bold(A)$. The solution for some local charge distribution (volume, linear, surface) can be read off as:$ 
     &bold(A)(arrow(r))= frac(mu_0 , 4pi) integral_(V) frac( bold(J)(arrow(r)) , scr(r))  dif tau, $     
     $ 
     &bold(A) = frac(mu_0 I , 4 pi ) integral_(l) 1/scr(r) dif  bold(l), $  
     $ 
      &bold(A) = frac(mu_0 , 4 pi) integral_(S)  bold(K)/scr(r) dif a' 
$ 
Relations between $ bold(A),  bold(J),  bold(B)$ that describes magnetostatis is summarized as follows:

#align(center)[#image("ABJ.jpg", width: 50%,)]

== Boundary conditions and Discontinuities
For a surface charge, and a perpendicular amperean loop:$ 
    integral.cont  bold(B) dot dif  bold(l) = mu_0  bold(K) l =>  bold(B)_+ -  bold(B)_- = mu_0 K, 
$ so that $ 
     bold(B)_+ -  bold(B)_- = mu_0 (  bold(K) times hat(n)), \ 
#rect(inset: 8pt)[
$ display(     (diff  bold(A)_+)/(diff n) - (diff  bold(A)_-)/(diff n) = -mu_0  bold(K))$
]

$ 
and notedly, $ 
     bold(A)_+ =  bold(A)_-. 
$ 


== Multipole Expansion of vector potential
$ 
     bold(A)(arrow(r))= frac(mu_0 I  , 4 pi ) integral.cont 1/scr(r) dif  bold(l)' = frac(mu_0 I  , 4 pi ) sum_(n=0)^(infinity) frac(1 , r^(n+1)) integral.cont (r')^n P_n(cos alpha) dif  bold(l)'
$ 
Given that $ integral.cont  dif  bold(l)' = 0,  bold(A)_"mono" = 0,$ and with some vector algebra,
$ 
#rect(inset: 8pt)[
$ display(     bold(A)_"dipole" = frac(mu_0 I  , 4 pi ) frac( bold(m) times hat(r) , r^2 ),)$
]
\ 
#rect(inset: 8pt)[
$ display(     bold(m) equiv I bold(a) )$
]

$ 




- putting dipole at origin, 
  $ 
       bold(m) times hat(r) = m sin theta,
  $ 
  So $ 
         bold(A)_"dipole" = frac(mu_0 m sin theta , 4 pi r^2) hat(phi) , \ 
          bold(B)_"dip" = curl  bold(A) = frac(mu_0 m , 4 pi r^3) ( 2 cos theta hat(r) + sin theta hat(theta)) 
  $ 

#line(length: 100% , stroke: 2pt)

= Magnetic Fields in Matter
== Torque and Force on a magnetic dipole

For a magnetic dipole square, $m = I a b$ .
Torque in a magnetic field is: $ 
    bold(N) = bold(m) times bold(B)
$

For an infinitesimal loop, with dipole moment $ bold(m)$ , in a field $ bold(B)$ , the force is $ 
     bold(F) = grad ( bold(m) dot bold(B))
$ 

Such torque is the main cause behind paramagnetism. 

== Diamagnetism: revolving electron in $ bold(B)$ 
For a revolving electronaround neucleus, $ 
    cases(display(I = -frac(e v , 2 pi R)) ,  display(bold(m) = -1/2 e v R hat(z)))
$ 
In the presence of a magnetic field, and by newton's second law, $ 
    1/(4 pi epsilon_0) e^2 /R^2  + e v B = m frac(v^2  , R^2 )\ 
    => Delta v = frac(e R B , 2 m_e) , quad Delta  bold(m) = - (e^2  R^2)/(4 m_e) bold(B)
$ 

== Magnetization
We denote magneitzation $ 
#rect(inset: 8pt)[
$ display(bold(M) =  bold(m)/V ),$
]

$ magnetic moment per unit volume. 

== Field due to Magnetized Object

Recall $ bold(A)$ due to magnetic dipole with dipole moment $ bold(m)$: $ 
     bold(A) = frac(mu_0 , 4 pi )  frac(  bold(m) times hat(scr(r)), scr(r)^2 ).
$ For a magnetized object, each volume element carries $ bold(m) =  bold(M) dif tau$ , so $ bold(A)$ due to a magnetized object with magnetization $ bold(M)$is : 
$ 
 bold(A) = frac(mu_0 , 4 pi) integral_(V) frac( bold(M)(arrow(r)) times scr(hat(r)),scr(r)^2  )  dif tau . 
$ 
If we define a volume current density $ 
     bold(J_b) = curl  bold(M), 
$ and a surface current density $ 
     bold(K_b) =  bold(M) times hat(n),
$ then we can write $ 
     bold(A)(arrow(r)) = 
     underbrace(frac(mu_0 , 4 pi) integral_(V) frac( bold(J_b)(r') ,scr(r) )  dif tau,"potential of Vol. current")+ 
     underbrace(frac(mu_0 , 4 pi ) integral.cont_S frac( bold(K_b)(r') , scr(r) )  dif a', "potential of Surf. current")  
$ 

== Auxiliary Field $ bold(H)$
In a material, we can take the total current to be $ 
     bold(J) =  bold(J)_b +  bold(J)_f 
$ 
and by Amepere's law, $ 
    curl ( 1/mu_0  bold(B) -  bold(M)) =  bold(J)_f. 
$ 
We are thus motivated to define an Auxiliary Field $H$: $ 
     bold(H) equiv 1/mu_0  bold(B) -  bold(M). 
$ 
From which we can write the Amepere's Law in Magnetized material as $ 
    curl  bold(H) =  bold(J)_f quad <=> quad integral.cont  bold(H) dot dif bold(l) = I_"f_enc" 
$ 

== Boundary Conditions for H and B
Divergence of H gives: $ 
    div  bold(H) = - div  bold(M). 
$
And from fundemental theorem of divergence, $ 
    H^perp_"above" - H^perp_"below" = - abs((M^perp_"above" - M^perp_"below")).  
$ 
While curl of H gives $ 
     bold(H)^parallel_"above" -  bold(H)^parallel_"below" =  K_f times hat(n). 
$

Bondary conditions for B are:
$ 
    B^perp_"above" - B^perp_"below" = 0,
    \  bold(B)^parallel_"above" -  bold(B)^parallel_"below" = mu_0(  bold(K)_f times hat(n)). 
$ 


== Linear and Nonlinear MEdia 
- For linear media, 

























