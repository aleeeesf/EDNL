#include "abb.h"
#include "Agenda.h"
#include <iostream>

template<typename T>
void LeerAbb(Abb<T>& A);

template<typename T>
void MostrarAbb(const Abb<T>& A);


template<typename T>
void LeerAbb(Abb<T>& A){

	int elto;
	std::cout<<"Lectura del arbol ABB (fin: '-1')"<<std::endl;
	
	do{
		std::cout<<"Introduce el elemento a insertar: ";
		std::cin>>elto;
		if(elto != -1) A.insertar(elto);
	}while(elto != -1);

}

/*
void Leer(Agenda& A)
{
	LeerAbb(A.Lista);
}

void LeerAbb(Abb<contacto>& A){

	int elto;
	string nombre;
	std::cout<<"Lectura del arbol ABB (fin: 'parar')"<<std::endl;
	
	do{
		std::cout<<"Introduce el nombre a insertar: ";
		cin>>nombre;
		std::cin>>elto;
		if(nombre != "parar") A.insertar(contacto(nombre,elto));
	}while(elto != -1);

}*/


template<typename T>
void MostrarAbb(const Abb<T>& A){

	std::cout<<A.elemento().Nombre<<" "<<A.elemento().telefono<<std::endl;
	if(!A.izqdo().vacio())
	{
		std::cout<<"Hijo izq de "<<A.elemento().Nombre<<A.elemento().telefono<<" : "<<std::endl;
		MostrarAbb(A.izqdo());
	}
	if(!A.drcho().vacio())
	{
		std::cout<<"Hijo drcho de "<<A.elemento().Nombre<<A.elemento().telefono<<" : "<<std::endl;
		MostrarAbb(A.drcho());
		
	}
}

/*
template<typename T>
friend void MostrarApo(const Apo<T>& A){

	std::cout<<A.cima()<<std::endl;
	if(!A.hIzq().vacio())
	{
		std::cout<<"Hijo izq de "<<A.cima()<<" : ";
		MostrarAbb(A.hIzq());
	}
	if(!A.hDer().vacio())
	{
		std::cout<<"Hijo der de "<<A.cima()<<" : ";
		MostrarAbb(A.hDer());
		
	}
}*/
