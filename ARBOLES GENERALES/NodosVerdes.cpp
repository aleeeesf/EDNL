#include <iostream>
#include <fstream>
#include "agen_lis.h"
#include "agen_E-S.h"

using namespace std;

using nodo = typename Agen<char>::nodo;

typedef char tElto;
const tElto fin = '#'; // fin de lectura

int nodos_verdes(const Agen<char>& A);
int num_hijos(nodo n, const Agen<char>& A);
int num_nietos(nodo n, const Agen<char>& A);
int nodos_verdes(const Agen<char>& A);
int contar_nodos_verde(nodo n, const Agen<char>& A);
bool es_nodo_verde(nodo n,const Agen<char>& A);

int main () {
	
	Agen<char> A(64), B(64);
	cout << "\n*** Lectura de árbol A de agen.dat ***\n";
	ifstream fe("agenver.txt"); // Abrir fichero de entrada.
	rellenarAgen(fe, A); // Desde fichero.
	fe.close();
	cout << "\n*** Mostrar árbol A ***\n";
	imprimirAgen(A); // En std::cout
	
	cout<<nodos_verdes(A);

}

int nodos_verdes(const Agen<char>& A)
{
	return contar_nodos_verde(A.raiz(),A);
}

int contar_nodos_verde(nodo n, const Agen<char>& A)
{
	int cont = 0;
	if(es_nodo_verde(n,A)) cont++;
	
	nodo hijo = A.hijoIzqdo(n);
	
	while(hijo != Agen<char>::NODO_NULO)
	{
		cont += contar_nodos_verde(hijo,A);
		hijo = A.hermDrcho(hijo);
	}

	return cont;
}


bool es_nodo_verde(nodo n, const Agen<char>& A)
{
	if(num_nietos(n,A) == 2*num_hijos(n,A))	return true;
	else return false;
}

int num_hijos(nodo n, const Agen<char>& A)
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

int num_nietos(nodo n, const Agen<char>& A)
{
	if(n != Agen<char>::NODO_NULO)
	{
		
		nodo hijo = A.hijoIzqdo(n);
		int cont = 0;
		
		while(hijo != Agen<char>::NODO_NULO)
		{
			cont += num_hijos(hijo,A);
			hijo = A.hermDrcho(hijo);			
		}
		
		return cont;
	}
}
