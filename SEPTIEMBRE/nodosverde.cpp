#include <iostream>
#include <fstream>
#include "agen_lis.h"
#include "agen_E-S.h"

using namespace std;

using nodo = typename Agen<char>::nodo;

typedef char T;
const T fin = '#'; // fin de lectura

int nodos_verde(const Agen<T>& A);
int contar_nodos_verde(const nodo& n, const Agen<T>& A);
int num_hijos(const nodo& n, const Agen<T>& A);
int num_nietos(const nodo& n, const Agen<T>& A);
bool es_nodo_verde(const nodo& n, const Agen<T>& A);

int main () {
	
	Agen<char> A(64), B(64);

	cout << "\n*** Lectura de árbol A de agen.dat ***\n";
	ifstream fe("agenver.txt"); // Abrir fichero de entrada.
	rellenarAgen(fe, A); // Desde fichero.
	fe.close();
	cout << "\n*** Mostrar árbol A ***\n";
	imprimirAgen(A); // En std::cout

	cout<<"-----"<<endl;
	cout<<nodos_verde(A);
}

int nodos_verde(const Agen<T>& A)
{
	return contar_nodos_verde(A.raiz(),A);
}

int contar_nodos_verde(const nodo& n, const Agen<T>& A)
{
	int cont = 0;
	
	if(n != Agen<T>::NODO_NULO)
	{	
		if(es_nodo_verde(n,A)) cont++;
		
		nodo hijo = A.hijoIzqdo(n);
			
		while(hijo != Agen<T>::NODO_NULO)
		{
			cont += contar_nodos_verde(hijo,A);
			hijo = A.hermDrcho(hijo);
		}
		return cont;
	}
}


bool es_nodo_verde(const nodo& n, const Agen<T>& A)
{
	int nietos = num_nietos(n,A);
	int doble_hijos = 2 * num_hijos(n,A);
	return (nietos == doble_hijos) ? 1:0;	
}

int num_nietos(const nodo& n, const Agen<T>& A)
{
	if(n == Agen<T>::NODO_NULO) return 0;
	
	else
	{
		nodo hijo = A.hijoIzqdo(n);
		int n_nietos = 0;
		
		while(hijo != Agen<T>::NODO_NULO)
		{
			n_nietos += num_hijos(hijo,A);
			hijo = A.hermDrcho(hijo);
		}
		
		return n_nietos;
	}
}

int num_hijos(const nodo& n, const Agen<T>& A)
{
	if(n == Agen<T>::NODO_NULO) return 0;
	
	else
	{
		nodo hijo = A.hijoIzqdo(n);
		int cont = 0;
		
		while(hijo != Agen<T>::NODO_NULO)
		{
			cont++;
			hijo = A.hermDrcho(hijo);
		}
		
		return cont;
	}	
}
