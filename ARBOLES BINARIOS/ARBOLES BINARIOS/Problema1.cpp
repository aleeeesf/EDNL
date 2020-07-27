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
int llamada(const Abin<T>& A);

template<typename T>
int numnodosrec(typename Abin<T>::nodo n, const Abin<T>& A);

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
	
	cout<<"Numero de nodos:"<<llamada(A)<<endl;
	
	return 0;
}

template<typename T>
int llamada(const Abin<T>& A){
	
	return numnodosrec(A.raiz(),A);
}

template<typename T>
int numnodosrec(typename Abin<T>::nodo n, const Abin<T>& A){
	
	if(n == Abin<T>::NODO_NULO) return 0;
	
	else return 1 + numnodosrec(A.hijoDrcho(n),A) + numnodosrec(A.hijoIzqdo(n),A);
}
