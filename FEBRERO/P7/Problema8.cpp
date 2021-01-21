#include <iostream>
#include <vector>
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h"

using namespace std;
typedef double tCoste;
using vertice = GrafoP<tCoste>::vertice;

int main()
{
	return 0;
}

double un_solo_transbordo(const GrafoP<tCoste>& Tren, const GrafoP<tCoste>& Bus, const vertice& origen, const vertice& destino)
{
	size_t N_Ciudades = Tren.numVert();
	vector<vertice> P,Q;
	vector<tCoste> min_tren, min_bus, min_tren_inv, min_bus_inv;
	tCoste coste_tren, coste_bus, coste_bus_tren, coste_tren_bus, tarifa_minima;
	
	min_tren = Dijkstra(Tren, origen, P);
	min_bus = Dijkstra(Bus, destino, Q);
	
	min_tren_inv = Dijkstra(Tren, origen, P);
	min_bus_inv = Dijkstra(Bus, destino, Q);
	
	for(int i = 0; i < N_Ciudades; i++)
	{
		coste_tren = min_tren[i];
		coste_bus = min_bus[i];
		coste_bus_tren = suma(coste_bus, min_tren_inv[i]);
		coste_tren_bus = suma(coste_tren, min_bus_inv[i]);
		
		tarifa_minima = min(coste_bus_tren, coste_tren_bus);
		tarifa_minima = min(tarifa_minima, min(min_tren[destino], min_bus[destino]));
	}
	 
	return tarifa_minima;
}
