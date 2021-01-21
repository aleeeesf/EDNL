#include <iostream>
#include <vector>
#include <cassert>
#include <math.h>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\particion.h"

using namespace std;
typedef double tCoste;
using vertice = GrafoP<tCoste>::vertice;
class Particion;

struct Ciudad
{
	double x;
	double y;	
};

struct Distribucion
{
	Particion Islas;	//Distribucion en islas de las ciudades de Tombuctú
	matriz<tCoste> M;	//Coste mínimo de viajar entre cualesquiera dos ciudades de una misma isla del archipielago	
};

tCoste Distacia(const Ciudad& ciudad_a, const Ciudad& ciudad_b)
{
	double a = ciudad_a.x - ciudad_b.x;
	double b = ciudad_a.y - ciudad_b.y;
		
	return sqrt(pow(a,2)+pow(b,2));
}


Distribucion Tombuctu(const matriz<bool>& Tombuctu, const vector<Ciudad>& Ciudades, int N_ciudades)
{
	Distribucion D;
	Particion P(N_ciudades);
	int res1, res2;
	
	for(int i = 0; i <= N_ciudades-1; i++)
	{
		res1 = P.encontrar(i);
		
		for(int j = 0; j <= N_ciudades-1; i++)
		{
			if(Tombuctu[i][j] && i != j)
			{
				res2 = P.encontrar(j);
				
				if(res1 != res2)
				{
					P.unir(res1,res2);
				}
			}
		}
	}
	
	GrafoP<tCoste> F(N_ciudades);
	matriz<vertice> P;
	
	for(int i = 0; i <= N_ciudades-2; i++)
	{
		for(int j = i+1; j <= N_ciudades-1; j++)
		{
			if(Tombuctu[i][j])
			{
				F[i][j] = F[i][j] = Distancia(Ciudades[i],Ciudades[j]);
			}
		}
	}
	
	D.M = Floyd(F,P);
	D.Islas = P;
	
	return D;	
}
