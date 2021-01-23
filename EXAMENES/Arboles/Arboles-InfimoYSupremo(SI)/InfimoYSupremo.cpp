#include <iostream>
#include <vector>
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\ARBOLES BINARIOS\ARBOLES BINARIOS DE BUSQUEDA\abb.h"
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\ARBOLES BINARIOS\ARBOLES BINARIOS DE BUSQUEDA\abb_E-S.h"

using namespace std;
int infimo(int x, const Abb<int>& A);
int infimo_rec(const Abb<int>& A, int x, int menor);
int supremo(int x, const Abb<int>& A);
int supremo_rec(const Abb<int>& A, int x, int mayor);
int mayor_arbol(const Abb<int>& A, int);
int menor_arbol(const Abb<int>& A, int);



int main()
{

	Abb<int> A;
	LeerAbb(A);
	MostrarAbb(A);
	
	vector<int> v;
	

	cout<<"infimo de 5 es: "<<infimo(5,A)<<endl;
	cout<<"supremo de 13 es: "<<supremo(13,A)<<endl;
	//MostrarAbb(A);

	return 0;
}

int infimo(int x, const Abb<int>& A)
{
	int inf;
	inf = infimo_rec(A,x,-1);
	
	if(inf == -1) return menor_arbol(A,0);
	
}

int infimo_rec(const Abb<int>& A, int x, int menor)
{
	if(!A.vacio())
	{
		if(A.elemento() == x)
		{
			return A.elemento();
		}
		else if(A.elemento() < x)
		{
			menor = A.elemento();
			return infimo_rec(A.drcho(),x,menor);
		}
		else
		{			
			return infimo_rec(A.izqdo(),x,menor);
		}
	}
	
	else return menor;

}

int supremo(int x, const Abb<int>& A)
{
	int sup;
	
	sup = supremo_rec(A,x,-1);

	if(sup == -1) return mayor_arbol(A,0);
}

int supremo_rec(const Abb<int>& A, int x, int mayor)
{
	if(!A.vacio())
	{
		if(A.elemento() == x)
		{
			return A.elemento();
		}
		else if(A.elemento() > x)
		{
			mayor = A.elemento();
			return supremo_rec(A.izqdo(),x,mayor);
		}
		else
		{
			return supremo_rec(A.drcho(),x,mayor);
		}
	}
	
	else return mayor;
}

int mayor_arbol(const Abb<int>& A, int mayor)
{
	if(!A.vacio())
	{
		return mayor_arbol(A.drcho(), A.elemento());
	}
	
	else return mayor;	
}

int menor_arbol(const Abb<int>& A, int menor)
{
	if(!A.vacio())
	{
		return menor_arbol(A.izqdo(), A.elemento());
	}
	
	else return menor;	
}





