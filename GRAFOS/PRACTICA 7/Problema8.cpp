#include <iostream>
#include <vector>
#include <cassert>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>

using namespace std;
typedef int tCoste;
using vertice = GrafoP<tCoste>::vertice;

int main(){
	
	GrafoP<int> G(6);
	vector<typename GrafoP<int>::vertice> P;
	G[0][1] = 5;
	G[0][3] = 10;
	G[0][5] = 21;
	G[1][2] = 4;
	G[2][5] = 11;
	G[3][4] = 10;	
	G[4][5] = 2;
	
	//vector<tCoste> origen1 = Dijkstra(G,0,P);
	vector<tCoste> origen2 = DijkstraInv(G,5,P);	
	
	for(int i = 0; i <= origen2.size()-1; i++) cout<<origen2[i]<<endl;

	
	return 0;
}

double tarifa_minima (const GrafoP<tCoste>& autobus, const GrafoP<tCoste>& tren, const vertice& origen, const vertice& destino)
{
	vector<tCoste> origen_bus;
	vector<tCoste> origen_tren;
	vector<tCoste> tren_inv;
	vector<tCoste> bus_inv;
	vector<typename GrafoP<tCoste>::vertice> P;
	tCoste tarifa_minima, ir_en_bus, ir_en_tren, tren_despues_bus, bus_despues_tren;
	
	//Costes de ir desde el origen al destino en bus,
	//sin hacer transbordo
	origen_bus = Dijkstra(autobus, origen, P);
	//Costes de ir desde el origen al destino en tren,
	//sin hacer transbordo
	origen_tren = Dijkstra(tren, origen, P);
	
	//Costes de ir desde cualquier vertice al destino
	bus_inv = Dijkstra(autobus, destino, P);
	tren_inv = Dijkstra(tren, destino, P);
	
	for(int i = 0; i <= origen_bus.size()-1; i++)
	{
		ir_en_bus = origen_bus[i];
		ir_en_tren = origen_tren[i];
		tren_despues_bus = (origen_tren[i] , bus_inv[i]);
		bus_despues_tren = suma(origen_bus[i] , tren_inv[i]);
		
		tarifa_minima = min( min(ir_en_bus, ir_en_tren),
							 min(tren_despues_bus, bus_despues_tren)							
							);
	}
	
	return tarifa_minima;
	
	
}


