#include <iostream>
#include "ABINdinamico.h"
#include "abin_E-S.h"

using namespace std;
typedef char tElto;
const tElto fin = '#';


template <typename T>
bool pseudocompleto(const Abin<T>& A);

template <typename T>
bool pseudocompleto_rec(const typename Abin<T>::nodo& n, const Abin<T>& A);

template <typename T>
int altura(const Abin<T>& A);

template <typename T>
int altura_rec(const typename Abin<T>::nodo& n, const Abin<T>& A);

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
	
	cout<<"pseudocompleto: "<<pseudocompleto(A)<<endl;
	return 0;
}

template <typename T>
bool pseudocompleto(const Abin<T>& A)
{
	return pseudocompleto_rec(A.raiz(),A);
}

template <typename T>
bool pseudocompleto_rec(const typename Abin<T>::nodo& n, const Abin<T>& A)
{
	if(n == Abin<T>::NODO_NULO) return true;
	
	else if(profundidad(n,A) == altura(A) - 1)
	{
		return ((A.hijoDrcho(n) == Abin<T>::NODO_NULO && A.hijoIzqdo(n) == Abin<T>::NODO_NULO) || 
					(A.hijoDrcho(n) != Abin<T>::NODO_NULO && A.hijoIzqdo(n) != Abin<T>::NODO_NULO));
	}
	
	else return pseudocompleto_rec(A.hijoDrcho(n),A) && pseudocompleto_rec(A.hijoIzqdo(n),A);
}

template<typename T>
int altura(const Abin<T>& A)
{
	return altura_rec(A.raiz(), A);
}

template<typename T>
int altura_rec(const typename Abin<T>::nodo& n, const Abin<T>& A)
{
	if(n == Abin<T>::NODO_NULO) return -1;
	
	else return 1 + max(altura_rec(A.hijoDrcho(n),A), altura_rec(A.hijoIzqdo(n),A));
}

template <typename T>
int profundidad(const typename Abin<T>::nodo& n, const Abin<T>& A)
{
	if(n == Abin<T>::NODO_NULO) return -1;
	
	else return 1 + profundidad(A.padre(n),A);
}


