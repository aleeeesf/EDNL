#include <iostream>
#include <vector>
#include "abb.h"
#include "abin.h"
#include "abb_E-S.h"

using namespace std;

typedef char tElto;
const tElto fin = '#';

void Llenar_vector(vector<int>& elementos, const Abb<int>& A);
void Llenar_arbol_equilibrado(int inicio,int fin, const vector<int>& elementos, Abb<int>& A);
void Equilibrar_arbol(Abb<int>& A);

int main(){

	Abb<int> A;
	LeerAbb(A);
	MostrarAbb(A);
	
	vector<int> v;
	Equilibrar_arbol(A);
	MostrarAbb(A);

	return 0;

}

