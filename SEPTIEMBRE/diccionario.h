#ifndef DICCIONARIO_H
#define DICCIONARIO_H

#include <iostream>
#include <vector>
#include <string>
#include "abb.h"

using namespace std;

struct traduccion
{
	string espanol;
	string zuelandes;
	traduccion(const string& esp, const string& zueland):espanol(esp),
					zuelandes(zueland){};	
};

class Diccionario
{
	public:
		
		Diccionario();
		void insertar(const string& esp, const string& zueland) noexcept;
		void eliminar(const string& esp, const string& zueland) noexcept;
		string en_espanol(const string& zueland) const noexcept;
		void listar() const noexcept;
			
		
	private:
		Abb<traduccion> A;
		void mostrar(const Abb<traduccion>& B) const noexcept;	
		string buscar_espanol(const Abb<traduccion>& A, const string& zueland) const noexcept;
};


bool operator < (const traduccion& a, const traduccion& b)
{
	return (a.espanol < b.espanol) ? 1: 0;
}

bool operator > (const traduccion& a, const traduccion& b)
{
	return (a.espanol > b.espanol) ? 1: 0;
}

Diccionario::Diccionario(){}

void Diccionario::insertar(const string& esp, const string& zueland) noexcept
{
	A.insertar(traduccion(esp,zueland));
}

void Diccionario::eliminar(const string& esp, const string& zueland) noexcept
{
	A.eliminar(traduccion(esp,zueland));
}

void Diccionario::listar() const noexcept
{
	this->mostrar(A);
}

void Diccionario::mostrar(const Abb<traduccion>& B) const noexcept
{
	if(!B.vacio())
	{
		mostrar(B.izqdo());
		cout<<"Espanish: "<<B.elemento().espanol<<" / Zuelandes: "<<B.elemento().zuelandes<<endl;
		mostrar(B.drcho());
	}
}

string Diccionario::en_espanol(const string& zueland) const noexcept
{
	return buscar_espanol(A,zueland);
}

string Diccionario::buscar_espanol(const Abb<traduccion>& B, const string& zueland) const noexcept
{
	string encontrado = "no encotrado";
	if(!B.vacio())
	{
		if(B.elemento().zuelandes == zueland) return B.elemento().espanol;
		
		else
		{
			if(!B.izqdo().vacio())
			 	encontrado = buscar_espanol(B.izqdo(),zueland);	
			else 
				encontrado = buscar_espanol(B.drcho(),zueland);
			return encontrado;	
		}
	}
	
	else return encontrado;
	
}
#endif
