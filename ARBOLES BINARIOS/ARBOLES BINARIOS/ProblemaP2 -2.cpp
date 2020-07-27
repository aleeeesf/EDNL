#include <iostream>
#include <fstream>
#include <algorithm>
#include <locale.h>
#include "abin_E-S.h"
#include "ABINdinamico.h"

using namespace std;

typedef char tElto;
const tElto fin = '#';


void SimilarRec(typename Abin<char>::nodo na, const Abin<char>& A,typename Abin<char>::nodo nb, Abin<char>& B);

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
	
	B.insertarRaiz('f');
	SimilarRec(A.raiz(),A,B.raiz(),B);
	
	imprimirAbin(B);
	
	cout<<A.elemento(A.raiz());
	system("pause");
	return 0;
}


void SimilarRec(typename Abin<char>::nodo na, const Abin<char>& A,typename Abin<char>::nodo nb, Abin<char>& B){
	
	if(A.hijoDrcho(na) != Abin<char>::NODO_NULO){
		
		char element = A.elemento(A.hijoDrcho(na));
		B.insertarHijoDrcho(nb, element);
		
		SimilarRec(A.hijoDrcho(na),A,B.hijoDrcho(nb),B);
	} 
	
	if(A.hijoIzqdo(na) != Abin<char>::NODO_NULO){
		
		B.insertarHijoIzqdo(nb,A.elemento(A.hijoIzqdo(na)));
		
		SimilarRec(A.hijoIzqdo(na),A,B.hijoIzqdo(nb),B);
	} 
	
	
}


