NB. Count the divisors: use the copy verb 
count_div =: 3 : '#(#~ (0 = >:@i.@# | #)) >: i.y'
NB. We can also do it using the GCD:
count_div_2 =: 3 : '#~.(#+.])>:i.y'
