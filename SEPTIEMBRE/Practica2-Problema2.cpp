#include <iostream>
#include "ABINdinamico.h"
#include "abin_E-S.h"

using namespace std;
typedef char tElto;
const tElto fin = '#';
typedef char T;
using nodo = Abin<T>::nodo;

void Abin_reflejado(const Abin<T>& A, Abin<T>& B);
void Abin_reflejado_rec(const nodo& na, nodo nb, const Abin<T>& A, Abin<T>& B);

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
	
	Abin_reflejado(A,B);
	imprimirAbin(B);
	system("pause");
	return 0;
}

void Abin_reflejado(const Abin<T>& A, Abin<T>& B)
{
	if(A.raiz() != Abin<T>::NODO_NULO)
	{
		B.insertarRaiz(A.elemento(A.raiz()));
		Abin_reflejado_rec(A.raiz(),B.raiz(),A,B);
	}	
}

void Abin_reflejado_rec(const nodo& na, nodo nb, const Abin<T>& A, Abin<T>& B)
{
	if(A.hijoDrcho(na) != Abin<T>::NODO_NULO)
	{
		B.insertarHijoIzqdo(nb, A.elemento(A.hijoDrcho(na)));
		Abin_reflejado_rec(A.hijoDrcho(na),B.hijoIzqdo(nb),A,B);
	}
	
	if(A.hijoIzqdo(na) != Abin<T>::NODO_NULO)
	{
		B.insertarHijoDrcho(nb, A.elemento(A.hijoIzqdo(na)));
		Abin_reflejado_rec(A.hijoIzqdo(na),B.hijoDrcho(nb),A,B);		
	}

}
	

