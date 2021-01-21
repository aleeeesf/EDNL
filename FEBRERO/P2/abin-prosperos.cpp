#include <iostream>
#include "ABINdinamico.h"
#include "abin_E-S.h"

using namespace std;
typedef char tElto;
const tElto fin = '#';

template<typename T>
double prosperidad(const Abin<T>& A);

template<typename T>
int contar_prosperos_rec(const typename Abin<T>::nodo& n, const Abin<T>& A);

template<typename T>
bool prospero(const typename Abin<T>::nodo& n, const Abin<T>& A);

template<typename T>
bool menor_descendientes(const typename Abin<T>::nodo& n, const Abin<T>& A, int riqueza);

template<typename T>
bool mayor_ascendientes(const typename Abin<T>::nodo& n, const Abin<T>& A,int riqueza);

template<typename T>
int contar_nodos(const typename Abin<T>::nodo, const Abin<T>& A);


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
	
	cout<<"Hay "<<prosperidad(A)<<" prosperidad";

	return 0;
}

template<typename T>
double prosperidad(const Abin<T>& A)
{
	return (double)(contar_prosperos_rec(A.raiz(),A)/contar_nodos(A.raiz(),A));
}

template<typename T>
int contar_nodos(const typename Abin<T>::nodo n, const Abin<T>& A)
{
	if(n == Abin<T>::NODO_NULO) return 0;
	else return 1 + contar_nodos(A.hijoIzqdo(n),A) + contar_nodos(A.hijoDrcho(n),A);
}

template<typename T>
int contar_prosperos_rec(const typename Abin<T>::nodo& n, const Abin<T>& A)
{
	if(n == Abin<T>::NODO_NULO) return 0;
	
	else
	{
		if(prospero(n,A)) return  1 + contar_prosperos_rec(A.hijoDrcho(n),A) + contar_prosperos_rec(A.hijoIzqdo(n),A);
		else return contar_prosperos_rec(A.hijoDrcho(n),A) + contar_prosperos_rec(A.hijoIzqdo(n),A);
	}	
}

template<typename T>
bool prospero(const typename Abin<T>::nodo& n, const Abin<T>& A)
{
	return (mayor_ascendientes(n,A,A.elemento(n)) && menor_descendientes(n,A,A.elemento(n)));
}

template<typename T>
bool menor_descendientes(const typename Abin<T>::nodo& n, const Abin<T>& A, int riqueza)
{
	if(A.hijoDrcho(n) == Abin<T>::NODO_NULO && A.hijoIzqdo(n) == Abin<T>::NODO_NULO) 
		return true;
		
	else 
	{
		if(A.hijoDrcho(n) != Abin<T>::NODO_NULO && A.hijoIzqdo(n) != Abin<T>::NODO_NULO)
		{
			if(riqueza > A.elemento(A.hijoIzqdo(n)) && riqueza > A.elemento(A.hijoDrcho(n)))
				return false;
			else return menor_descendientes(A.hijoIzqdo(n),A,riqueza) && menor_descendientes(A.hijoDrcho(n),A,riqueza);
		}
		
		if(A.hijoIzqdo(n) != Abin<T>::NODO_NULO && A.hijoDrcho(n) == Abin<T>::NODO_NULO)
		{
			if(riqueza > A.elemento(A.hijoIzqdo(n)))
				return false;
			else return menor_descendientes(A.hijoIzqdo(n),A,riqueza);
		}
		
		else if(A.hijoIzqdo(n) == Abin<T>::NODO_NULO && A.hijoDrcho(n) != Abin<T>::NODO_NULO)
		{
			if(riqueza > A.elemento(A.hijoDrcho(n)))
				return false;
			else return menor_descendientes(A.hijoDrcho(n),A,riqueza);
		}
	}
}

template<typename T>
bool mayor_ascendientes(const typename Abin<T>::nodo& n, const Abin<T>& A,int riqueza)
{
	if(A.padre(n) == Abin<T>::NODO_NULO) return true;
	
	else if(riqueza < A.elemento(A.padre(n))) return false;
	
	else return mayor_ascendientes(A.padre(n),A,riqueza);
}
