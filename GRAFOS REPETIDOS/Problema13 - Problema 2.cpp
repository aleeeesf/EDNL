#include <iostream>
#include <vector>
#include <cassert>
#include <math.h>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\particion.h"

using namespace std;
typedef double tCoste;
typedef int Lineas_aereas;
using vertice = GrafoP<tCoste>::vertice;
class Particion;

struct Ciudad
{
	double x;
	double y;	
};

tCoste Distacia(const Ciudad& ciudad_a, const Ciudad& ciudad_b)
{
	double a = ciudad_a.x - ciudad_b.x;
	double b = ciudad_a.y - ciudad_b.y;
		
	return sqrt(pow(a,2)+pow(b,2));
}

Particion Distribucion_Ciudades(const matriz<bool>& M)
{
	int res1, res2;
	size_t N_ciudades = M.dimension();
	
	for(int i = 0; i <= N_ciudades-1; i++)
	{
		res1 = P.encontrar(i);
		
		for(int j = 0; j <= N_ciudades-1; i++)
		{
			if(M[i][j] && i != j)
			{
				res2 = P.encontrar(j);
				
				if(res1 != res2)
				{
					P.unir(res1,res2);
				}
			}
		}
	}
	
	return P;
}

int Determinar_Islas(const Particion& P)
{
	
	
	
}

Lineas_aereas Tombuctu2(const matriz<bool>& Tombuctu, const vector<Ciudad>& Ciudades, int N_ciudades)
{
	Distribucion D;
	Particion Islas(N_ciudades);
	int res1, res2;
	
	Distribucion_Islas = Distribucion_Ciudades(Tombuctu);
	

	return D;	
}
