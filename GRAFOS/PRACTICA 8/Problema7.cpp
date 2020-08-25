#include <iostream>
#include <vector>
#include <cassert>
#include <cmath>
#include <limits>
#include <float.h>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\particion.h>

using namespace std;
typedef double tCoste;
typedef double Coordenada;
using vertice = GrafoP<tCoste>::vertice;

enum Isla{FOBOS, DEIMOS};

struct Ciudad
{
	Coordenada x;
	Coordenada y;
	Isla i;
	
};

struct Puente
{
	vertice en_Fobos;
	vertice en_Deimos;
	double distancia;
};

double Distancia(const Ciudad& c1, const Ciudad& c2)
{
	double a = abs(c1.x - c2.x);
	double b = abs(c1.y - c2.y);	
	return sqrt(pow(a,2)+pow(b,2));
}

Puente Determinar_Puentes(const vector<Ciudad>& Fobos, const vector<Ciudad>& Deimos,
							const vector<bool>& Costeras_Fobos, const vector<bool>& Costeras_Deimos)
{
	Puente P;
	//Nos quedamos con la menor distancia para construir el puente
	double dist;
	double distancia_minima = DBL_MAX;
	vertice res1, res2;
	for(int i = 0; i <= Costeras_Deimos.size()-1; i++)
	{
		if(Costeras_Deimos[i])
		{
			for(int j = 0; j <= Costeras_Fobos.size()-1; i++)
			{
				if(Costeras_Fobos[j])
				{
					dist = Distancia(Deimos[i], Fobos[j]);
				
					if(dist < distancia_minima)
					{
						P.distancia = dist;
						P.en_Fobos = i;
						P.en_Deimos = Fobos.size() + j;
					}					
				}	
			}		
		}
	}
	
	return P;
}

GrafoP<tCoste> Distancia_Ciudades(const vector<Ciudad>& isla)
{
	GrafoP<tCoste> G(isla.size());
	
	for(int i = 0; i <= isla.size()-1; i++)
	{
		for(int j = 0; j <= isla.size()-1; i++)
		{
			if(i != j)
				G[i][j] = G[j][i] = Distancia(isla[i], isla[j]);
		}
	}
	return G;
}

GrafoP<tCoste> Costes_Reconstruir_Grecoland(const GrafoP<tCoste>& Fobos, const GrafoP<tCoste>& Deimos, const Puente& P,
											int n_ciudades)
{
	//Ahora tenemos que juntar todos los costes en uno solo
	GrafoP<tCoste> G(n_ciudades);
	int n_ciudades_fobos = Fobos.numVert();
	for(int i = 0; i < n_ciudades-1; i++)
	{
		for(int j = 0; j < n_ciudades-1; j++)
		{
			if(i < n_ciudades-1/2 && j < n_ciudades-1/2)	//Primer Cuadrante -> Fobos
			{
				G[i][j] = Fobos[i][j];
			}	
			else if(i >= n_ciudades-1/2 && j >= n_ciudades-1/2)	//Tercer Cuadrante	-> Deimos
			{
				G[i][j] = Deimos[i-n_ciudades_fobos][j-n_ciudades_fobos];
			}	
			else if(i >= n_ciudades-1/2 && j < n_ciudades-1/2)	//Segundo Cuadrante -> Puente
			{
				if(i == P.en_Fobos && j == P.en_Deimos)	//Existe puente entre las dos ciudades
					G[i][j] = P.distancia;
				else 
					G[i][j] = GrafoP<tCoste>::INFINITO;
			}
			else											//Cuarto cuadrante -> Puente
			{
				if(i == P.en_Fobos && j == P.en_Deimos)		//Existe puente entre las dos ciudades
					G[i][j] = P.distancia;
				else 
					G[i][j] = GrafoP<tCoste>::INFINITO;
			}
		}
	}
	
	return G;
}

tCoste Grecoland(const vector<Ciudad>& Fobos, const vector<Ciudad>& Deimos, const vector<bool>& Costeras_Fobos, 
							const vector<bool>& Costeras_Deimos, const Ciudad& origen, const Ciudad& destino)
{
	int n_ciudades = Fobos.size() + Deimos.size();
	int n_ciudades_fobos = Fobos.size();
	GrafoP<tCoste> F(Fobos.size());
	GrafoP<tCoste> D(Deimos.size());
	GrafoP<tCoste> G(n_ciudades);
	vector<tCoste> Costes;
	vector<vertice> P_vertices;
	
	//Distancias de las ciudades de la isla de Fobos
	F = Distancia_Ciudades(Fobos);	
	//Distancias de las ciudades de la isla de Deimos
	D = Distancia_Ciudades(Deimos);
	
	//Aplicamos Kruskal para determinar el camino mas corto para unir las carreteras
	F = Kruskall(F);
	D = Kruskall(D);
	
	//Determinamos el puente que una dos ciudades con el menor coste
	Puente P = Determinar_Puentes(Fobos, Deimos, Costeras_Fobos, Costeras_Deimos);
	
	//Guardamos los costes de todas las ciudades y puentes
	G = Costes_Reconstruir_Grecoland(F, D, P, n_ciudades);

	if(origen.i == FOBOS)
	{
		Costes = Dijkstra(G,origen,P_vertices);
		
		if(destino.i == DEIMOS)
			return Costes[destino+n_ciudades_fobos-1];
		else 
			return Costes[destino];
	}

	else 
	{
		Costes = Dijkstra(G,origen+n_ciudades_fobos-1,P_vertices);
	
		if(destino.i == DEIMOS)
			return Costes[destino+n_ciudades_fobos-1];
		else 
			return Costes[destino];
	}
		

	
}							

