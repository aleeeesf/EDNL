#include <iostream>
#include <fstream>
#include "agen_lis.h"
#include "agen_E-S.h"

using namespace std;

using nodo = typename Agen<char>::nodo;

typedef char tElto;
const tElto fin = '#'; // fin de lectura

template<typename T>
int podar(Agen<T> A);

template<typename T>
int grado_rec(nodo n,Agen<T> A);

template<typename T>
int grado(Agen<T> A);


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
