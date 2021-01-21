#include <iostream>
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\ARBOLES BINARIOS\ARBOLES BINARIOS\ABINdinamico.h"
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\ARBOLES BINARIOS\ARBOLES BINARIOS\abin_E-S.h"

using namespace std;
typedef char tElto;
const tElto fin = '#';
typedef char T;


int num_nostalgicos(const Abin<T>& A);
int contar_nostalgicos_rec(const typename Abin<T>::nodo& n, const Abin<T>& A);
bool es_nostalgico(const typename Abin<T>::nodo& n, const Abin<T>& A);
int num_descendientes(const typename Abin<T>::nodo& n, const Abin<T>& A);
int num_ancestros(const typename Abin<T>::nodo& n, const Abin<T>& A);

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
	
	cout<<num_nostalgicos(A);

	return 0;
}

int num_nostalgicos(const Abin<T>& A)
{
	return contar_nostalgicos_rec(A.raiz(), A);
}

int contar_nostalgicos_rec(const typename Abin<T>::nodo& n, const Abin<T>& A)
{
	if(n == Abin<T>::NODO_NULO) return 0;
	
	else
	{
		if(es_nostalgico(n,A)) return 1 + contar_nostalgicos_rec(A.hijoIzqdo(n),A) + contar_nostalgicos_rec(A.hijoDrcho(n),A);
		else return contar_nostalgicos_rec(A.hijoIzqdo(n),A) + contar_nostalgicos_rec(A.hijoDrcho(n),A);
	}
}

bool es_nostalgico(const typename Abin<T>::nodo& n, const Abin<T>& A)
{
	if(num_ancestros(n,A) > num_descendientes(n,A)) return true;
	else return false;
}

//SOLO PARA DESCENDIENTES
int num_descendientes(const typename Abin<T>::nodo& n, const Abin<T>& A)
{
	if(n == Abin<T>::NODO_NULO) return 0;
	
	else return 1 + num_descendientes(A.hijoDrcho(n),A) + num_descendientes(A.hijoIzqdo(n),A);
}

//SOLO PARA ASCENTROS
int num_ancestros(const typename Abin<T>::nodo& n, const Abin<T>& A)
{
	if(n == Abin<T>::NODO_NULO) return 0;
	
	else return 1 + num_ancestros(A.padre(n),A);
}




/*
//SOLO PARA DESCENDIENTES PROPIOS
int num_descendientes(const typename Abin<T>::nodo& n, const Abin<T>& A)
{
	if(n == Abin<T>::NODO_NULO) return 0;
	
	else
	{
		if(A.hijoDrcho(n) != Abin<T>::NODO_NULO && A.hijoIzqdo(n) != Abin<T>::NODO_NULO) 
			return 2 + num_descendientes(A.hijoDrcho(n),A) + num_descendientes(A.hijoIzqdo(n),A); 
		
		else if (A.hijoDrcho(n) != Abin<T>::NODO_NULO && A.hijoIzqdo(n) == Abin<T>::NODO_NULO)
			return 1 + num_descendientes(A.hijoDrcho(n),A);  
		
		else if (A.hijoDrcho(n) == Abin<T>::NODO_NULO && A.hijoIzqdo(n) != Abin<T>::NODO_NULO) 
			return 1 + num_descendientes(A.hijoIzqdo(n),A);	
		
		else return 0;
	} 
}
*/
