#include <iostream>
#include "diccionario.h"

using namespace std;

int main(){
	
	Diccionario a;
	a.insertar("hola ","opina bbsita");
	a.insertar("jaja ", "lorena apestas");
	a.insertar("muito", " obrigado");
	a.insertar("ales ", "serranop");
	a.insertar("abdon ", "pesao");

	string aux;
	aux = a.en_espanol("serranop");
	cout<<"traducido: "<<aux<<endl;
	a.listar();
}
