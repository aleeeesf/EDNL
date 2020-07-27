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
bool llamada(const Abin<T>& A, const Abin<T>& B);
template<typename T>
bool DesequilibrioRec(typename Abin<T>::nodo na, const Abin<T>& A,typename Abin<T>::nodo nb, const Abin<T>& B);

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
	B=A;

	if (llamada(A,B)) cout<<"Lo son"<<endl;
	else cout<<"no lo son"<<endl;
	
	system("pause");
	return 0;
}

template<typename T>
bool llamada(const Abin<T>& A, const Abin<T>& B){
	
	return DesequilibrioRec(A.raiz(),A,B.raiz(),B);
}

template<typename T>
bool DesequilibrioRec(typename Abin<T>::nodo na, const Abin<T>& A,typename Abin<T>::nodo nb, const Abin<T>& B){
	
	if(na == Abin<T>::NODO_NULO || nb == Abin<T>::NODO_NULO) return true;
	
	else{
	
	if(na == Abin<T>::NODO_NULO || nb == Abin<T>::NODO_NULO ) return false;
	
	else return DesequilibrioRec(A.hijoDrcho(na),A,B.hijoDrcho(nb),B) && DesequilibrioRec(A.hijoIzqdo(na),A,B.hijoIzqdo(nb),B);
	
	}
}


