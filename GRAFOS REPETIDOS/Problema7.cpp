#include <iostream>
#include <vector>
#include <cassert>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\listaenla.h>

using namespace std;
typedef double tCoste;
using vertice = GrafoP<tCoste>::vertice;

struct Ruta
{
	Lista<vertice> camino;
	tCoste coste_total;
};

Lista<vertice> Determinar_ruta(const vertice& origen, const vertice& cambio, const vertice& destino, const vector<vertice>& origen_cambio, const vector<vertice>& cambio_destino)
{
	Lista<vertice> Camino;
	typename GrafoP<tCoste>::tCamino c = camino<tCoste>(origen, cambio, origen_cambio);
	typename Lista<vertice>::posicion p = c.primera();
	
	while(p != c.fin())
	{
		Camino.insertar(c.elemento(p),Camino.fin());
		p = c.siguiente(p);
	}
	
	c = camino<tCoste>(destino, cambio, origen_cambio);
	typename Lista<vertice>::posicion i = c.fin();
	
	while(i != c.primera())
	{
		Camino.insertar(c.elemento(i),Camino.fin());
		i = c.anterior(i);
	}
	
	return Camino;
}

Ruta Huelga_Taxi(const GrafoP<tCoste>& Costes_Tren, const GrafoP<tCoste>& Costes_Bus, const vertice& origen,
				const vertice& destino, const vertice& cambio1, const vertice& cambio2)
{
	vector<tCoste> Origen_Estacion, Estacion_Destino;
	vector<vertice> P, Q;
	int N = Costes_Tren.numVert();
	tCoste pasando_por_cambio1, pasando_por_cambio2;
	
	Origen_Estacion = Dijkstra(Costes_Bus,origen,P);	
	Estacion_Destino = DijkstraInv(Costes_Tren,destino,Q);
	
	pasando_por_cambio1 = suma(Origen_Estacion[cambio1], Estacion_Destino[cambio1]);
	pasando_por_cambio2 = suma(Origen_Estacion[cambio2], Estacion_Destino[cambio2]);
	
	Ruta R;
	if(pasando_por_cambio1 < pasando_por_cambio2)
	{
		//Devolvemos la ruta pasando por cambio1
		R.camino = Determinar_ruta(origen, cambio1, destino, P, Q);
		R.coste_total = pasando_por_cambio1;		
	}
	else
	{
		//Devolvemos la ruta pasando por cambio2
		R.camino = Determinar_ruta(origen, cambio2, destino, P, Q);
		R.coste_total = pasando_por_cambio2;
	}	
}


