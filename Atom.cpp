#include "atom.h"


Atom::Atom(string s){
  _symbol = s;
}
string Atom::symbol() const{
  return _symbol;
}
