load 'math/lapack math/lapack/heev'
heev  =: heev_jlapack_
tt    =: 4 : ' (-x)|.(1&|.(1 0 1 ,0*(i.y-3)))' " 0 0
t     =: (i. tt [)
f     =: 4 : '(-t #y) + ((i.=/i.)#y)+/@* (x*((i.@#)(({ "0 _ )^:2 " 0 _ )])y)' 
dot   =: +/ . *
p     =: 4 : '(dot |:) ((< (i.@#y) ; (i.x) ) { >1} heev y)'
pg    =: ( < (2|>:(i.10))*./(2|>:(i.10)) ) , < ( ((i.10)=/i.10) - (2|>:(i.10))*./(2|>:(i.10)) )
pn    =: pg
solve =: 4 : 0 
pn    =: (< (x p ( y f ( > 1 { pg ) ))) , (< (x p ( y f ( > 0 { pg ) )))
norm  =: +/|((,>pn)-(,>pg))
pg    =: pn
if.     norm > 1e_5 do. x solve y end. 
ea =: +/,((i.@#)(({ "0 _ )^:2 " 0 _ )])  ( (0 f ( > 1 { pg )) +  (y f ( > 1 { pg )) ) dot ( > 0 { pn )
eb =: +/,((i.@#)(({ "0 _ )^:2 " 0 _ )])  ( (0 f ( > 0 { pg )) +  (y f ( > 0 { pg )) ) dot ( > 1 { pn )
]-:(ea+eb)
)

 
  


NB. THE ACTUAL WAY OF MAKING DIAGONAL MATRIX IS (1 2 3)*(=@i.@#(1 2 3))
NB. WHERE WE MULTIPLY THE VECTOR BY DIAGONAL MATRIX. IT IS A HOOK
NB. WITH (* =@i.@#) so generate the identity matrix =@i.@# and multiply by iteslf .
