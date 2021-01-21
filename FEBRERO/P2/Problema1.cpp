#include <iostream>
#include "ABINdinamico.h"
#include "abin_E-S.h"

using namespace std;
typedef char tElto;
const tElto fin = '#';


template <typename T>
bool similares(const Abin<T>& A, const Abin<T>& B);

template <typename T>
int similares_rec(const typename Abin<T>::nodo& na, const Abin<T>& A, const typename Abin<T>::nodo& nb, const Abin<T>& B);

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
	
	B = A;
	
	imprimirAbin(A);
	
	cout<<"Similares? "<<similares(A,B)<<endl;
	return 0;
}

template<typename T>
bool similares(const Abin<T>& A, const Abin<T>& B)
{
	return similares_rec(A.raiz(), A, B.raiz(), B);
}


template<typename T>
int similares_rec(const typename Abin<T>::nodo& na, const Abin<T>& A, const typename Abin<T>::nodo& nb, const Abin<T>& B)
{
	if(na == Abin<T>::NODO_NULO && nb == Abin<T>::NODO_NULO) return true;
	
	else
	{
		if(na == Abin<T>::NODO_NULO || nb == Abin<T>::NODO_NULO)
			return false;
			
		else return similares_rec(A.hijoDrcho(na),A,A.hijoDrcho(nb),B) && similares_rec(A.hijoIzqdo(na),A,A.hijoIzqdo(nb),B);			
	}	
}
