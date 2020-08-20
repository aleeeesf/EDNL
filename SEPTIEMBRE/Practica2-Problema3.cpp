#include <iostream>
#include "ABINdinamico.h"
#include "abin_E-S.h"

using namespace std;
typedef char tElto;
const tElto fin = '#';
typedef char T;
using nodo = Abin<T>::nodo;

bool es_hoja(const nodo& n,const Abin<T>& A);
int infijo_rec(const nodo& n, const Abin<T>& A);

int main()
{		
	setlocale(LC_ALL,"");
	Abin<char> A,B;
	/*
	rellenarAbin(B,fin);
	ofstream fs("problema3.txt");
	imprimirAbin(fs,B,fin);
	fs.close();	
	*/
	ifstream fe("problema3.txt");
	rellenarAbin(fe,A);
	fe.close();
	imprimirAbin(A);
	
	cout<<infijo_rec(A.raiz(),A);


	return 0;
}

int infijo_rec(const nodo& n, const Abin<T>& A)
{
	if(es_hoja(n,A)) return	atoi(&A.elemento(n));
	
	else
	{
		int elemento1 = infijo_rec(A.hijoIzqdo(n),A);
		int elemento2 = infijo_rec(A.hijoDrcho(n),A);
		
		switch(A.elemento(n))
		{
			case '+':	return(elemento1 + elemento2);				
						break;
			case '-':	return(elemento1 - elemento2);				
						break;
			case '/':	return(elemento1 / elemento2);				
						break;
			case '*':	return(elemento1 * elemento2);				
						break;
		}
	}
}

bool es_hoja(const nodo& n,const Abin<T>& A)
{
	return (A.hijoIzqdo(n) == Abin<T>::NODO_NULO && A.hijoDrcho(n) == Abin<T>::NODO_NULO) ? 1 : 0;
}

