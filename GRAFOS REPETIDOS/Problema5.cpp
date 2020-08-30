#include <iostream>
#include <vector>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>

using namespace std;
typedef double tCoste;
using vertice = GrafoP<tCoste>::vertice;

enum Transporte{Carretera, Bus, Tren};

vector<tCoste> Viajero_Alergico(const GrafoP<tCoste>& Coste_Carretera, const GrafoP<tCoste>& Coste_Bus, const GrafoP<tCoste>& Coste_Tren, 
								int Dinero_Total, const vertice& origen, const Transporte& Alergico)
{
	vector<tCoste> 	Costes_min;
	vector<vertice> P;
	vector<bool> Ciudades_aptas;
	size_t N = Coste_Carretera.numVert();
	GrafoP<tCoste> G(N);	
	
	if(Alergico == Carretera)
	{
		for(int i = 0; i <= N-1; i++)
		{
			for(int j = 0; j <= N-1; j++)
			{
				G[i][j] = min(Coste_Bus[i][j],Coste_Tren[i][j]);
			}
		}
	}
	else if(Alergico == Bus)
	{
		for(int i = 0; i <= N-1; i++)
		{
			for(int j = 0; j <= N-1; j++)
			{
				G[i][j] = min(Coste_Carretera[i][j],Coste_Tren[i][j]);
			}
		}
	}
	else
	{
		for(int i = 0; i <= N-1; i++)
		{
			for(int j = 0; j <= N-1; j++)
			{
				G[i][j] = min(Coste_Bus[i][j],Coste_Carretera[i][j]);
			}
		}
	}
	
	Costes_min = Dijkstra(G,origen,P);
	
	for(int i = 0; i <= N-1; i++)
	{
		if(Costes_min[i] <= Dinero_Total) 
			Ciudades_aptas[i] = true;
	}
	
	return Costes_min;

}

