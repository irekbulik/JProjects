load 'math/lapack math/lapack/heev'
load 'viewmat'
diag =: heev_jlapack_ 
NB. tt n forms 1D pbc hopping 
tt =: 3 : '-((y-1)&=+(1&=))"1|(-/)~>:i.y'
NB. U mf gamma forms fock matrix for given spin case 
mf =: 4 : '(tt #y)+x*((=/~(i.#y))*((<0 1)|:y))'
NB. mg n forms antiferro guess and returns boxed alpha and beta  
NB. we choose the first site to be alpha in our guess. It is in the first box.
ge =: 4 : '(2|(x+i.y))*(=/~i.y)'
mg =: 3 : '(1 ge y);(0 ge y)' 
NB. U ff gamma returns boxed fock alpha and beta 
ff =: 4 : '(x mf >1}y);(x mf >0}y)'
NB. makes density matrix given fock and electron count 
NB. NE fg F 
md =: 4 : '((+/ .*)|:)~(|: x {. |: > 1 } diag y)'
NB. NOTE THAT SZ = 0 IS ASSUMED
fd =: 4 : '((-:x) md >0}y);((-:x) md >1}y)'
NB. evaluate energy given fock and density for given spin
ea  =: 4 : '-:+/(<0 1)|:((x+tt#x) (+/ .*) y)'
en  =: 4 : '((>0}x) ea (>0}y)) + ((>1}x) ea (>1}y))'
		NB. SOLVE THE PROBLEM.
NB. implement one cycle (NE ; U) cycle DENSITY 

NB. implement the SCF solver solve (NS;U;NE)
NB. return the energy per site and densities
solve =: 3 : 0 
norm  =. 4 : '+/|(,>x)-(,>y)'
ns =. >0}y
U  =. >1}y
ne =. >2}y
it =. 1
mi =. 250
deo=. ne fd U ff mg ns
den=. ne fd U ff deo
while. ( (it<mi) * ( (den norm deo) > 1e_8) )
   do. deo =. den 
       den =. ne fd U ff den 
       it  =. >: it 
end.
assert. it < mi
e =. ((U ff den) en den)%ns
( (e; it) ;den)
)

viewsol =: 3 : 0 
den =. solve y
 jv ((>1}den) - (>2}den))
)


