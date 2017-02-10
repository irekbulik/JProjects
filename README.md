# JProjects

Small J projects to play on the phone 

  * implementation of unrestricted Hartree Fock (UHF) for 1D Hubbard model
     - can be run on iPone; it links against iOS math library
     - solve (number of sites;U;number of electrons) 
	- 0 } solve (200;4;200)   : energy _0.469105, 23 cycles 
	- 1 } and 2 } return alpha and beta denisties
   > 1 } solve (6;4;6)
  0.878884   0.224627 _0.0384531 _0.0507453 _0.0384531   0.224627
  0.224627   0.121116   0.224627  0.0384531 _0.0507453  0.0384531
_0.0384531   0.224627   0.878884   0.224627 _0.0384531 _0.0507453
_0.0507453  0.0384531   0.224627   0.121116   0.224627  0.0384531
_0.0384531 _0.0507453 _0.0384531   0.224627   0.878884   0.224627
  0.224627  0.0384531 _0.0507453  0.0384531   0.224627   0.121116
   > 2 } solve (6;4;6)
  0.121116   0.224627  0.0384531 _0.0507453  0.0384531   0.224627
  0.224627   0.878884   0.224627 _0.0384531 _0.0507453 _0.0384531
 0.0384531   0.224627   0.121116   0.224627  0.0384531 _0.0507453
_0.0507453 _0.0384531   0.224627   0.878884   0.224627 _0.0384531
 0.0384531 _0.0507453  0.0384531   0.224627   0.121116   0.224627
  0.224627 _0.0384531 _0.0507453 _0.0384531   0.224627   0.878884
     - super fast :) 
	-  6!:2 'solve (400;4;400)'   9.58s 
     - the guess is pure antifero, so while you can run dopped system, it probably wont converge
     - on my iPhone, I added band structure analysis, but it is not here 
     
  * ulam spiral, inspired by youtube video

