#include <iostream>
#include <fstream>
#include "agen_lis.h"
#include "agen_E-S.h"

using namespace std;

using nodo = typename Agen<char>::nodo;

typedef char T;
const T fin = '#'; // fin de lectura

int grado(const Agen<T>& A);
int grado_rec(const nodo& n, const Agen<T>& A);
double densidad(const Agen<T>& A);
int num_hojas(const Agen<T>& A);
int num_hojas_rec(const nodo& n, const Agen<T>& A);
int num_hijos_rec(const nodo& n, const Agen<T>& A);


int main () {
	
	Agen<char> A(64), B(64);

	cout << "\n*** Lectura de árbol A de agen.dat ***\n";
	ifstream fe("agen.txt"); // Abrir fichero de entrada.
	rellenarAgen(fe, A); // Desde fichero.
	fe.close();
	cout << "\n*** Mostrar árbol A ***\n";
	imprimirAgen(A); // En std::cout

	cout<<"-----"<<endl;
	cout<<densidad(A);
}

double densidad(const Agen<T>& A)
{
	return ((double)grado(A)/(double)num_hojas(A));
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
		int max_hijos = 0, nhijos = 0;
		nodo hijo = A.hijoIzqdo(n);
		
		while(hijo != Agen<T>::NODO_NULO)
		{			
			max_hijos = max(grado_rec(hijo,A), max_hijos);
			hijo = A.hermDrcho(hijo);
		}
		
		nhijos = num_hijos_rec(n,A);
		return max(max_hijos, nhijos);
	}
}

int num_hijos_rec(const nodo& n, const Agen<T>& A)
{
	if(n == Agen<T>::NODO_NULO) return 0;
	
	else
	{
		int cont = 0;
		nodo hijo = A.hijoIzqdo(n);
		
		while(hijo != Agen<T>::NODO_NULO)
		{
			cont++;
			hijo = A.hermDrcho(hijo);			
		}
		
		return cont;
	}	
}

int num_hojas(const Agen<T>& A)
{
	return num_hojas_rec(A.raiz(),A);
}

int num_hojas_rec(const nodo& n, const Agen<T>& A)
{
	if(n != Agen<T>::NODO_NULO)
	{
		if(A.hijoIzqdo(n) == Agen<T>::NODO_NULO) return 1;
	
		else
		{
			int cont = 0;
			nodo hijo = A.hijoIzqdo(n);
			
			while(hijo != Agen<T>::NODO_NULO)
			{
				cont += num_hojas_rec(hijo,A);
				hijo = A.hermDrcho(hijo);		
			}
		
			return cont;
		}	
	}		
	else return 0;
}
