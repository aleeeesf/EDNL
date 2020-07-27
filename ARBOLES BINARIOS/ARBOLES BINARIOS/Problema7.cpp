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
int altura(const Abin<T>& A);

template<typename T>
int alturarec(typename Abin<T>::nodo n, const Abin<T>& A);

template<typename T>
int profundidadrec(typename Abin<T>::nodo n, const Abin<T>& A);

template<typename T>
bool pseudocompleto(typename Abin<T>::nodo n, Abin<T> A);

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
	
	cout<<pseudocompleto(A.raiz(),A)<<endl;
	
	return 0;
}

template<typename T>
int altura(const Abin<T>& A){
	
	return alturarec(A.raiz(),A);
}

template<typename T>
int alturarec(typename Abin<T>::nodo n, const Abin<T>& A){
	
	if(n == Abin<T>::NODO_NULO) return -1;
	
	else return 1 + max(alturarec(A.hijoDrcho(n),A),alturarec(A.hijoIzqdo(n),A));
}

template<typename T>
bool pseudocompleto(typename Abin<T>::nodo n, Abin<T> A){
	
	if(n == Abin<T>::NODO_NULO) return true;
	
	else{
			
			if(profundidadrec(n,A) == alturarec(A.raiz(),A)-1 ) 
				 return (A.hijoDrcho(n) != Abin<T>::NODO_NULO && A.hijoIzqdo(n) != Abin<T>::NODO_NULO 
				|| A.hijoDrcho(n) == Abin<T>::NODO_NULO && A.hijoIzqdo(n) == Abin<T>::NODO_NULO);
			
			else return pseudocompleto(A.hijoDrcho(n),A) && pseudocompleto(A.hijoIzqdo(n),A);
		
		}
	
}

template<typename T>
int profundidadrec(typename Abin<T>::nodo n, const Abin<T>& A){
	
	if(n == Abin<T>::NODO_NULO) return -1;
	
	else return 1 + profundidadrec(A.padre(n),A);
}
