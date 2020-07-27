#include <iostream>
#include <fstream>
#include "agen.h"
#include "agen_E-S.h"

using namespace std;
typedef char tElto;

using nodo = typename Agen<char>::nodo;
const tElto fin = '#'; // fin de lectura

int grado(Agen<char>);
int grado_rec(nodo n, Agen<char> A);
int num_hijos(nodo n, Agen<char> A);
int num_nodos_hoja(nodo n, Agen<char> A);
int num_hojas(Agen<char> A);
double densidad(Agen<char> A);

int main () {
	
	Agen<char> A;

	cout << "\n*** Lectura de árbol A de agen.dat ***\n";
	ifstream fe("agen.txt"); // Abrir fichero de entrada.
	rellenarAgen(fe, A); // Desde fichero.
	fe.close();
	cout << "\n*** Mostrar árbol A ***\n";
	imprimirAgen(A); // En std::cout

	cout<<"densidad del arbol: "<<densidad(A)<<endl;

}
double densidad(Agen<char> A)
 {
 	return ((double)grado(A) / (double)num_hojas(A));
 }
 
int grado(Agen<char> A)
{
	return grado_rec(A.raiz(),A);
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

int grado_rec(nodo n, Agen<char> A)
{
	
	if(n == Agen<char>::NODO_NULO) return 0;
	
	else
	{
		int grado = 0;		
		nodo hijo = A.hijoIzqdo(n);
		
		while(hijo != Agen<char>::NODO_NULO)
		{
			grado = max(grado,grado_rec(hijo,A));
			hijo = A.hermDrcho(hijo);			
		}
		
		return max(grado,numhijos(n,A));	
	}
}

int num_hojas(Agen<char> A)
{
	return num_nodos_hoja(A.raiz(),A);
}

int num_nodos_hoja(nodo n, Agen<char> A)
{
	
	if(n != Agen<char>::NODO_NULO){
		
		if(A.hijoIzqdo(n) == Agen<char>::NODO_NULO)	return 1;
						
		else
		{
			nodo hijo = A.hijoIzqdo(n);
			int cont = 0;
			
			while(hijo != Agen<char>::NODO_NULO)
			{
				cont += num_nodos_hoja(hijo, A);
				
				hijo = A.hermDrcho(hijo); 
			}
			
			return cont;
		}
	}
}
