#include <iostream>
#include <fstream>
#include <algorithm>
#include <locale.h>
#include <cstdlib>
#include "abin_E-S.h"
#include "ABINdinamico.h"

using namespace std;

typedef char tElto;
const tElto fin = '#';

template<typename T>
int pseudocompleto(typename Abin<T>::nodo n, Abin<T> A);

int main(){
	
	setlocale(LC_ALL,"");
	Abin<char> A,B;
	/*
	rellenarAbin(B,fin);
	ofstream fs("abininfijo.txt");
	imprimirAbin(fs,B,fin);
	fs.close();	
	*/
	ifstream fe("abininfijo.txt");
	rellenarAbin(fe,A);
	fe.close();
	
	imprimirAbin(A);

	cout<<pseudocompleto(A.raiz(),A)<<endl;
	
	return 0;
}


template<typename T>
int pseudocompleto(typename Abin<T>::nodo n, Abin<T> A){
	
	if(A.hijoDrcho(n) == Abin<T>::NODO_NULO && A.hijoIzqdo(n) == Abin<T>::NODO_NULO) {cout<<A.elemento(n)<<endl; return (double)atoi(&A.elemento(n));} 	//Si es nodo hoja devuelve el elemento
	
	else{
	
		int operando1 = (int)pseudocompleto(A.hijoIzqdo(n),A);
		int operando2 = (int)pseudocompleto(A.hijoDrcho(n),A);
		
		switch(A.elemento(n))
		{	
		
		case '+': return (operando1 + operando2);  break;
		
		case '-': return (operando1 - operando2); break;	
		
		case '*': return (operando1 * operando2); break;	
		
		case '/': return (operando1 / operando2); break;
		
		}
	}
}

