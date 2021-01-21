#include <iostream>
#include "ABINdinamico.h"
#include "abin_E-S.h"

using namespace std;
typedef char tElto;
const tElto fin = '#';


template <typename T>
int num_nodos(const Abin<T>& A);

template <typename T>
int num_nodos_rec(const typename Abin<T>::nodo& n, const Abin<T>& A);

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
	
	imprimirAbin(A);
	
	cout<<"ANum.nodos: "<<num_nodos(A)<<endl;
	return 0;
}

template<typename T>
int num_nodos(const Abin<T>& A)
{
	return num_nodos_rec(A.raiz(), A);
}


template<typename T>
int num_nodos_rec(const typename Abin<T>::nodo& n, const Abin<T>& A)
{
	if(n == Abin<T>::NODO_NULO) return 0;
	
	else return 1 + num_nodos_rec(A.hijoDrcho(n),A) + num_nodos_rec(A.hijoIzqdo(n),A);
}
