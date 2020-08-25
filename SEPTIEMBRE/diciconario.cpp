#include <iostream>
#include <vector>
#include "abb.h"
#include "abin.h"
#include "abb_E-S.h"
#include "diccionario.h"

using namespace std;

typedef char tElto;
const tElto fin = '#';

void Llenar_vector(vector<int>& elementos, const Abb<int>& A);
void Llenar_arbol_equilibrado(int inicio,int fin, const vector<int>& elementos, Abb<int>& A);
void Equilibrar_arbol(Abb<int>& A);

int main(){

	Diccionario d;
	d.insertar("un", "saludo");
	d.insertar("alejandro", "serfer");
	d.insertar("lorena", "serfer");
	d.insertar("nohacer", "caso");	
/*
	d.eliminar("un", "saludo");
	d.eliminar("alejandro", "serfer"); 
*/

	cout<<d.en_espanol("serfer")<<endl;
	d.listar();
	return 0;
}
