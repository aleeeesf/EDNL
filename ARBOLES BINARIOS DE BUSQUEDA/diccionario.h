#include <iostream>
#include <cstring>
#include "abb.h"

using namespace std;

struct traduccion{
	string espanol;
	string zuelandes;
	traduccion(const string& a, const string& b):espanol(a), zuelandes(b){}
};

class Diccionario
{
	public:
		Diccionario();
		void insertar(const string&,const string&);
		void eliminar(const string&,const string&);
		string en_espanol(const string& );
		void listar();
		
	private:
		Abb<traduccion> A;
		void mostrar(const Abb<traduccion>&);
		Abb<traduccion> buscar_elemento(Abb<traduccion>, string);
};

bool operator <(const traduccion& a, const traduccion& b)
{
	if(a.espanol < b.espanol) return true;
	else return false;
}

Diccionario::Diccionario(){}

void Diccionario::insertar(const string& esp, const string& z)
{
	A.insertar(traduccion(esp,z));
}

void Diccionario::eliminar(const string& esp, const string& z)
{
	A.eliminar(traduccion(esp,z));
}

string Diccionario::en_espanol(const string& z)
{
	Abb<traduccion> aux = buscar_elemento(A,z);
	
	if(aux.vacio()) return "no encontrado";
	else return aux.elemento().espanol;
}

Abb<traduccion> Diccionario::buscar_elemento(Abb<traduccion> B, string z)
{
	Abb<traduccion> aux;
	if(!B.vacio()){
		
		if(B.elemento().zuelandes == z) return B;
		
		else
		{
			aux = buscar_elemento(B.izqdo(),z);
			if(aux.vacio())
			{
				aux = buscar_elemento(B.drcho(),z);
			}
			
			return aux;
			
		}
	}
	else return aux;
}

void Diccionario::listar()
{
	mostrar(A);
}

void Diccionario::mostrar(const Abb<traduccion>& B)
{	
	if(!B.izqdo().vacio()){
		mostrar(B.izqdo());
	}
	
	cout<<"Palabra en espanol: "<<B.elemento().espanol<<" Palabra en zuelandes: "<<B.elemento().zuelandes<<endl;
		
	if(!B.drcho().vacio()){
		mostrar(B.drcho());
	}
}
