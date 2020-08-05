#include <iostream>
#include <vector>
#include <cassert>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>

using namespace std;
typedef double tCoste;
using vertice = GrafoP<tCoste>::vertice;

struct Viaje
{
	tCoste costetotal;
	GrafoP<tCoste>::tCamino camino;
};


Viaje Viaje_con_Taxi(const GrafoP<tCoste>& bus, const GrafoP<tCoste>& tren, const vertice& origen, const vertice& destino, tCoste precio_Transbordo);

int main()
{
	GrafoP<tCoste> bus(2);
	bus[0][1] = 3;
	bus[1][0] = 3;
	GrafoP<tCoste> tren(2);
	tren[0][1] = 5;
	tren[1][0] = 5;

	int origen = 0;
	int destino = 1;

}

Viaje Viaje_con_Taxi(const GrafoP<tCoste>& bus, const GrafoP<tCoste>& tren, const vertice& origen, const vertice& destino, tCoste precio_Transbordo)
{
	GrafoP<tCoste> G(bus.numVert()*2);
	vector<typename GrafoP<tCoste>::vertice> P;
	vector<typename GrafoP<tCoste>::vertice> Q;
	int Nvertices = G.numVert();
	int Nciudades = bus.numVert();
	tCoste coste_min;
	Viaje V;
	
	for(int i = 0; i <= Nvertices-1; i++)
	{
		for(int j=0 ; j <= Nvertices-1; j++)
		{
			if(i < Nvertices/2 && j <Nvertices/2) G[i][j] = tren[i][j];
		
			else if(i >= Nvertices/2 && j >= Nvertices/2) G[i][j] = bus[i-Nciudades][j-Nciudades];
			
			else if(j == i + Nciudades || i == j + Nciudades) G[i][j] = precio_Transbordo;
			
			else G[i][j] = GrafoP<tCoste>::INFINITO;
			
			//cout<<G[i][j]<<" ";
			//if(j == Nvertices-1)cout<<endl;	
		}
	}

	//Guardamos los costes empezando en tren y empezando por bus
	vector<tCoste> viaje_tren = Dijkstra(G, origen, P);
	vector<tCoste> viaje_bus = Dijkstra(G, origen + Nciudades, Q);

	//Calculamos el menor coste
						//Tren a destino tren	Tren a destino en bus
	coste_min = min(	min(viaje_tren[destino], viaje_tren[destino+Nciudades]),
						min(viaje_bus[destino], viaje_bus[destino+Nciudades])
					);
					
	if(V.costetotal == viaje_tren[destino])    //Sale en tren, llega en tren
        V.camino = camino<tCoste>(origen, destino, P);
    else
    {
        if(V.costetotal == viaje_tren[destino + Nciudades]) //Sale en tren, llega en bus
            V.camino = camino<tCoste>(origen, destino + Nciudades, P);
        else
        {
            if(V.costetotal == viaje_bus[destino]) //Sale en bus, llega en tren
                V.camino = camino<tCoste>(origen + Nciudades, destino, Q);
            else
                V.camino = camino<tCoste>(origen + Nciudades, destino + Nciudades, Q);  //Sale en bus, llega en bus
        }
        
    }
}
