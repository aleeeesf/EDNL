#include <iostream>
#include <vector>
#include <cassert>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>

using namespace std;
typedef double tCoste;
using vertice = GrafoP<tCoste>::vertice;

struct Viaje
{
	tCoste Coste_Minimo;
	typename GrafoP<vertice>::tCamino Camino;
};

Viaje Viaje_con_Taxi(const GrafoP<tCoste>& Costes_Tren, const GrafoP<tCoste>& Costes_Bus, const vertice& origen , const vertice& destino, const tCoste& Coste_Taxi)
{
	Viaje V;
	size_t N = Costes_Tren.numVert() * 2;
	size_t N_ciudades = Costes_Tren.numVert();
	GrafoP<tCoste> G(N);
	vector<tCoste> Coste_min_bus, Coste_min_tren;
	vector<vertice> P_tren, P_bus;
	tCoste min1, min2;
	
	for(int i = 0; i <= N-1; i++)
	{
		for(int j = 0; j <= N-1; j++)
		{
			if(i < N/2 && j < N/2) G[i][j] = Costes_Tren[i][j];		//Primer cuadrante
			else if(i >= N/2 && j >= N/2) G[i][j] = Costes_Bus[i-N/2][j-N/2];		//Tercer cuadrante
			else if(i == j + N_ciudades || j == i + N_ciudades) G[i][j] = Coste_Taxi;
			else G[i][j] = GrafoP<tCoste>::INFINITO;
		}
	}	
	 Coste_min_tren = Dijkstra(G,origen,P_tren);
	 Coste_min_bus = Dijkstra(G, origen+N_ciudades ,P_bus);
	
	
	min1 = min(Coste_min_tren[destino],Coste_min_tren[destino+N_ciudades]);
	min2 = min(Coste_min_bus[destino],Coste_min_bus[destino+N_ciudades]);

	V.Coste_Minimo = min(min1, min2);
	
	if(V.Coste_Minimo == Coste_min_tren[destino])
	{
		V.Camino = camino<tCoste>(origen,destino,P_tren);
	}
	
	else if(V.Coste_Minimo == Coste_min_tren[destino+N_ciudades])
	{
		V.Camino = camino<tCoste>(origen,destino+N_ciudades,P_tren);
	}
	
	else if(V.Coste_Minimo == Coste_min_bus[destino])
	{
		V.Camino = camino<tCoste>(origen+N_ciudades,destino,P_bus);
	}
	
	else
	{
		V.Camino = camino<tCoste>(origen+N_ciudades,destino+N_ciudades,P_bus);
	}	
	
	return V;
}
