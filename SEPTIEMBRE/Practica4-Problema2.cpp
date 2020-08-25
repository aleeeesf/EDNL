#include <iostream>
#include <vector>
#include "abb.h"
#include "abin.h"
#include "abb_E-S.h"

using namespace std;

typedef char tElto;
const tElto fin = '#';

void Equilibrar_arbol(Abb<int>& A);
void Llenar_vector(vector<int>& elementos, const Abb<int>& A);
void Rellenar_arbol(vector<int> v, Abb<int>& A, int inicio, int fin);


int main(){

	Abb<int> A;
	LeerAbb(A);
	MostrarAbb(A);
	
	vector<int> v;
	Equilibrar_arbol(A);
	MostrarAbb(A);

	return 0;
}

void Equilibrar_arbol(Abb<int>& A)
{
	if(!A.vacio())
	{
		vector<int> v;
		Abb<int> B;
		Llenar_vector(v, A);
		Rellenar_arbol(v,B,0,v.size()-1);		
		A = B;
	}

}

void Llenar_vector(vector<int>& elementos, const Abb<int>& A)
{
	if(!A.vacio())
	{
		Llenar_vector(elementos, A.drcho());
		elementos.push_back(A.elemento());
		Llenar_vector(elementos,A.izqdo());
	}	
}

void Rellenar_arbol(vector<int> v, Abb<int>& A, int inicio, int fin)
{
	
	if(inicio <= fin)
	{
		int mediana = (inicio+fin)/2;
		A.insertar(v[mediana]);
		Rellenar_arbol(v,A,0,mediana-1);
		Rellenar_arbol(v,A,mediana+1,fin);	
	}
}
