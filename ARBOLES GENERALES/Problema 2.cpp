#include <iostream>
#include <fstream>
#include "agen_lis.h"
#include "agen_E-S.h"

using namespace std;
using nodo = Agen<char>::nodo;

typedef char tElto;
const tElto fin = '#'; // fin de lectura

int profundidad_rec(nodo n, Agen<char> A);

int main () {
	
	Agen<char> A(64), B(64);

	cout << "\n*** Lectura de árbol A de agen.dat ***\n";
	ifstream fe("agen.txt"); // Abrir fichero de entrada.
	rellenarAgen(fe, A); // Desde fichero.
	fe.close();
	cout << "\n*** Mostrar árbol A ***\n";
	imprimirAgen(A); // En std::cout
	
	cout<<profundidad_rec(A.hijoIzqdo(A.raiz()),A);
}

int profundidad_rec(nodo n, Agen<char> A)
{
	if(n == Agen<char>::NODO_NULO) return -1;
	
	else return 1 + profundidad_rec(A.padre(n),A);	
}
