#include <iostream>
#include <fstream>
#include "agen_lis.h"
#include "agen_E-S.h"

using namespace std;

using nodo = typename Agen<char>::nodo;

typedef char T;
const T fin = '#'; // fin de lectura

void podar(Agen<T>& A, const T& x);
nodo buscar_nodo(nodo n, Agen<T>& A, T x);
void podar_descendientes_rec(nodo n, Agen<T>& A);
void Eliminar_nodo(nodo n, Agen<T>& A);

int main () {
	
	Agen<char> A(64), B(64);

	cout << "\n*** Lectura de árbol A de agen.dat ***\n";
	ifstream fe("agen.txt"); // Abrir fichero de entrada.
	rellenarAgen(fe, A); // Desde fichero.
	fe.close();
	cout << "\n*** Mostrar árbol A ***\n";
	imprimirAgen(A); // En std::cout
	
	podar(A,'n');
	
	cout<<"----------";

	imprimirAgen(A); // En std::cout
	
	//cout<<(A.raiz(),A);
}

void podar(Agen<T>& A, const T& x)
{

	if(!A.arbolVacio())
	{
		nodo n = buscar_nodo(A.raiz(),A,x);
		
		if(n != Agen<T>::NODO_NULO)
		{	
			podar_descendientes_rec(n,A);
			Eliminar_nodo(n,A);			
		}				
		else cout<<"NO se ha encontrado el nodo";
	}
}

void podar_descendientes_rec(nodo n, Agen<T>& A)
{
 	if(n != Agen<T>::NODO_NULO)
	{			
		if(A.hijoIzqdo(n) != Agen<T>::NODO_NULO)
		{
			nodo hijoIzq = A.hijoIzqdo(n);
		
			while(hijoIzq != Agen<T>::NODO_NULO)
			{
				podar_descendientes_rec(hijoIzq,A);
				hijoIzq = A.hermDrcho(hijoIzq);
				A.eliminarHijoIzqdo(n);				
			}			
		}
	}
}

void Eliminar_nodo(nodo n, Agen<T>& A)
{
	if(n != Agen<T>::NODO_NULO)
	{
		if(n == A.raiz()) A.eliminarRaiz();	//¿Es raiz?
		
		else
		{
			nodo padre = A.padre(n);			
			if(A.hijoIzqdo(padre) == n) A.eliminarHijoIzqdo(padre);	//¿Es hijoIzquierdo?			
			//Entonces, es un hermano derecho
			else
			{
				nodo Izq = A.hijoIzqdo(padre);
				nodo hijoDer = A.hermDrcho(Izq);
				
				while(hijoDer != n)
				{
					Izq = hijoDer;
					hijoDer = A.hermDrcho(hijoDer);
				}
				
				A.eliminarHermDrcho(Izq);				
			}			
		}		
	}	
}

nodo buscar_nodo(nodo n, Agen<T>& A, T x)
{
	nodo encontrado = Agen<T>::NODO_NULO;
	if(n == Agen<T>::NODO_NULO) return Agen<T>::NODO_NULO;
	
	else
	{
		if(A.elemento(n) == x)
		{
			encontrado = n;
			return encontrado;
		} 
		
		else
		{
			nodo hijo = A.hijoIzqdo(n);
			
			while(hijo != Agen<T>::NODO_NULO && encontrado == Agen<T>::NODO_NULO)
			{
				encontrado = buscar_nodo(hijo,A,x);
				hijo = A.hermDrcho(hijo);
			}
			
			return encontrado;
		}		
	}				
}
	


	

