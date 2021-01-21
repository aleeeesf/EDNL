#include <iostream>
#include "ABINdinamico.h"
#include "abin_E-S.h"

using namespace std;
typedef char tElto;
const tElto fin = '#';


template <typename T>
int profundidad(const typename Abin<T>::nodo& n, const Abin<T>& A);


int main()
{		
	setlocale(LC_ALL,"");
	Abin<char> A,B;
	/*
	rellenarAbin(B,fin);
	ofstream fs("abin.txt");
	imprimirAbin(fs,B,fin);
	fs.close();	
	*/
	ifstream fe("abin.txt");
	rellenarAbin(fe,A);
	fe.close();
	
	imprimirAbin(A);
	
	cout<<"Prof: "<<profundidad(A.raiz(),A)<<endl;
	return 0;
}

template <typename T>
int profundidad(const typename Abin<T>::nodo& n, const Abin<T>& A)
{
	if(n == Abin<T>::NODO_NULO) return -1;
	
	else return 1 + profundidad(A.padre(n),A);
}

