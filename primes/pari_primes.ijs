require 'dll'
NB. INIT PARI JUST ONCE

ini_p =. '/usr/local/Cellar/pari/2.9.3/lib/libpari-gmp.dylib pari_init n  ' cd ''
ini_p

NB. PARI FACTORIZATION BY MY WRAPPER
fac_p =:  >@(0&{@:('libutils.dylib is_prime i  *c'&cd@<@":))

m_prime =. 1294063654237511187554750201560780429214510015005200300103459729051895935678639157755876077558760678639155189593534597290200300101001500542921451560780475020118755237513654406291x

NB. echo 'Time Pari  ' , (": (6!:2) 'fac_p m_prime') , 's'
NB. echo 'Time J ' , (": (6!:2) '1 p: m_prime') , 's'

f =: 3 : '(0&,+,&0)^:y (1x)'
pari_mp =: 3 : '":@(fac_p)@".@,&(120}a.)@(;@:(<@":"0)@f)"0 y'
NB. We can leave it in string form
pari_mp =: 3 : '":@(fac_p)@(;@:(<@":"0)@f)"0 y'
J_mp =: 3 : '":@(1&p:)@".@,&(120}a.)@(;@:(<@":"0)@f)"0 y'
