#ifndef LIST_H
#define LIST_H

#include "term.h"

#include <vector>
using std::vector;

class List : public Term {
public:
  string symbol() const;
  string value() const;
  bool match(Term & term);
  string getName() const;

public:
  List (): _elements() {}
  List (vector<Term *> const & elements):_elements(elements){}
  Term * elements(int index);
  Term * head() const;
  List * tail() const;

private:
  vector<Term *> _elements;

};

#endif
