#include <iostream>
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\ARBOLES BINARIOS\ARBOLES BINARIOS\ABINdinamico.h"
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\ARBOLES BINARIOS\ARBOLES BINARIOS\abin_E-S.h"

using namespace std;
typedef char tElto;
const tElto fin = '#';
typedef char T;


int num_rebeldes(const Abin<T>& A);
int contar_rebeldes_rec(const typename Abin<T>::nodo& n, const Abin<T>& A);
bool es_rebeldes(const typename Abin<T>::nodo& n, const Abin<T>& A);
int num_ancestros_distintos(const typename Abin<T>::nodo& n, const Abin<T>& A, char elemento);
int num_ancestros_iguales(const typename Abin<T>::nodo& n, const Abin<T>& A, char elemento);

int main()
{		
	setlocale(LC_ALL,"");
	Abin<char> A,B;
	/*
	rellenarAbin(B,fin);
	ofstream fs("abin.txt");
	imprimirAbin(fs,B,fin);
	fs.close();	
	*/
	ifstream fe("abin.txt");
	rellenarAbin(fe,A);
		imprimirAbin(A);
	fe.close();	
	
	cout<<num_rebeldes(A);

	return 0;
}


int num_rebeldes(const Abin<T>& A)
{
	return contar_rebeldes_rec(A.raiz(), A);
}

int contar_rebeldes_rec(const typename Abin<T>::nodo& n, const Abin<T>& A)
{
	if(n == Abin<T>::NODO_NULO) return 0;
	
	else
	{
		if(es_rebeldes(n,A)) return 1 + contar_rebeldes_rec(A.hijoIzqdo(n),A) + contar_rebeldes_rec(A.hijoDrcho(n),A);
		else return contar_rebeldes_rec(A.hijoIzqdo(n),A) + contar_rebeldes_rec(A.hijoDrcho(n),A);
	}
}

bool es_rebeldes(const typename Abin<T>::nodo& n, const Abin<T>& A)		
{
	
	if(num_ancestros_distintos(A.padre(n),A,A.elemento(n)) > num_ancestros_iguales(A.padre(n),A,A.elemento(n))) return true;
	else return false;
}


int num_ancestros_distintos(const typename Abin<T>::nodo& n, const Abin<T>& A, char elemento)
{
	
	if(n == Abin<T>::NODO_NULO) return 0;
	
	else 
	{
	
		if(elemento != A.elemento(n)) return 1 + num_ancestros_distintos(A.padre(n),A,elemento);
		
		else return num_ancestros_distintos(A.padre(n),A,elemento);
	}
}

int num_ancestros_iguales(const typename Abin<T>::nodo& n, const Abin<T>& A, char elemento)
{

	if(n == Abin<T>::NODO_NULO) return 0;
	
	else 
	{
		
		if(elemento == A.elemento(n)) return 1 + num_ancestros_iguales(A.padre(n),A,elemento);
		
		else return num_ancestros_iguales(A.padre(n),A,elemento);
	}
}

