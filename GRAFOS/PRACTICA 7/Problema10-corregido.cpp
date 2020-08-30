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

tCoste min(tCoste a, tCoste b, tCoste c)
{
	return min(a,min(b,c));
}

Viaje Viaje_con_Taxi_v2(const GrafoP<tCoste>& Costes_Tren, const GrafoP<tCoste>& Costes_Bus, const GrafoP<tCoste>& Costes_Avion, 
							const vertice& origen , const vertice& destino, const tCoste& Coste_Taxi, const tCoste& Coste_Taxi_Avion)
{
	Viaje V;
	size_t N_ciudades = Costes_Tren.numVert();
	size_t N = Costes_Tren.numVert() * N_ciudades;
	GrafoP<tCoste> G(N);
	vector<tCoste> Coste_min_bus, Coste_min_tren, Coste_min_avion;
	vector<vertice> P_tren, P_bus, P_avion;
	tCoste min_tren, min_bus, min_avion;
	vertice destino_tren, destino_bus, destino_avion;
	vertice origen_tren,origen_bus,origen_avion;
	
	for(int i = 0; i <= N-1; i++)
	{
		for(int j = 0; j <= N-1; j++)
		{
			if(i < N/3 && j < N/3) 
				G[i][j] = Costes_Tren[i][j];		//Primer cuadrante
			
			else if(i >= N/3 && j >= N/3 && i < (N*2)/3 && j < (N*2)/2) 
				G[i][j] = Costes_Bus[i-N_ciudades][j-N_ciudades];		//Tercer cuadrante
				
			else if(i >= (N*2)/3 && j >= (N*2)/2) 
				G[i][j] = Costes_Avion[i-N_ciudades*2][j-N_ciudades*2];
				
			else if( (i == j + N_ciudades && i < (N*2)/3) || (j == i + N_ciudades && j < (N*2)/3))
				G[i][j] = Coste_Taxi;
			
			else if( j == i + N_ciudades || j == i + 2*N_ciudades || i == j + N_ciudades || i == j + 2*N_ciudades )
				G[i][j] = Coste_Taxi_Avion;
				
			else
				G[i][j] = GrafoP<tCoste>::INFINITO;
		}
	}	
	
	Coste_min_tren = Dijkstra(G,origen,P_tren);
	Coste_min_bus = Dijkstra(G, origen+N_ciudades ,P_bus);
	Coste_min_avion = Dijkstra(G, origen+N_ciudades*2, P_avion);
		
	destino_tren = destino;
	destino_bus = destino+N_ciudades;
	destino_avion = destino+2*N_ciudades;
	
	origen_tren = origen;
	origen_bus = origen + N_ciudades;
	origen_avion = origen + 2*N_ciudades;
		
	min_tren = min(Coste_min_tren[destino_tren],Coste_min_tren[destino_bus],Coste_min_tren[destino_avion]);
	min_bus = min(Coste_min_bus[destino_tren],Coste_min_bus[destino_bus],Coste_min_tren[destino_avion]);
	min_avion = min(Coste_min_avion[destino_tren], Coste_min_avion[destino_bus], Coste_min_avion[destino_avion]);
	
	V.Coste_Minimo = min(min_tren, min_bus, min_avion);
	
	if(V.Coste_Minimo == min_tren)
	{
		if(V.Coste_Minimo == Coste_min_tren[destino_tren])
		{
			V.Camino = camino<tCoste>(origen,destino_tren,P_tren);
		}
		else if(V.Coste_Minimo == Coste_min_tren[destino_bus])
		{
			V.Camino = camino<tCoste>(origen,destino_bus,P_tren);
		}
		else
		{
			V.Camino = camino<tCoste>(origen,destino_avion,P_tren);
		}		
	}
	
	else if(V.Coste_Minimo == min_bus)
	{
		if(V.Coste_Minimo == Coste_min_tren[destino_tren])
		{
			V.Camino = camino<tCoste>(origen_bus,destino_tren,P_tren);
		}
		else if(V.Coste_Minimo == Coste_min_tren[destino_bus])
		{
			V.Camino = camino<tCoste>(origen_bus,destino_bus,P_tren);
		}
		else
		{
			V.Camino = camino<tCoste>(origen_bus,destino_avion,P_tren);
		}
	}
	
	else if(V.Coste_Minimo == min_avion)
	{
		if(V.Coste_Minimo == Coste_min_avion[destino_tren])
		{
			V.Camino = camino<tCoste>(origen_avion,destino_tren,P_tren);
		}
		else if(V.Coste_Minimo == Coste_min_avion[destino_bus])
		{
			V.Camino = camino<tCoste>(origen_avion,destino_bus,P_tren);
		}
		else
		{
			V.Camino = camino<tCoste>(origen_avion,destino_avion,P_tren);
		}
	}	
	return V;
}
