#include <iostream>
#include <vector>
#include <cassert>
#include <math.h>
#include <limits>
#include <float.h>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\particion.h"

using namespace std;
typedef double tCoste;
typedef double Coordenada;
typedef int Lineas_aereas;
using vertice = GrafoP<tCoste>::vertice;

struct Ciudad
{
	Coordenada x;
	Coordenada y;
};

struct Puente
{
	vertice Ciudad_Fobos;
	vertice Ciudad_Deimos;
	tCoste Coste;
};


tCoste Distancia(const Ciudad& ciudad_a, const Ciudad& ciudad_b)
{
	tCoste a = ciudad_a.x - ciudad_b.x;
	tCoste b = ciudad_a.y - ciudad_b.y;
	
	return sqrt(pow(a,2) - pow(b,2));
}

GrafoP<tCoste> Determinar_Distancias(const vector<Ciudad>& Ciudades)
{
	size_t N = Ciudades.size();
	GrafoP<tCoste> G(N);
	
	for(int i = 0; i <= N-2; i++)
	{
		for(int j = i+1; j <= N-1; j++)
		{
			G[i][j] = G[j][i] = Distancia(Ciudades[i],Ciudades[j]);
		}
	}
}

Puente Determinar_Puente(const vector<Ciudad>& Ciudades_Fobos, const vector<Ciudad>& Ciudades_Deimos, 
							const vector<bool> Costeras_Fobos, const vector<bool> Costeras_Deimos)
{
	Puente P;
	size_t n_Fobos = Ciudades_Fobos.size();
	size_t n_Deimos = Ciudades_Deimos.size();
	tCoste Coste_Minimo = DBL_MAX, dist;
	
	for(int i = 0; i <= n_Fobos-1; i++)
	{
		for(int j = 0; j <= n_Deimos-1; j++)
		{
			if(Costeras_Fobos[i] && Costeras_Deimos[j])
			{
				dist = Distancia(Ciudades_Fobos[i], Ciudades_Deimos[j]);
				
				if(dist < Coste_Minimo)
				{
					Coste_Minimo = dist;
					P.Ciudad_Fobos = i;
					P.Ciudad_Deimos = j+n_Fobos;
					P.Coste = Coste_Minimo;
				}
			}
		}
	}
}

GrafoP<tCoste> Costes_Archipielago(const GrafoP<tCoste>& Fobos, const GrafoP<tCoste>& Deimos, const Puente& P)
{
	size_t N = Fobos.numVert() + Deimos.numVert();
	size_t N_Fobos = Fobos.numVert();
	size_t N_Deimos = Deimos.numVert();
	
	GrafoP<tCoste> G(N);
	
	for(int i = 0; i <= N-1; i++)
	{
		for(int j = 0; j <= N-1; j++)
		{
			if(i < N_Fobos && j < N_Fobos) 
				G[i][j] = Fobos[i][j];
			
			else if(i >= N_Fobos && j >= N_Fobos)
				G[i][j] = Deimos[i-N_Fobos][j-N_Fobos];
				
			else G[i][j] = GrafoP<tCoste>::INFINITO;
		}
	}
	
	G[P.Ciudad_Deimos][P.Ciudad_Fobos] = G[P.Ciudad_Fobos][P.Ciudad_Deimos] = P.Coste;
	
	return G;
}

tCoste Grecoland(const vector<Ciudad>& Ciudades_Fobos, const vector<Ciudad>& Ciudades_Deimos, const vector<bool>& Costeras_Fobos, 
			const vector<bool>& Costeras_Deimos, const vertice& origen, const vertice& destino)
{
	size_t N_ciudades_Fobos = Ciudades_Fobos.size();
	size_t N_ciudades_Deimos = Ciudades_Deimos.size();
	size_t N = N_ciudades_Fobos + N_ciudades_Deimos;
	
	GrafoP<tCoste> Fobos(N_ciudades_Fobos);
	GrafoP<tCoste> Deimos(N_ciudades_Deimos);
	GrafoP<tCoste> Grecoland(N);
	vector<tCoste> Costes_Minimos;
	vector<vertice> P_vertices;
	Puente P;
	
	Fobos = Determinar_Distancias(Ciudades_Fobos);
	Deimos = Determinar_Distancias(Ciudades_Deimos);
	
	Fobos = Kruskall(Fobos);
	Deimos = Kruskall(Deimos);
	
	P = Determinar_Puente(Ciudades_Fobos, Ciudades_Deimos, Costeras_Fobos, Costeras_Deimos);	
	
	Grecoland = Costes_Archipielago(Fobos, Deimos, P);
	
	Costes_Minimos = Dijkstra(Grecoland, origen, P_vertices);
	
	return Costes_Minimos[destino];
}
