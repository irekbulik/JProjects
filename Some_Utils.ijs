NB. Count the divisors: use the copy verb 
count_div =: 3 : '#(#~ (0 = >:@i.@# | #)) >: i.y'
NB. We can also do it using the GCD:
count_div_2 =: 3 : '#~.(#+.])>:i.y'

NB. -------------------------------------------- 
NB. -------------------------------------------- 
NB. -------------------------------------------- 
NB. The code below is from Peelle book. It is of course way slower than 
NB. using p:, but well, it has a concept worth learning: 
      First =: {.
      CountTo =: >:@i.
      Multiples =: First * CountTo@#
      Sieve =: -. Multiples
      Era =: Sieve , First 
      While =: First <: %:@ Max
      Max =: >./
      list =: }. CountTo 25
      Era ^: While ^:_ list
NB. Looping over function: f^:(condition)^:_ which applies function untill condition is 1. 
NB. for example,  +:^:(1223&>)^:_ (1) computed the first power of 2 that is larger than 1223. 

NB. Fibonacci
  fib =: 3 : '{.( |.@({. , +/))^:(<:y) (1x 0x)'
  fib =: 3 : ' {. ( +/ , }: )^:(<:y) (1x 0x)'
  to_dig =: ".@,"0@":

NB. Print precision wjd":       of 0jd":
  0j100": 1r3
  0.3333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333
      




