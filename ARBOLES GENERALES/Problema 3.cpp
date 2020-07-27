#include <iostream>
#include <fstream>
#include "agen_lis.h"
#include "agen_E-S.h"

using namespace std;
typedef char tElto;
const tElto fin = '#'; // fin de lectura

int altura_rec(typename Agen<char>::nodo n, const Agen<char> A);

int main () {
	
	Agen<char> A(64), B(64);

	cout << "\n*** Lectura de árbol A de agen.dat ***\n";
	ifstream fe("agen.txt"); // Abrir fichero de entrada.
	rellenarAgen(fe, A); // Desde fichero.
	fe.close();
	cout << "\n*** Mostrar árbol A ***\n";
	imprimirAgen(A); // En std::cout
	
	cout<<"Altura max: "<<altura_rec(A.raiz(),A);
}

int altura_rec(typename Agen<char>::nodo n, const Agen<char> A)
{
	
	if(n == Agen<char>::NODO_NULO) return -1;
	
	else
	{		
		Agen<char>::nodo hijo = A.hijoIzqdo(n);
		int altura_max = -1;
		
		while(hijo != Agen<char>::NODO_NULO)	//Recorremos los hermanos
		{
			altura_max = max(altura_rec(hijo,A), altura_max);
			
			hijo = A.hermDrcho(hijo);		
		}
		
		return 1 + altura_max;
	}
	
}
