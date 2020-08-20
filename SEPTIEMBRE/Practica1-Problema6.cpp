#include <iostream>
#include "ABINdinamico.h"
#include "abin_E-S.h"

using namespace std;
typedef char tElto;
const tElto fin = '#';

template <typename T>
int desequilibrio(const Abin<T>& A);

template <typename T>
int desequilibrio_rec(const typename Abin<T>::nodo,const Abin<T>& A);

template <typename T>
int altura(const Abin<T>& A);

template <typename T>
int altura_rec(const Abin<T>& A, const typename Abin<T>::nodo& n);

template <typename T>
T max3(T n1, T n2, T n3){
	return max(n1,max(n2,n3));
}

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
	
	cout<<"Desequilibrio: "<<desequilibrio(A)<<endl;
	return 0;
}

template <typename T>
int desequilibrio(const Abin<T>& A)
{
	return desequilibrio_rec(A.raiz(),A);
}

template <typename T>
int desequilibrio_rec(const typename Abin<T>::nodo n,const Abin<T>& A)
{
	int deseq, desq_izqdo;
	
	if(n == Abin<T>::NODO_NULO) return 0;
	
	else {
		
		deseq = abs(altura_rec(A, A.hijoDrcho(n)) - altura_rec(A, A.hijoIzqdo(n)));
		return max3(deseq, desequilibrio_rec(A.hijoDrcho(n),A), desequilibrio_rec(A.hijoIzqdo(n),A));
	}
}

template <typename T>
int altura(const Abin<T>& A)
{
	return altura_rec(A, A.raiz());
}

template <typename T>
int altura_rec(const Abin<T>& A, const typename Abin<T>::nodo& n)
{
	if(n == Abin<T>::NODO_NULO) return -1;
	
	else return 1 + max(altura_rec(A, A.hijoDrcho(n)) , altura_rec(A, A.hijoIzqdo(n)));
}
