#include <iostream>
#include "ABINdinamico.h"
#include "abin_E-S.h"

using namespace std;
typedef char tElto;
const tElto fin = '#';

template<typename T>
int nodos_verdes(const Abin<T>& A);

template<typename T>
int nodos_verdes_rec(const typename Abin<T>::nodo& n, const Abin<T>& A);

template<typename T>
bool es_verde(const typename Abin<T>::nodo& n, const Abin<T>& A);

template<typename T>
int num_nietos(const typename Abin<T>::nodo& n, const Abin<T>& A);

template<typename T>
int num_hijos(const typename Abin<T>::nodo& n, const Abin<T>& A);


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
	
	cout<<"Hay "<<nodos_verdes(A)<<" nodos verde";

	return 0;
}

template<typename T>
int nodos_verdes(const Abin<T>& A)
{
	return nodos_verdes_rec(A.raiz(),A);
}

template<typename T>
int nodos_verdes_rec(const typename Abin<T>::nodo& n, const Abin<T>& A)
{
	if(n == Abin<T>::NODO_NULO) return 0;
	
	else
	{
		if(es_verde(n,A)) return 1 + nodos_verdes_rec(A.hijoIzqdo(n),A) + nodos_verdes_rec(A.hijoDrcho(n),A);
		return nodos_verdes_rec(A.hijoIzqdo(n),A) + nodos_verdes_rec(A.hijoDrcho(n),A);
	}
}

template<typename T>
bool es_verde(const typename Abin<T>::nodo& n, const Abin<T>& A)
{
	if(num_nietos(n,A) == 3) return true;
	
	else return false;
}

template<typename T>
int num_nietos(const typename Abin<T>::nodo& n, const Abin<T>& A)
{
	if(n == Abin<T>::NODO_NULO) return 0;
	
	else return num_hijos(A.hijoIzqdo(n),A) + num_hijos(A.hijoDrcho(n),A);
}

template<typename T>
int num_hijos(const typename Abin<T>::nodo& n, const Abin<T>& A)
{
	if(n == Abin<T>::NODO_NULO) return 0;
	
	else return ((A.hijoIzqdo(n) != Abin<T>::NODO_NULO) + (A.hijoDrcho(n) != Abin<T>::NODO_NULO));
}
