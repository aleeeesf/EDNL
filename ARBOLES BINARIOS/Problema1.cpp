#include <iostream>
#include <locale.h>
#include "abin_E-S.h"
#include "ABINdinamico.h"

using namespace std;


typedef char tElto;
const tElto fin = '#';

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
	
	return 0;
	
	
}

/*PROBLEMA 1*/
int numnodosabin(const Abin<T>& A){
	
	return numnodosrec(A.raiz(),A);
}

int numnodosrec()
