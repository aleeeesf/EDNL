#include <iostream>
#include "ABINdinamico.h"
#include "abin_E-S.h"

using namespace std;
typedef char tElto;
const tElto fin = '#';
typedef char T;

bool pseudocompleto(const Abin<T>& A);
bool pseudocompleto_rec(const typename Abin<T>::nodo& n, const Abin<T>& A);
int profundidad(const typename Abin<T>::nodo n,const Abin<T>& A);
int altura_rec(const Abin<T>& A, const typename Abin<T>::nodo& n);

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
	
	cout<<"¿Es pseudocompleto?: "<<pseudocompleto(A)<<endl;
	return 0;
}

bool pseudocompleto(const Abin<T>& A)
{
	return pseudocompleto_rec(A.raiz(),A);
}

bool pseudocompleto_rec(const typename Abin<T>::nodo& n, const Abin<T>& A)
{
	if(n == Abin<T>::NODO_NULO) return true;
	
	else{
		
		if(profundidad(n,A) == altura_rec(A,A.raiz())){
			return ((A.hijoDrcho(n) == Abin<T>::NODO_NULO && A.hijoIzqdo(n) == Abin<T>::NODO_NULO) || 
					(A.hijoDrcho(n) != Abin<T>::NODO_NULO && A.hijoIzqdo(n) != Abin<T>::NODO_NULO));
		}
		else return pseudocompleto_rec(A.hijoDrcho(n),A) && pseudocompleto_rec(A.hijoIzqdo(n),A);
	}	
}


int profundidad(const typename Abin<T>::nodo n,const Abin<T>& A)
{
	if(n == Abin<T>::NODO_NULO) return -1;
	
	else return 1 + profundidad(A.padre(n), A);
}


int altura_rec(const Abin<T>& A, const typename Abin<T>::nodo& n)
{
	if(n == Abin<T>::NODO_NULO) return -1;
	
	else return 1 + max(altura_rec(A, A.hijoDrcho(n)) , altura_rec(A, A.hijoIzqdo(n)));
}
