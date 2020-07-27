#include <iostream>
#include <fstream>
#include <algorithm>
#include <locale.h>
#include "abin_E-S.h"
#include "ABINdinamico.h"

using namespace std;

typedef char tElto;
const tElto fin = '#';

template<typename T>
bool nodo_verde(const Abin<T>& A);

template<typename T>
int contar_nodos_verde_rec(typename Abin<T>::nodo n, const Abin<T>& A);

template<typename T>
int contar_nodos_verde(Abin<T> A);

template<typename T>
int num_nietos(typename Abin<T>::nodo n, const Abin<T>& A);

template<typename T>
int num_hijos(typename Abin<T>::nodo n, const Abin<T>& A);

int main(){
	
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
	fe.close();
	
	imprimirAbin(A);
	
	cout<<contar_nodos_verde(A);
	
	
	return 0;
}

template<typename T>
int contar_nodos_verde(Abin<T> A){
	
	return contar_nodos_verde_rec(A.raiz(),A);
}

template<typename T>
int contar_nodos_verde_rec(typename Abin<T>::nodo n, const Abin<T>& A)
{
	if(n == Abin<T>::NODO_NULO) return 0;
	
	else{
	
		if(nodo_verde(n,A)) return 1 + contar_nodos_verde_rec(A.hijoIzqdo(n),A) + contar_nodos_verde_rec(A.hijoDrcho(n),A);

		else return 0 + contar_nodos_verde_rec(A.hijoIzqdo(n),A) + contar_nodos_verde_rec(A.hijoDrcho(n),A);
	
	}
	
}

template<typename T>
bool nodo_verde(typename Abin<T>::nodo n, const Abin<T>& A)
{
	if(num_nietos(n,A) == 3) return true;
	
	else return false;
} 

template<typename T>
int num_nietos(typename Abin<T>::nodo n, const Abin<T>& A)
{
	if(n == Abin<T>::NODO_NULO) return 0;
	
	return (num_hijos(A.hijoDrcho(n),A) + num_hijos(A.hijoIzqdo(n),A));
	
}

template<typename T>
int num_hijos(typename Abin<T>::nodo n, const Abin<T>& A)
{

	if(n == Abin<T>::NODO_NULO) return 0;
	
	else return ((A.hijoDrcho(n)!=Abin<T>::NODO_NULO) + (A.hijoIzqdo(n)!=Abin<T>::NODO_NULO));
	
}
