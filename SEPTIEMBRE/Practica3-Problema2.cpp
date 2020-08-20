#include <iostream>
#include <fstream>
#include "agen_lis.h"
#include "agen_E-S.h"

using namespace std;

using nodo = typename Agen<char>::nodo;

typedef char T;
const T fin = '#'; // fin de lectura

int profundidad(const Agen<T>& A);
int profundidad_rec(const nodo& n, const Agen<T>& A);


int main () {
	
	Agen<char> A(64), B(64);

	cout << "\n*** Lectura de árbol A de agen.dat ***\n";
	ifstream fe("agen.txt"); // Abrir fichero de entrada.
	rellenarAgen(fe, A); // Desde fichero.
	fe.close();
	cout << "\n*** Mostrar árbol A ***\n";
	imprimirAgen(A); // En std::cout
	
	cout<<profundidad(A);
}

int profundidad(const Agen<T>& A)
{
	return profundidad_rec(A.raiz(),A);
}

int profundidad_rec(const nodo& n, const Agen<T>& A)
{
	if(n == Agen<T>::NODO_NULO) return -1;
	
	else return 1 + profundidad_rec(A.padre(n),A);
	
}
