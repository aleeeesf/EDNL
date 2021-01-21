#include <iostream>
#include <fstream>
#include "agen_lis.h"
#include "agen_E-S.h"

using namespace std;

using nodo = typename Agen<char>::nodo;

typedef char tElto;
const tElto fin = '#'; // fin de lectura


template<typename T>
int desequilibrio(const Agen<T>& A);

template<typename T>
int altura(const nodo& n, const Agen<T>& A);

template<typename T>
int altura_min(const nodo& n, const Agen<T>& A);


int main () {
	
	Agen<char> A(64), B(64);

	cout << "\n*** Lectura de árbol A de agen.dat ***\n";
	ifstream fe("agen.txt"); // Abrir fichero de entrada.
	rellenarAgen(fe, A); // Desde fichero.
	fe.close();
	cout << "\n*** Mostrar árbol A ***\n";
	imprimirAgen(A); // En std::cout
	
	cout<<desequilibrio(A);
}

template<typename T>
int desequilibrio(const Agen<T>& A)
{
	return (altura(A.raiz(),A) - altura_min(A.raiz(),A));
}

template<typename T>
int altura(const nodo& n, const Agen<T>& A)
{
	if(n == Agen<T>::NODO_NULO) return -1;
	
	else
	{
		int maximo = 0;
		nodo hijo = A.hijoIzqdo(n);
		
		if(hijo == Agen<T>::NODO_NULO)
			return 0;
		
		else
		{
			while(hijo != Agen<T>::NODO_NULO)
			{
				maximo = max(maximo, altura(hijo,A));
				hijo = A.hermDrcho(hijo);
			}		
			return 1 + maximo;
		}
	}		 
}

template<typename T>
int altura_min(const nodo& n, const Agen<T>& A)
{
	if(n == Agen<T>::NODO_NULO) return -1;
	
	else
	{
		int minimo = INT32_MAX;
		nodo hijo = A.hijoIzqdo(n);
		
		if(hijo == Agen<T>::NODO_NULO)
			return 0;
		
		else
		{
			while(hijo != Agen<T>::NODO_NULO)
			{
				minimo = min(minimo, altura(hijo,A));
				hijo = A.hermDrcho(hijo);
			}		
			return 1 + minimo;
		}
	}		 
}
