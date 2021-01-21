#include <iostream>
#include "ABINdinamico.h"
#include "abin_E-S.h"

using namespace std;
typedef char tElto;
const tElto fin = '#';


template <typename T>
int infija(const Abin<T>& A);

template <typename T>
int infijas_rec(const typename Abin<T>::nodo& n, const Abin<T>& A);

int main()
{		
	setlocale(LC_ALL,"");
	Abin<char> A,B;
	/*
	rellenarAbin(A,fin);
	ofstream fs("abin3.txt");
	imprimirAbin(fs,A,fin);
	fs.close();	
	*/
	ifstream fe("abin3.txt");
	rellenarAbin(fe,A);
	fe.close();
	
	imprimirAbin(A);
	
	cout<<"Resultado: "<<infija(A)<<endl;
	return 0;
}

template<typename T>
int infija(const Abin<T>& A)
{
	return infijas_rec(A.raiz(), A);
}


template<typename T>
int infijas_rec(const typename Abin<T>::nodo& n, const Abin<T>& A)
{
	if(A.hijoIzqdo(n) == Abin<T>::NODO_NULO && A.hijoDrcho(n) == Abin<T>::NODO_NULO)
	{
		return atoi(&A.elemento(n));
	}
	
	else
	{
		int operandoI = infijas_rec(A.hijoIzqdo(n),A);
		int operandoD = infijas_rec(A.hijoDrcho(n),A);

		switch(A.elemento(n))
		{
			case '+': return operandoI + operandoD;
				break;
			case '-':	return operandoI - operandoD;
				break;
			case '*':	return operandoI * operandoD;
				break;
			case '/':	return operandoI / operandoD;
				break;
		}
	}	
}
