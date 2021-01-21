#include <iostream>
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\ARBOLES BINARIOS\ARBOLES BINARIOS\ABINdinamico.h"
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\ARBOLES BINARIOS\ARBOLES BINARIOS\abin_E-S.h"

using namespace std;
typedef char tElto;
const tElto fin = '#';
typedef char T;
using nodo = Abin<T>::nodo;

bool pseudocompleto(const Abin<T>& A);
bool pseudocompleto_rec(const nodo& n, const Abin<T>& A);
int profundidad(const nodo& n, const Abin<T>& A);
int altura(const nodo& n, const Abin<T>& A);

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
	
	cout<<"¿Es pseudocompleto?: "<<pseudocompleto(A)<<endl;
	return 0;
}

bool pseudocompleto(const Abin<T>& A)
{
	return pseudocompleto_rec(A.raiz(),A);
}

bool pseudocompleto_rec(const nodo& n, const Abin<T>& A)
{
	if(n == Abin<T>::NODO_NULO) return false;
	
	else 
	{
		if(profundidad(n,A) == altura(A.raiz(),A)-1)
		{
			return ((A.hijoDrcho(n) == Abin<T>::NODO_NULO && A.hijoIzqdo(n) == Abin<T>::NODO_NULO) ||
					(A.hijoDrcho(n) != Abin<T>::NODO_NULO && A.hijoIzqdo(n) != Abin<T>::NODO_NULO));
		}
		
		else return pseudocompleto_rec(A.hijoIzqdo(n),A) && pseudocompleto_rec(A.hijoDrcho(n),A);		
	}
}

int profundidad(const nodo& n, const Abin<T>& A)
{
	if(n == Abin<T>::NODO_NULO) return -1;
	
	else return 1 + profundidad(A.padre(n), A);
}

int altura(const nodo& n, const Abin<T>& A)
{
	if(n == Abin<T>::NODO_NULO) return -1;
	
	else return 1 + max(altura(A.hijoDrcho(n),A),altura(A.hijoIzqdo(n),A));
}
