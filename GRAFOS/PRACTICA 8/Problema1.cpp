#include <iostream>
#include <vector>
#include <cassert>
#include <math.h>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\particion.h"

using namespace std;
typedef double tCoste;
class Particion;

struct Ciudad //Coordenadas cartesianas(x,y)
{
	double x;
	double y;
};

Particion Distribucion_Tombuctu(const matriz<bool>& Tombuctu, const vector<Ciudad>& ciudades, int N_ciudades, matriz<tCoste>& M);
tCoste distancia(const Ciudad& ciudad_a, const Ciudad& ciudad_b);

int main()
{
	return 0;
}

tCoste distancia(const Ciudad& ciudad_a, const Ciudad& ciudad_b)
{
	tCoste a = ciudad_a.x - ciudad_b.x;
	tCoste b = ciudad_a.y - ciudad_b.y;
	
	return sqrt(pow(a,2) + pow(b,2));
}


Particion Distribucion_Tombuctu(const matriz<bool>& Tombuctu, const vector<Ciudad>& ciudades, int N_ciudades, matriz<tCoste>& M)
{
	Particion P(N_ciudades);
	matriz<typename GrafoP<tCoste>::vertice> P_vertices;
	GrafoP<tCoste> G(Tombuctu.dimension());
	int rep1, rep2;
	
	
	for(int i = 0; i <= Tombuctu.dimension()-1; i++)
	{
		for(int j = 0; j <= Tombuctu.dimension()-1; i++)
		{
			if(Tombuctu[i][j] && i != j){
				
				rep1 = P.encontrar(i);
				rep2 = P.encontrar(j);
				
				if(rep1 != rep2)
					P.unir(rep1, rep2);				
			}			
		}
	}
	
	
	for(int i = 0; i <= Tombuctu.dimension()-1; i++)
	{
		for(int j = 0; j <= Tombuctu.dimension()-1; i++)
		{
			if(Tombuctu[i][j])
				G[i][j] = distancia(ciudades[i],ciudades[j]);	
			
			else G[i][j] = GrafoP<tCoste>::INFINITO;	
		}
	}
	
	
	M = Floyd(G,P_vertices);
	
	return P;
	
}


