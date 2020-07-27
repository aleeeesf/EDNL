#include <iostream>
#include <fstream>
#include <algorithm>
#include <locale.h>
#include "abin_E-S.h"
#include "ABINdinamico.h"

using namespace std;

typedef char tElto;
const tElto fin = '#';

template<typename T>
double prosperidad(Abin<T> A);

template<typename T>
int num_nodos(const Abin<T>& A);

template<typename T>
int contar_nodos_prosperos(Abin<T> A);

template<typename T>
int contar_prosperos_rec(typename Abin<T>::nodo n, Abin<T> A);

template<typename T>
bool prospero(typename Abin<T>::nodo n, Abin<T> A);

template<typename T>
bool menor(typename Abin<T>::nodo n, Abin<T> A, int riqueza);

template<typename T>
bool mayor(typename Abin<T>::nodo n, Abin<T> A, int riqueza);


int main() {

	setlocale(LC_ALL,"");
	Abin<char> A,B;
	/*
	rellenarAbin(B,fin);
	ofstream fs("abin2.txt");
	imprimirAbin(fs,B,fin);
	fs.close();
	*/
	ifstream fe("abin2.txt");
	rellenarAbin(fe,A);
	fe.close();

	imprimirAbin(A);
	
	Abin<char>::nodo n = A.raiz();
	n = A.hijoIzqdo(n);
	n = A.hijoIzqdo(n);
	cout<<A.elemento(n)<<endl;

	cout<<prosperidad(A)<<"%"<<endl;

	return 0;
}

template<typename T>
double prosperidad(Abin<T> A)
{
	return (100 * contar_nodos_prosperos(A) / num_nodos(A));
}

template<typename T>
int num_nodos(const Abin<T>& A)
{
	return numnodos_rec(A.raiz(),A);
}

template<typename T>
int numnodos_rec(typename Abin<T>::nodo n, const Abin<T>& A)
{
	
	if(n == Abin<T>::NODO_NULO) return 0;
	
	else return 1 + numnodos_rec(A.hijoDrcho(n),A) + numnodos_rec(A.hijoIzqdo(n),A);
}

template<typename T>
int contar_nodos_prosperos(Abin<T> A)
{
	return contar_prosperos_rec(A.raiz(),A);	
}

template<typename T>
int contar_prosperos_rec(typename Abin<T>::nodo n, Abin<T> A)
{
	
	if(n == Abin<T>::NODO_NULO) return 0;
	
	else{
		
		if(prospero(n,A)) return 1 + contar_prosperos_rec(A.hijoDrcho(n),A) + contar_prosperos_rec(A.hijoIzqdo(n),A);
		
		else return contar_prosperos_rec(A.hijoDrcho(n),A) + contar_prosperos_rec(A.hijoIzqdo(n),A);
	}
	
}

template<typename T>
bool prospero(typename Abin<T>::nodo n, Abin<T> A)
{	
	return (menor(n,A,A.elemento(n)) && mayor(n,A,A.elemento(n)));
}

template<typename T>
bool menor(typename Abin<T>::nodo n, Abin<T> A, int riqueza) {

	if(A.hijoIzqdo(n) == Abin<T>::NODO_NULO && A.hijoDrcho(n) == Abin<T>::NODO_NULO) return true;	//Caso base: LLega a un nodo hoja

	else {

		if(A.hijoIzqdo(n) != Abin<T>::NODO_NULO && A.hijoDrcho(n) != Abin<T>::NODO_NULO) {	//Ambos hijos no son nulo

			if( riqueza > A.elemento(A.hijoIzqdo(n)) || riqueza > A.elemento(A.hijoDrcho(n)) ) return false;
			
			else return menor(A.hijoIzqdo(n),A,riqueza) && menor(A.hijoDrcho(n),A,riqueza);
		}

		else {

			if( A.hijoIzqdo(n) != Abin<T>::NODO_NULO ) {					//Tiene solo un hijo izqdo
				
				if( riqueza > A.elemento(A.hijoIzqdo(n)) ) return false;
				
				else return menor(A.hijoIzqdo(n),A,riqueza);
			}


			else {															//Tiene solo un hijo derecho

				if( riqueza > A.elemento(A.hijoDrcho(n)) ) return false;
				
				else return menor(A.hijoDrcho(n),A,riqueza);
			}
		}
	}
}

template<typename T>
bool mayor(typename Abin<T>::nodo n, Abin<T> A, int riqueza) {

	if(A.padre(n) == Abin<T>::NODO_NULO) return true;

	else {

		if( riqueza < A.elemento(A.padre(n)) ) return false;
		
		else return (A.padre(n),A,riqueza);

	}
}
