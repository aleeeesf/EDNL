#include <iostream>
#include <vector>
#include <limits>
#include <cfloat>
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h"

using namespace std;
typedef double tCoste;
using vertice = GrafoP<tCoste>::vertice;

struct Puente
{
	vertice ciudad1;
	vertice ciudad2;
};

int main()
{
	return 0;
}

tCoste suma3(tCoste a, tCoste b, tCoste c)
{
	return suma(a, suma(b,c));
}

Puente Grecoland(const GrafoP<tCoste>& Fobos, const GrafoP<tCoste>& Deimos, const vector<bool>& costeras_fobos, const vector<bool>& costeras_deimos)
{
	size_t N_Fobos = Fobos.numVert();
	size_t N_Deimos = Deimos.numVert();
	size_t N = N_Fobos + N_Deimos;
	
	matriz<tCoste> min_Fobos(N_Fobos), min_Deimos(N_Deimos);
	matriz<vertice> R(N_Fobos), Q(N_Deimos);
	
	tCoste costes_ciudades, min_coste_total = DBL_MAX;
	
	vertice candidata_fobos, candidata_deimos;
	
	Puente P;
	
	min_Fobos = Floyd(Fobos,R);
	min_Deimos = Floyd(Deimos,Q);
	
	for(int i = 0; i < N_Fobos; i++)
	{
		if(costeras_fobos[i])
		{
			costes_ciudades = 0;
			
			for(int j = 0; j < N_Fobos; j++)
			{
				suma3(costes_ciudades, Fobos[i][j], Fobos[j][i]);
			}
			
			if(costes_ciudades < min_coste_total)
			{
				min_coste_total = costes_ciudades;
				P.ciudad1 = i;
			}
		}
	}
	
	min_coste_total = DBL_MAX;
	costes_ciudades = 0;
	
	for(int i = 0; i < N_Deimos; i++)
	{
		if(costeras_deimos[i])
		{
			costes_ciudades = 0;
			
			for(int j = 0; j < N_Fobos; j++)
			{
				suma3(costes_ciudades, Deimos[i][j], Deimos[j][i]);
			}
			
			if(costes_ciudades < min_coste_total)
			{
				min_coste_total = costes_ciudades;
				P.ciudad2 = i;
			}
		}
	}	
	
	return P;	
}
