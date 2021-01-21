#include <iostream>
#include <vector>
#include "abb.h"

using namespace std;

class Conjunto{
	
	public:
		
		Conjunto();
		void MostrarConjunto();
		void IntroducirElemento();
		void LeerAbb();
		Conjunto unnion(const Conjunto& B);	
		Conjunto interseccion(Conjunto);	
	private:
		Abb<int> A;
		void mostrar(const Abb<int>&);
		void Llenar_vector(vector<int>&, const Abb<int>&);
		void Llenar_arbol_equilibrado(int,int, const vector<int>&, Abb<int>&);
		void Equilibrar_arbol(Abb<int>&);
		void concatenar_arboles(Abb<int>&, const Abb<int>&);
};

Conjunto Conjunto::unnion(const Conjunto& B)
{
	Abb<int> aux;
	concatenar_arboles(aux,this->A);
	concatenar_arboles(aux,B.A);
	this->Equilibrar_arbol(aux);
	
	Conjunto C(aux);
	return aux;
}	
Conjunto Conjunto::interseccion(Conjunto )
{
	
	
}

//Introduce los elementos de B en A
void Cadena::concatenar_arboles(Abb<int>& A, const Abb<int>& B)
{
	if(!B.vacio())
	{
		A.insertar(B.elemento());
		concatenar_arboles(A, B.izqdo())
		concatenar_arboles(A, B.drcho())
	}
}


void Conjunto::Llenar_vector(vector<int>& elementos, const Abb<int>& A)
{
    if(!A.vacio())
    {
        Llenar_vector(elementos, A.izqdo());
        elementos.push_back(A.elemento());
        Llenar_vector(elementos, A.drcho());
    }
}

void Conjunto::Llenar_arbol_equilibrado(int inicio,int fin, const vector<int>& elementos, Abb<int>& A)
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

void Conjunto::Equilibrar_arbol(Abb<int>& A)
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


void Conjunto::MostrarConjunto()
{
	this->mostrar(A);
}

void Conjunto::mostrar(const Abb<int>& A)
{
	std::cout<<A.elemento()<<std::endl;
	if(!A.izqdo().vacio())
	{
		std::cout<<"Hijo izq de "<<A.elemento()<<" : ";
		mostrar(A.izqdo());
	}
	if(!A.drcho().vacio())
	{
		std::cout<<"Hijo der de "<<A.elemento()<<" : ";
		mostrar(A.drcho());
		
	}
}

void Conjunto::LeerAbb(){

	int elto;
	std::cout<<"Lectura del arbol ABB (fin: '-1')"<<std::endl;
	
	do{
		std::cout<<"Introduce el elemento a insertar: ";
		std::cin>>elto;
		if(elto != -1) A.insertar(elto);
	}while(elto != -1);

}

