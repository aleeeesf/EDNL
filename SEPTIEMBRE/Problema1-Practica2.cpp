#include <iostream>
#include "ABINdinamico.h"
#include "abin_E-S.h"


using namespace std;
typedef char tElto;
const tElto fin = '#';
typedef char T;
using nodo = Abin<T>::nodo;

bool Abin_similares(const Abin<T>& A, const Abin<T>& B);
bool Abin_similar_rec(const nodo& na, const nodo& nb, const Abin<T>& A, const Abin<T>& B);

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
	
	cout<<"¿Es similar?: "<<Abin_similares(A,B)<<endl;
	return 0;
}

bool Abin_similares(const Abin<T>& A, const Abin<T>& B)
{
	return Abin_similar_rec(A.raiz(),B.raiz(),A,B);
}

bool Abin_similar_rec(const nodo& na, const nodo& nb, const Abin<T>& A, const Abin<T>& B)
{
	if(na == Abin<T>::NODO_NULO && nb == Abin<T>::NODO_NULO) return true;
	
	else{
		
		if(( na == Abin<T>::NODO_NULO && nb != Abin<T>::NODO_NULO ) || ( na == Abin<T>::NODO_NULO && nb != Abin<T>::NODO_NULO ) )
			return false;
		
		else return Abin_similar_rec(A.hijoDrcho(na),B.hijoDrcho(nb),A,B) && Abin_similar_rec(A.hijoIzqdo(na),B.hijoIzqdo(nb),A,B);
	}
	
}

