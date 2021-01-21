#include <iostream>
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\ARBOLES BINARIOS\ARBOLES BINARIOS\ABINdinamico.h"
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\ARBOLES BINARIOS\ARBOLES BINARIOS\abin_E-S.h"

using namespace std;
typedef char tElto;
const tElto fin = '#';
typedef char T;
using nodo = Abin<T>::nodo;

bool Abin_similar(const Abin<T>& A, const Abin<T>& B);
bool Abin_similares_rec(const nodo& na, const Abin<T>& A, const nodo& nb, const Abin<T>& B);

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
	
	B = A;
	cout<<Abin_similar(A,B);

	return 0;
}

bool Abin_similar(const Abin<T>& A, const Abin<T>& B)
{
	return Abin_similares_rec(A.raiz(),A,B.raiz(),B);
}

bool Abin_similares_rec(const nodo& na, const Abin<T>& A, const nodo& nb, const Abin<T>& B)
{
	if(na == Abin<T>::NODO_NULO && nb == Abin<T>::NODO_NULO) return true;
	
	else
	{
		if(na == Abin<T>::NODO_NULO || nb == Abin<T>::NODO_NULO) return false;
			
		else return Abin_similares_rec(A.hijoIzqdo(na),A,B.hijoIzqdo(nb),B) && Abin_similares_rec(A.hijoDrcho(na),A,B.hijoDrcho(nb),B);
	}	
}
