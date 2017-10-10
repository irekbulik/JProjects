NB. x u\ y :: applies u to each infix of y with size x. negative makes nonoverlaping:
NB. Example:
   3 [\":<.@o.10x^30 NB. prints all 3 digit numbers that are consecutive in pi. overlaping. 
  _3 [\":<.@o.10x^30 NB. chop pi into 3 digit numbers. 
NB. Find the 15 ditig primes that appear in pi
  }.~.(* 1&p:)".15[\":<.@o.10x^400
NB. n pe m finds n digits primes to be found in m digits of pi. leading zeros are ignored.
pe =: 4 : ' (  0&< # ])~.(* 1&p:) (x:@". * ( 0&<@".@{.) )"1 (x [\":<.@o.10x^y)'
NB. There is a tiny issue with X: changing integers to rationals, so you need to append 'x' to string and convert to extended. 
NB. but since x is a formal argument, you can fish it from a. 
 pe =: 4 : ' (  0&< # ])~.(* 1&p:) ((".@,&(120}a.)) * ( 0&<@".@{.) )"1 (x [\":<.@o.10x^y)'
NB. The first 150 digit prime in pi expansion is 
NB. 227938183011949129833673362440656643086021394946395224737190702179860943702770539217176293176752384674818467669405132000568127145263560827785771342757


NB. Generate unbiased permutation of array. Can be used on strings and boxes as well
deal_array =:  ((#?#){])
