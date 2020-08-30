#include <iostream>
#include <vector>
#include <cassert>
#include <limits>
#include <float.h>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>

using namespace std;
typedef double tCoste;
using vertice = GrafoP<tCoste>::vertice;

enum Isla{Fobos, Deimos};

struct Ciudad
{
	vertice Vertice_Ciudad;	//Posicion que ocupa en el grafo
	Isla isla;	//Isla a la que pertecenece
};

struct Puente
{
	Ciudad Ciudad1;
	Ciudad Ciudad2;
};

tCoste Coste_Total(const matriz<tCoste>& G, const vertice& Costera);

tCoste suma3(tCoste a, tCoste b, tCoste c)
{
	return suma(a, suma(b,c));
}

vertice Ciudad_Candidata(const GrafoP<tCoste>& G, const vector<bool>& Costeras)
{	
	size_t N = G.numVert();
	matriz<tCoste> Costes(N);
	matriz<vertice> P;
	vertice Costera_min;
	tCoste Coste_min, minimo;
	minimo = DBL_MAX;
	
	Costes = Floyd(G,P);
	
	for(int i = 0; i <= N-1; i++)
	{
		if(Costeras[i])
		{
			Coste_min = Coste_Total(Costes, i);
			
			if(Coste_min < minimo)
			{
				minimo = Coste_min;
				Costera_min = i;
			}
		}
	}
	
	return Costera_min;
}

tCoste Coste_Total(const matriz<tCoste>& G, const vertice& Costera)
{
	size_t N = G.dimension();
	tCoste Coste(0);
	
	for(int i = 0; i <= N-1; i++)
	{
		Coste = suma3(G[Costera][i],G[i][Costera],Coste);
	}
	
	return Coste;
}

Puente Grecoland(const GrafoP<tCoste>& Costes_Fobos, const GrafoP<tCoste>& Costes_Deimos, const vector<bool>& Costeras_Fobos, 
		const vector<bool>& Costeras_Deimos)
{
	//Hay que buscar la ciudad costera que más minimice los costes de viajar entre TODAS las ciudades
	Puente P;
	P.Ciudad1.Vertice_Ciudad = Ciudad_Candidata(Costes_Fobos,Costeras_Fobos);
	P.Ciudad1.isla = Fobos;
	P.Ciudad1.Vertice_Ciudad = Ciudad_Candidata(Costes_Deimos,Costeras_Deimos);
	P.Ciudad1.isla = Deimos;
	
	return P;
	
}


