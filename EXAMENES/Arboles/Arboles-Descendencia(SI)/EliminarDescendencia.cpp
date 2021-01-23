#include <iostream>
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\ARBOLES BINARIOS\ARBOLES BINARIOS\ABINdinamico.h"
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\ARBOLES BINARIOS\ARBOLES BINARIOS\abin_E-S.h"

using namespace std;
typedef char tElto;
const tElto fin = '#';
typedef char T;

void descendencia(Abin<T>& A);
void descendencia_rec(typename Abin<T>::nodo n, Abin<T>& A);
bool se_poda(const typename Abin<T>::nodo& n,const Abin<T>& A);
void podar_descendencia(typename Abin<T>::nodo n, Abin<T>& A);

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
	descendencia(A);
	cout<<"----------"<<endl;
	imprimirAbin(A);
	return 0;
}

void descendencia(Abin<T>& A)
{
	descendencia_rec(A.raiz(), A);
}

void descendencia_rec(typename Abin<T>::nodo n, Abin<T>& A)
{
	if(n != Abin<T>::NODO_NULO)
	{
		if(se_poda(n,A)) podar_descendencia(n,A);
		
		else
		{		
			descendencia_rec(A.hijoIzqdo(n),A);			
			descendencia_rec(A.hijoDrcho(n),A);
		}
	}
}

bool se_poda(const typename Abin<T>::nodo& n, const Abin<T>& A)
{
	if(    (A.hijoIzqdo(n) == Abin<T>::NODO_NULO && A.hijoDrcho(n) != Abin<T>::NODO_NULO)
		|| (A.hijoIzqdo(n) != Abin<T>::NODO_NULO && A.hijoDrcho(n) == Abin<T>::NODO_NULO)
	  )
		return true;
	
	else return false;
}

void podar_descendencia(typename Abin<T>::nodo n, Abin<T>& A)
{
	if(A.hijoDrcho(n) != Abin<T>::NODO_NULO)
	{
		podar_descendencia(A.hijoDrcho(n),A);
		A.eliminarHijoDrcho(n);		
	}
	
	if(A.hijoIzqdo(n) != Abin<T>::NODO_NULO)
	{
		podar_descendencia(A.hijoIzqdo(n),A);
		A.eliminarHijoIzqdo(n);
	}	
}


