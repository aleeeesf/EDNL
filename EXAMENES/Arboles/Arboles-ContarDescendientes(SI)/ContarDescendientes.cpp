//Contar el numero de nodos de dicho arbol que tienen 4 descendientes
#include <iostream>
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\ARBOLES BINARIOS\ARBOLES BINARIOS\ABINdinamico.h"
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\ARBOLES BINARIOS\ARBOLES BINARIOS\abin_E-S.h"

using namespace std;
typedef char tElto;
const tElto fin = '#';
typedef char T;


int contar_descendientes(const Abin<T>& A);
int descendientes_rec(const typename  Abin<T>::nodo& n, const Abin<T>& A);
int num_descendientes(const typename  Abin<T>::nodo& n, const Abin<T>& A);

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
	
	cout<<num_descendientes(A.raiz(),A);

	return 0;
}

int contar_descendientes(const Abin<T>& A)
{
	return descendientes_rec(A.raiz(), A);
}

int descendientes_rec(const typename Abin<T>::nodo& n, const Abin<T>& A)
{
	if(n == Abin<T>::NODO_NULO) return 0;
	
	else
	{
		if(num_descendientes(n,A) == 4) return 1 + descendientes_rec(A.hijoIzqdo(n),A) + descendientes_rec(A.hijoDrcho(n),A);
		else return descendientes_rec(A.hijoIzqdo(n),A) + descendientes_rec(A.hijoDrcho(n),A);
	}
}


//SOLO PARA DESCENDIENTES
int num_descendientes(const typename Abin<T>::nodo& n, const Abin<T>& A)
{
	if(n == Abin<T>::NODO_NULO) return 0;
	
	else return 1 + num_descendientes(A.hijoDrcho(n),A) + num_descendientes(A.hijoIzqdo(n),A);
}

//SOLO PARA DESCENDIENTES PROPIOS
int num_descendientes(const typename Abin<T>::nodo& n, const Abin<T>& A)
{
	if(n == Abin<T>::NODO_NULO) return 0;
	
	else
	{
		if(A.hijoDrcho(n) != Abin<T>::NODO_NULO && A.hijoIzqdo(n) != Abin<T>::NODO_NULO) 
			return 2 + num_descendientes(A.hijoDrcho(n),A) + num_descendientes(A.hijoIzqdo(n),A); 
		
		else if (A.hijoDrcho(n) != Abin<T>::NODO_NULO && A.hijoIzqdo(n) == Abin<T>::NODO_NULO)
			return 1 + num_descendientes(A.hijoDrcho(n),A);  
		
		else if (A.hijoDrcho(n) == Abin<T>::NODO_NULO && A.hijoIzqdo(n) != Abin<T>::NODO_NULO) 
			return 1 + num_descendientes(A.hijoIzqdo(n),A);	
		
		else return 0;
	} 
}

