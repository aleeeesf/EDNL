#include <iostream>
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\ARBOLES BINARIOS\ARBOLES BINARIOS\ABINdinamico.h"
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\ARBOLES BINARIOS\ARBOLES BINARIOS\abin_E-S.h"

using namespace std;
typedef char tElto;
const tElto fin = '#';
typedef char T;
using nodo = Abin<T>::nodo;

Abin<T> Abin_reflejado(const Abin<T>& A);
void Abin_reflejado_rec(const nodo& na, const Abin<T>& A, nodo& nb, Abin<T>& B);

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
	

	return 0;
}

Abin<T> Abin_reflejado(const Abin<T>& A)
{
	Abin<T> B;
	Abin_reflejado_rec(A.raiz(),A,B.raiz(),B);
	return B;
}

void Abin_reflejado_rec(const nodo& na, const Abin<T>& A, nodo nb, Abin<T>& B)
{
	if(na != Abin<T>::NODO_NULO)
	{
		nb = A.elemento(na);
		
		if(A.hijoDrcho(na) != Abin<T>::NODO_NULO)
			Abin_reflejado_rec(A.hijoDrcho(na), A, B.hijoDrcho(nb), B);
		
		if(A.hijoIzqdo(na) != Abin<T>::NODO_NULO)
			Abin_reflejado_rec(A.hijoIzqdo(na), A, B.hijoIzqdo(nb),B);		
	}	
	
}
