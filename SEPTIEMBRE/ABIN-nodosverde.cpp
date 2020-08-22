#include <iostream>
#include "ABINdinamico.h"
#include "abin_E-S.h"

using namespace std;
typedef char tElto;
const tElto fin = '#';
typedef char T;
using nodo = Abin<T>::nodo;

int nodos_verde(const Abin<T>& A);
int contar_nodos_verde(const nodo& n, const Abin<T>& A);
bool es_nodo_verde(const nodo& n, const Abin<T>& A);
int num_nietos(const nodo& n, const Abin<T>& A);
int num_hijos(const nodo& n, const Abin<T>& A);

int main()
{		
	setlocale(LC_ALL,"");
	Abin<char> A,B;
	/*
	rellenarAbin(B,fin);
	ofstream fs("problema3.txt");
	imprimirAbin(fs,B,fin);
	fs.close();	
	*/
	ifstream fe("abin.txt");
	rellenarAbin(fe,A);
	fe.close();
	imprimirAbin(A);
	
	cout<<nodos_verde(A);


	return 0;
}

int nodos_verde(const Abin<T>& A)
{
	return contar_nodos_verde(A.raiz(),A);
}

int contar_nodos_verde(const nodo& n, const Abin<T>& A)
{
	if(n == Abin<T>::NODO_NULO) return 0;
	
	else
	{
		if(es_nodo_verde(n,A)) return 1 + contar_nodos_verde(A.hijoDrcho(n),A) + contar_nodos_verde(A.hijoIzqdo(n),A);
		
		else return contar_nodos_verde(A.hijoDrcho(n),A) + contar_nodos_verde(A.hijoIzqdo(n),A);
		
	}
}

bool es_nodo_verde(const nodo& n, const Abin<T>& A)
{
	return (num_nietos(n,A) == 3) ? 1 : 0;
}


int num_nietos(const nodo& n, const Abin<T>& A)
{
	if(n == Abin<T>::NODO_NULO) return 0;
	
	else 
	{
		nodo Izqdo = A.hijoIzqdo(n);
		nodo Drcho = A.hijoDrcho(n);
		return num_hijos(Izqdo,A) + num_hijos(Drcho, A);
	}
}

int num_hijos(const nodo& n, const Abin<T>& A)
{
	if(n == Abin<T>::NODO_NULO) return 0;
	
	else return ((A.hijoDrcho(n) != Abin<T>::NODO_NULO) + (A.hijoIzqdo(n) != Abin<T>::NODO_NULO));
}


