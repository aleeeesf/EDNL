#include <iostream>
#include <fstream>
#include "agen_lis.h"
#include "agen_E-S.h"

using namespace std;

using nodo = typename Agen<char>::nodo;

typedef char T;
const T fin = '#'; // fin de lectura

int grado(const Agen<T>& A);
int numhijos(const nodo& n, const Agen<T>& A);
int grado_rec(const nodo& n, const Agen<T>& A);

int main () {
	
	Agen<char> A(64), B(64);

	cout << "\n*** Lectura de árbol A de agen.dat ***\n";
	ifstream fe("agen.txt"); // Abrir fichero de entrada.
	rellenarAgen(fe, A); // Desde fichero.
	fe.close();
	cout << "\n*** Mostrar árbol A ***\n";
	imprimirAgen(A); // En std::cout
	
	cout<<grado(A);
}


int grado(const Agen<T>& A)
{
	return grado_rec(A.raiz(),A);
}

int grado_rec(const nodo& n, const Agen<T>& A)
{
	if(n == Agen<T>::NODO_NULO) return 0;
	
	else
	{
		int maximo = 0;
		nodo hijo = A.hijoIzqdo(n);
		
		while(hijo != Agen<T>::NODO_NULO)
		{
			maximo = max(grado_rec(hijo,A),maximo);
			hijo = A.hermDrcho(hijo);		
		}
		
		return max(numhijos(n,A), maximo);
	}
}

int numhijos(const nodo& n, const Agen<T>& A)
{
	if(n == Agen<T>::NODO_NULO) return 0;
	
	else
	{
		int cont = 0;
		nodo hijo = A.hijoIzqdo(n);
		
		while(hijo != Agen<T>::NODO_NULO)
		{
			hijo = A.hermDrcho(hijo);
			cont++;
		}
		
		return cont;
	}
}
