#include <iostream>
#include <vector>
#include "abb.h"
#include "abin.h"
#include "abb_E-S.h"

using namespace std;

typedef char tElto;
const tElto fin = '#';

void Llenar_vector(vector<int>& elementos, const Abb<int>& A);
void Llenar_arbol_equilibrado(int inicio,int fin, const vector<int>& elementos, Abb<int>& A);
void Equilibrar_arbol(Abb<int>& A);

int main(){

	Abb<int> A;
	LeerAbb(A);
	MostrarAbb(A);
	
	vector<int> v;
	Equilibrar_arbol(A);
	MostrarAbb(A);

	return 0;
}


void Llenar_vector(vector<int>& elementos, const Abb<int>& A)
{
    if(!A.vacio())
    {
        Llenar_vector(elementos, A.izqdo());
        elementos.push_back(A.elemento());
        Llenar_vector(elementos, A.drcho());
    }
}

void Llenar_arbol_equilibrado(int inicio,int fin, const vector<int>& elementos, Abb<int>& A)
{
    int mediana;

    if(inicio<=fin)
    {
        mediana= (inicio+fin)/2;
        A.insertar(elementos[mediana]);
        Llenar_arbol_equilibrado(inicio, mediana-1, elementos, A); //Parte izq
        Llenar_arbol_equilibrado(mediana+1, fin, elementos, A); //Parte izq
    }
}

void Equilibrar_arbol(Abb<int>& A)
{
    std::vector<int> elementos;
    Abb<int> Aux;
    int inicio, fin;

    if(!A.vacio())
    {    
        Llenar_vector(elementos, A); //Se llena el vector con los elementos ordenados del árbol
        inicio=0;
        fin=elementos.size()-1;
        Llenar_arbol_equilibrado(inicio, fin, elementos, Aux);
        A=Aux;
    }
}
