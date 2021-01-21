#include <iostream>
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\ARBOLES BINARIOS\ARBOLES BINARIOS\ABINdinamico.h"
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\ARBOLES BINARIOS\ARBOLES BINARIOS\abin_E-S.h"

using namespace std;
typedef char tElto;
const tElto fin = '#';
typedef char T;
using nodo = Abin<T>::nodo;

int infijo(const Abin<T>& A);
int infijo_rec(const nodo& n, const Abin<T>& A);

int main()
{		
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

	return 0;
}

int infijo(const Abin<T>& A)
{
	return infijo_rec(A.raiz(),A);
}

int infijo_rec(const nodo& n, const Abin<T>& A)
{
	
	if(A.hijoDrcho(n) == Abin<T>::NODO_NULO && A.hijoIzqdo(n) == Abin<T>::NODO_NULO)
	{
		return A.elemento(n);
	}
	else
	{
		int operando1 = infijo_rec(A.hijoIzqdo(n),A);
		int operando2 = infijo_rec(A.hijoDrcho(n),A);
				
		switch(A.elemento(n))
		{
			case '+':	return operando1 + operando2;
						break;
			
			case '-':	return operando1 - operando2;		
						break;
						
			case '*':	return operando1 * operando2;
						break;
						
			case '/':	return operando1 / operando2;
						break;
		}
	}

}
