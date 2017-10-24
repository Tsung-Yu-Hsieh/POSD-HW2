#ifndef ATOM_H
#define ATOM_H

#include "term.h"
#include <string>
#include <sstream>
using std::string;

class Atom : public Term{
public:
  Atom(string s):Term(s) {}
  string getName() const;
};


#endif
