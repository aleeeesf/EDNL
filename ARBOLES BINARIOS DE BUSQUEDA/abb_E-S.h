#include "abb.h"
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


template<typename T>
void MostrarAbb(const Abb<T>& A){

	std::cout<<A.elemento()<<std::endl;
	if(!A.izqdo().vacio())
	{
		std::cout<<"Hijo izq de "<<A.elemento()<<" : ";
		MostrarAbb(A.izqdo());
	}
	if(!A.drcho().vacio())
	{
		std::cout<<"Hijo der de "<<A.elemento()<<" : ";
		MostrarAbb(A.drcho());
		
	}
}
