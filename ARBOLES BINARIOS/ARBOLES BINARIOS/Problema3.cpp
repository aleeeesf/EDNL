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
int profundidadrec(typename Abin<T>::nodo n, const Abin<T>& A);

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
	//n = A.hijoDrcho(n);
	cout<<"Profundidad:"<<profundidadrec(n,A)<<endl;
	
	return 0;
}

template<typename T>
int profundidadrec(typename Abin<T>::nodo n, const Abin<T>& A){
	
	if(n == Abin<T>::NODO_NULO) return -1;
	
	else return 1 + profundidadrec(A.padre(n),A);
}
