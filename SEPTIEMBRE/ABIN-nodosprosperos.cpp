#include <iostream>
#include "ABINdinamico.h"
#include "abin_E-S.h"

using namespace std;
typedef char tElto;
const tElto fin = '#';
typedef char T;
using nodo = Abin<T>::nodo;

double nodos_prosperos(const Abin<T>& A);
int contar_nodos_prosperos(const nodo& n, const Abin<T>& A);
bool es_prospero(const nodo& n, const Abin<T>& A);
bool mayor_ascendientes(const nodo& n, const Abin<T>& A);
bool menor_descendientes(const nodo& n, const Abin<T>& A);
int num_nodos(const nodo& n, const Abin<T>& A);

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
	
	cout<<nodos_prosperos(A);


	return 0;
}

double nodos_prosperos(const Abin<T>& A)
{
	double n_nodos_prosp = (double)contar_nodos_prosperos(A.raiz(),A);
	return (n_nodos_prosp/(double)num_nodos(A.raiz(),A));
}

int contar_nodos_prosperos(const nodo& n, const Abin<T>& A)
{
	if(n == Abin<T>::NODO_NULO) return 0;
	
	else
	{		
		if(es_prospero(n,A)) return 1 + contar_nodos_prosperos(A.hijoIzqdo(n),A) + contar_nodos_prosperos(A.hijoDrcho(n),A);
		else return contar_nodos_prosperos(A.hijoIzqdo(n),A) + contar_nodos_prosperos(A.hijoDrcho(n),A);
	}
}

bool es_prospero(const nodo& n, const Abin<T>& A)
{
	return(mayor_ascendientes(n,A) && menor_descendientes(n,A));
}

bool mayor_ascendientes(const nodo& n, const Abin<T>& A)
{
	if(A.padre(n) == Abin<T>::NODO_NULO) return true;
	
	else
	{
		if(A.elemento(n) > A.elemento(A.padre(n))) return false;
		else return mayor_ascendientes(A.padre(n),A);
	}
}

bool menor_descendientes(const nodo& n, const Abin<T>& A)
{
	if(n == Abin<T>::NODO_NULO) return true;
	
	else
	{
		nodo Izq = A.hijoIzqdo(n);
		nodo Der = A.hijoDrcho(n);
		
		if(A.elemento(n) > A.elemento(Izq) && A.elemento(n) > A.elemento(Der))
			return false;
			
		else if(A.elemento(n) > A.elemento(Izq) && A.elemento(n) < A.elemento(Der))
			return false;
			
		else if(A.elemento(n) < A.elemento(Izq) && A.elemento(n) > A.elemento(Der))
			return false;
			
		else return 
	}
}

int num_nodos(const nodo& n, const Abin<T>& A)
{
	if(n == Abin<T>::NODO_NULO) return 0;
	
	else return 1 + num_nodos(A.hijoDrcho(n),A) + num_nodos(A.hijoIzqdo(n),A); 
}
