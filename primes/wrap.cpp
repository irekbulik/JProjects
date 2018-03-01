//g++ -dynamiclib -o libutils.dylib wrap.cpp -L/usr/local/Cellar/pari/2.9.3/lib -lpari-gmp
#include "/usr/local/Cellar/pari/2.9.3/include/pari/pari.h"
extern "C" {
bool is_prime(char *c){
    return isprime(strtoi(c));
  }
}
