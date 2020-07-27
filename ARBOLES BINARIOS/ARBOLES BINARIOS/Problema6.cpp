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
int alturarec(typename Abin<T>::nodo n, const Abin<T>& A);

template<typename T>
int DesequilibrioRec(typename Abin<T>::nodo n, const Abin<T>& A);

int Max(int n1, int n2, int n3);

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
	
	Abin<char>::nodo n = A.raiz();
	n = A.hijoDrcho(n);
	cout<<"Diferencia:"<<llamada(A)<<endl;
	
	return 0;
}

template<typename T>
int llamada(const Abin<T>& A){
	
	return DesequilibrioRec(A.raiz(),A);
}

template<typename T>
int DesequilibrioRec(typename Abin<T>::nodo n, const Abin<T>& A){
	
	if(n == Abin<T>::NODO_NULO) return 0;
	
	
	else{
	
		int diferencia = ( alturarec(A.hijoDrcho(n),A) - alturarec(A.hijoIzqdo(n),A) ) ;
		
		return max( diferencia , max( DesequilibrioRec(A.hijoIzqdo(n),A), DesequilibrioRec(A.hijoDrcho(n),A) ));
	} 
}

template<typename T>
int alturarec(typename Abin<T>::nodo n, const Abin<T>& A){
	
	if(n == Abin<T>::NODO_NULO) return -1;
	
	else return 1 + max(alturarec(A.hijoDrcho(n),A),alturarec(A.hijoIzqdo(n),A));
}

int Max(int n1, int n2, int n3){
	
	int res;
	
	res = (n1>n2) ? n1:n2;
	res = (res>n3) ? res:n3;
	return res;
}
