#include <iostream>
#include "ABINdinamico.h"
#include "abin_E-S.h"

using namespace std;
typedef char tElto;
const tElto fin = '#';


template <typename T>
void Abin_Reflejado(const Abin<T>& A, Abin<T>& B);
template <typename T>
void Abin_Reflejado_rec(const typename Abin<T>::nodo& na, const Abin<T>& A,typename Abin<T>::nodo nb, Abin<T>& B);

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
	

	Abin_Reflejado(A,B);
	
	imprimirAbin(B);
	return 0;
}

template<typename T>
void Abin_Reflejado(const Abin<T>& A, Abin<T>& B){	
	
	B.insertarRaiz(A.elemento(A.raiz()));
	Abin_Reflejado_rec(A.raiz(), A, B.raiz(),B);
}

template<typename T>
void Abin_Reflejado_rec(const typename Abin<T>::nodo& na, const Abin<T>& A,typename Abin<T>::nodo nb, Abin<T>& B)
{
	if(A.hijoDrcho(na) != Abin<T>::NODO_NULO)
	{
		B.insertarHijoDrcho(nb,A.elemento(A.hijoDrcho(na)));
		Abin_Reflejado_rec(A.hijoDrcho(na),A,B.hijoDrcho(nb),B);
	}
	
	if(A.hijoIzqdo(na) != Abin<T>::NODO_NULO)
	{
		B.insertarHijoIzqdo(nb,A.elemento(A.hijoIzqdo(na)));
		Abin_Reflejado_rec(A.hijoIzqdo(na),A,B.hijoIzqdo(nb),B);
	}	
}
