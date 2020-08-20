#include <iostream>
#include <fstream>
#include "agen_lis.h"
#include "agen_E-S.h"

using namespace std;

using nodo = typename Agen<char>::nodo;

typedef char T;
const T fin = '#'; // fin de lectura

int altura(const nodo& n, const Agen<T>& A);
int altura_minima(const nodo& n, const Agen<T>& A);
int desequilibrio(const Agen<T>& A);


int main () {
	
	Agen<char> A(64), B(64);

	cout << "\n*** Lectura de árbol A de agen.dat ***\n";
	ifstream fe("agen.txt"); // Abrir fichero de entrada.
	rellenarAgen(fe, A); // Desde fichero.
	fe.close();
	cout << "\n*** Mostrar árbol A ***\n";
	imprimirAgen(A); // En std::cout
	
	cout<<altura_minima(A.raiz(),A);
}

///Se conoce como desequilibiro de un arbol general como la resta
//de la rama mas larga y la rama más corta
int desequilibrio(const Agen<T>& A)
{
	return (altura(A.raiz(),A) - altura_minima(A.raiz(),A));
}

int altura(const nodo& n, const Agen<T>& A)
{
	if(n == Agen<T>::NODO_NULO) return -1;
	
	else{
		
		int maximo = 0;
		nodo hijo = A.hijoIzqdo(n);
		
		if(hijo==Agen<int>::NODO_NULO)
			return(0);
		
		else
		{
			while(hijo != Agen<T>::NODO_NULO)
			{
				maximo = max(altura(hijo,A), maximo);
				hijo = A.hermDrcho(hijo);
			}
		
			return 1 + maximo;
		}

	}	
}

int altura_minima(const nodo& n, const Agen<T>& A)
{
	if(n == Agen<T>::NODO_NULO) return -1;
	
	else{
		
		int minimo = INT_MAX;
		nodo hijo = A.hijoIzqdo(n);
		
		if(hijo==Agen<int>::NODO_NULO)
			return(0);
		else
		{
			while(hijo != Agen<T>::NODO_NULO)
			{
				minimo = min(altura(hijo,A), minimo);
				hijo = A.hermDrcho(hijo);
			}
		}		
		return 1 + minimo;
	}	
}
/*

int altura_minima(Agen<char>::nodo n, Agen<char> A)
{
	int altura_min_hijos;
	Agen<int>::nodo hijo;

	if(n==Agen<int>::NODO_NULO)
		return(-1);
	else
		hijo = A.hijoIzqdo(n);
		if(hijo==Agen<int>::NODO_NULO)
			return(0);
		else
		{
			altura_min_hijos = INT16_MAX;
			while(hijo!=Agen<int>::NODO_NULO)
			{
				altura_min_hijos = std::min(altura_min_hijos, altura_minima(hijo,A));
				hijo = A.hermDrcho(hijo);
			}
			return(1 + altura_min_hijos);
		}
}

*/
