#include <iostream>
#include <vector>
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h"

using namespace std;
typedef double tCoste;
using vertice = GrafoP<tCoste>::vertice;
enum Transortes {Carretera,tren,avion}

int main()
{

}

Viajero_Alergico(const GrafoP<tCoste>& Costes_Bus, const GrafoP<tCoste>& Costes_Tren, const vertice& origen, const vertice& destino, 
				const vertice& cambio1, const vertice& cambio2)
{
	size_t N = Costes_Bus.numVert();
	vector<tCoste> min_bus, min_tren;
	vector<vertice> P,Q;
	tCoste camino_cambio1, camino_cambio2;	

	origen_destino = Dijkstra(Costes_Tren, origen, Q);
	destino_origen = DijkstraInv(Costes_Tren, destino, Q);
	
	camino_cambio1 = suma(origen_destino[cambio1], destino_origen[cambio1]);
	camino_cambio2 = suma(origen_destino[cambio2], destino_origen[cambio2]);
	
	if(camino_cambio1 > camino_cambio2)
	{
		//devolver ruta
	}
	
	else
	{
		//devolver ruta
	}
	
	
}

