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
	imprimirAbin(A);
	
	cout<<" "<<<<endl;
	return 0;
}
