#include <iostream>
#include <vector>
#include <cassert>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>

using namespace std;
typedef int tCoste;
using vertice = GrafoP<tCoste>::vertice;

tCoste un_solo_transbordo(const GrafoP<tCoste>& Costes_Bus, const GrafoP<tCoste>& Costes_Tren, const vertice& origen, const vertice& destino)
{
	vector<tCoste> Bus_Origen, Tren_Origen, Bus_Destino, Tren_Destino;
	vector<vertice> P;
	tCoste ir_bus, ir_tren, ir_bus_tren, ir_tren_bus;
	tCoste minimo1, minimo2;
	tCoste Tarifa_minima;
	size_t N = Costes_Bus.numVert();
	
	Bus_Origen = Dijkstra(Costes_Bus,origen,P);
	Tren_Origen = Dijkstra(Costes_Tren,origen,P);
	
	Bus_Destino = DijkstraInv(Costes_Bus, destino,P);
	Tren_Destino = DijkstraInv(Costes_Tren, destino, P);
	
	
	for(int i = 0; i <= N-1; i++)
	{
		ir_bus = Bus_Origen[destino];
		ir_tren = Tren_Origen[destino];
		ir_bus_tren = Bus_Origen[i] + Tren_Destino[i];
		ir_tren_bus = Tren_Origen[i] + Bus_Destino[i];
		
		minimo1 = min(ir_bus, ir_tren);
		minimo2 = min(ir_bus_tren, ir_tren_bus);
		Tarifa_minima = min(minimo1, minimo2);	
	}
	return Tarifa_minima;
}


