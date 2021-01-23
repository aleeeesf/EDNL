#include <iostream>
#include <vector>
#include "abb.h"

using namespace std;

struct contacto
{
	string Nombre;
	int telefono;
	contacto(const string& n, int t):Nombre(n),telefono(t){}
};

bool operator < (const contacto& a, const contacto& b)
{
	return a.telefono < b.telefono;
}

bool operator == (const contacto& a, const contacto& b)
{
	return a.telefono == b.telefono;
}

class Agenda
{
	private:
		
	
	public:
		void insertar(const string& Nombre, int telefono);
		void eliminar(int telefono);
		Abb<contacto> Lista;
};

void Agenda::insertar(const string& Nombre, int telefono)
{
	Lista.insertar(contacto(Nombre,telefono));
}

void Agenda::eliminar(int telefono)
{
	Lista.eliminar(contacto("",telefono));
}
