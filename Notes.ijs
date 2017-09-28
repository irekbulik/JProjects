NB. x u\ y :: applies u to each infix of y with size x. negative makes nonoverlaping:
NB. Example:
   3 [\":<.@o.10x^30 NB. prints all 3 digit numbers that are consecutive in pi. overlaping. 
  _3 [\":<.@o.10x^30 NB. chop pi into 3 digit numbers. 
NB. Find the 15 ditig primes that appear in pi
  }.~.(* 1&p:)".15[\":<.@o.10x^400
NB. n pe m finds n digits primes to be found in m digits of pi. leading zeros are ignored.

pe =: 4 : ' (  0&< # ])~.(* 1&p:) (x:@". * ( 0&<@".@{.) )"1 (x [\":<.@o.10x^y)'