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
	float x, y;
};

struct Distribucion
{
	Particion Islas;
	matriz<tCoste> Costes;
};

float distancia(const Ciudad& a, const Ciudad& b)
{
	float x = abs(a.x - b.x);
	float y = abs(a.y - b.y);
	
	return sqrt(pow(x,2)+pow(y,2));	
}



Tombuctu(const vector<Ciudad>& Ciudades, const matriz<bool>& Carretera)
{
	size_t N = Carretera.numVert();
	Particion P(N);
	Distribucion D;
	
	int res1, res2;
	
	for(int i = 0; i < N; i++)
	{
		res1 = P.encontrar(i)
		for(int j = 0; j < N; j++)
		{
			if(Carretera[i][j])
			{
				res2 = P.encontrar(j);
				
				if(res1 != res2)
				{
					P.unir(i,j);
				}				
			}
		}
	}
	
	for(int i = 0; i < N; i++)
	{
		for(int j = 0; j < N; j++)
		{
			if(Carretera[i][j])
			{
				M[i][j] = distancia(Ciudad[i],Ciudad[j]);
			}
		}
	}
	
	
	
	D.Islas = P;
	D.M = Floyd(M,Q);
	
	
	return D;	
}
