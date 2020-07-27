#include <iostream>
#include <vector>
#include "abb.h"
#include "abin.h"
#include "abb_E-S.h"

using namespace std;

typedef char tElto;
const tElto fin = '#';
int mayor_elemento(const Abb<int>& A);
int menor_elemento(const Abb<int>& A);
int infimo(int x, const Abb<int>& A);
int supremo(int x, const Abb<int>& A);


int main(){

	Abb<int> A;
	LeerAbb(A);
	MostrarAbb(A);
	
	vector<int> v;
	
	cout<<"infimo de 10 es: "<<infimo(10,A)<<endl;
	cout<<"supremo de 0 es: "<<supremo(0,A)<<endl;
	//MostrarAbb(A);

	return 0;
}

int infimo(int x, const Abb<int>& A)
{
	int mayor = mayor_elemento(A);
	
	if( mayor <= x ) return mayor;
	else return menor_elemento(A);
}

int supremo(int x, const Abb<int>& A)
{
	int menor = menor_elemento(A);
	
	if( menor >= x) return menor;
	else return mayor_elemento(A);
	
}

int mayor_elemento(const Abb<int>& A)
{
	int mayor;
	
	if(!A.vacio()){
		
		if(A.drcho().vacio()) return A.elemento();
		
		else{
					
			mayor = mayor_elemento(A.drcho()); 
			return mayor;			
		} 
	}

	else return mayor;
}

int menor_elemento(const Abb<int>& A)
{
	int menor;
	
	if(!A.vacio()){
		
		if(A.izqdo().vacio()) return A.elemento();
		
		else{
					
			menor = mayor_elemento(A.izqdo()); 
			return menor;			
		} 
	}

	else return menor;
}
