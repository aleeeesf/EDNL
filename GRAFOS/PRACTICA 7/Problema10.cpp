#include <iostream>
#include <vector>
#include <windows.h>
#include <cassert>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>

using namespace std;
typedef double tCoste;
using Ciudad = GrafoP<tCoste>::vertice;

struct Viaje{
	
	tCoste coste_min;
	GrafoP<Ciudad> camino;
};

int main()
{

	return 0;
}

Viaje viaje_con_transbordo(const GrafoP<tCoste>& tren, const GrafoP<tCoste>& bus, const GrafoP<tCoste>& avion, const Ciudad& origen, 
					const Ciudad& destino, tCoste transbordo_estacion, tCoste transbordo_aeropuerto)
{
	GrafoP<tCoste> G(tren.numVert()*3);
	size_t Nvertices = G.numVert();
	size_t Nciudades = tren.numVert();
	vector<typename GrafoP<tCoste>::vertice> P, Q, R;
	vector<tCoste> viaje_tren, viaje_bus, viaje_avion;
	size_t destino_en_avion, destino_en_bus;
	tCoste costes_min;	
	Viaje V;
	
	for(int i = 0; i<=G.numVert()-1; i++)
	{
		for(int j = 0; j<=G.numVert()-1; j++)
		{
			if(i < Nvertices/3 && j < Nvertices/3) G[i][j] = tren[i][j];	//Primer Cuadrante
			else if(i >= Nvertices/3 && i < (2*Nvertices)/3 && j >= Nvertices/3 && j < (2*Nvertices)/3)	 G[i][j] = bus[i-Nciudades][j-Nciudades];	//Segundo Cuadrante
			else if(i >= (2*Nvertices)/3 && j >= (2*Nvertices)/3) G[i][j] = avion[i-2*Nciudades][j-2*Nciudades];	//Tercer Cuadrante
			else if( (j == i + Nciudades && j < 2*Nvertices/3) || (i == j + Nciudades && i < 2*Nvertices/3) ) G[i][j] = transbordo_estacion;
			else if( j == i + Nciudades || j == i + 2*Nciudades || i == j + Nciudades || i == j + 2*Nciudades ) G[i][j] = transbordo_aeropuerto;
			else G[i][j] = GrafoP<tCoste>::INFINITO;	
		}
	}
	
	viaje_tren = Dijkstra(G,origen,P);
	viaje_bus = Dijkstra(G, origen+Nciudades,Q);
	viaje_avion = Dijkstra(G, origen+2*Nciudades,R);	
	
	destino_en_bus = destino + Nciudades;
	destino_en_avion = destino + 2*Nciudades;
	
	costes_min = min ( min(viaje_tren[destino], min(viaje_tren[destino_en_bus],viaje_tren[destino_en_avion])),
						min(
							min(viaje_bus[destino], min(viaje_bus[destino_en_bus],viaje_bus[destino_en_avion])),
							min(viaje_avion[destino], min(viaje_avion[destino_en_bus],viaje_avion[destino_en_avion]))
							)
					 );
	
	V.coste_min = costes_min;
	if(V.costetotal == viaje_tren[destino] || V.costetotal == viaje_tren[destino + Nciudades] || V.costetotal == viaje_tren[destino + 2*Nciudades])
        V.camino = P;
    else
    {
        if(V.costetotal == viaje_bus[destino] || V.costetotal == viaje_bus[destino + Nciudades] || V.costetotal == viaje_bus[destino + 2*Nciudades])
            V.camino = Q;
        else
            V.camino = R;
    }
    
	return V;
}			
			
			


