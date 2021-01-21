#include <iostream>
#include <vector>
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h"

using namespace std;
typedef double tCoste;
using vertice = GrafoP<tCoste>::vertice;

struct Distribucion
{
	vector<int> almacenado;
	tCoste coste_total;
};

int main()
{
	
}

const GrafoP<tCoste> Aplicar_Subvencion(const vector<tCoste>& G,const vector<double>& subvencion)
{
	for(int i = 0; i < G.size(); i++)
	{
		G[i] = (G[i] * ((100-subvencion[i])/100));
	}
}

Distribucion Distribuir_Stock(const vertice& centro_produccion, int cantidad, const GrafoP<tCoste>& G, const vector<int>& capacidades,const vector<double>& subvencion)
{
	vector<tCoste> costes_min;
	vector<vertice> P;
	size_t N_ciudades = G.numVert();
	vector<bool> almacen_lleno(N_ciudades,false);
	int capacidad_restante = cantidad;
	int min = INT64_MAX;
	int almacen_min;
	Distribucion D;
	
	
	costes_min = Dijkstra(G, centro_produccion, P);	
	costes_min = Aplicar_Subvencion(costes_min, subvencion);
	
	while(capacidad_restante > 0)
	{
		for(int i = 0; i <= N_ciudades; i++)
		{
			if(costes_min[i] < min && !almacen_lleno[i])
			{
				min = costes_min[i];
				almacen_min = i;
			}
		}

		if(capacidad_restante < capacidades[almacen_min])
		{
			D.almacenado[almacen_min] = capacidad_restante;
			D.coste_total = costes_min[almacen_min] * capacidad_restante;
			capacidad_restante = 0;
		}

		else
		{
			D.almacenado[almacen_min] = capacidades[almacen_min];
			D.coste_total = costes_min[almacen_min] * capacidad_restante;
			capacidad_restante -= capacidad_restante[almacen_min];
			almacen_lleno[almacen_min] = true;
		}
	}	
	
	return D;
}

