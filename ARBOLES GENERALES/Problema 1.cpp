#include <iostream>
#include <fstream>
#include "agen_lis.h"
#include "agen_E-S.h"

using namespace std;

using nodo = typename Agen<char>::nodo;

typedef char tElto;
const tElto fin = '#'; // fin de lectura

int numhijos(nodo n, Agen<char> A);
int fun_grado(nodo n, Agen<char> A);
int grado(Agen<char> A);


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

int grado(Agen<char> A)
{
	return fun_grado(A.raiz(),A);
}

int numhijos(nodo n, Agen<char> A)
{
	
	if(n == Agen<char>::NODO_NULO) return 0;
	
	else
	{
		int cont = 0;
		nodo hijo = A.hijoIzqdo(n);
		
		while(hijo != Agen<char>::NODO_NULO)
		{
			cont++;
			hijo = A.hermDrcho(hijo);			
		}
		
		return cont;
		
	}
	
}

int fun_grado(nodo n, Agen<char> A)
{
	
	if(n == Agen<char>::NODO_NULO) return 0;
	
	else
	{
		int grado = 0;		
		nodo hijo = A.hijoIzqdo(n);
		
		while(hijo != Agen<char>::NODO_NULO)
		{
			grado = max(grado,fun_grado(hijo,A));
			hijo = A.hermDrcho(hijo);			
		}
		
		return max(grado,numhijos(n,A));	
		
	}
	
	
}
