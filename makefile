all: hw8

shell: mainScanner.o Number.o Atom.o Variable.o List.o Struct.o Node.o
hw8: mainScanner.o Number.o Atom.o Variable.o List.o Struct.o Node.o

ifeq (${OS}, Windows_NT)
	g++ -o hw8 mainScanner.o Atom.o Number.o Variable.o List.o Struct.o Node.o -lgtest
else
	g++ -o hw8 mainScanner.o Atom.o Number.o Variable.o List.o Struct.o Node.o -lgtest -lpthread
endif

mainScanner.o: mainScanner.cpp utScanner.h scanner.h parser.h utIterator.h iterator.h utAtom.h utStruct.h utList.h exception.h expression.h
				g++ -std=gnu++0x -c mainScanner.cpp

Number.o: number.h Number.cpp
		g++ -std=gnu++0x -c Number.cpp

Atom.o: atom.h Atom.cpp
	g++ -std=gnu++0x -c Atom.cpp

Variable.o: variable.h Variable.cpp
	g++ -std=gnu++0x -c Variable.cpp

Struct.o: Struct.cpp struct.h
	g++ -std=gnu++0x -c Struct.cpp

List.o: list.h List.cpp
	g++ -std=gnu++0x -c List.cpp

Node.o: node.h Node.cpp
		g++ -std=gnu++0x -c Node.cpp

clean:
ifeq (${OS}, Windows_NT)
	del *.o *.exe
else
	rm -f *.o hw8 shell
endif
