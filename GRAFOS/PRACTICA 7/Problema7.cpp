#include <iostream>
#include <vector>
#include <cassert>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>

using namespace std;

typedef double tCoste;

int main(){
	return 0;
}


Lista<typename GrafoP<tCoste>::vertice> ruta_origen_destino(const GrafoP<tCoste>& autobus, const GrafoP<tCoste>& tren, const GrafoP<tCoste>::vertice& origen,
															 const GrafoP<tCoste>::vertice& destino	,const GrafoP<tCoste>::vertice& cambio1, 
															 const GrafoP<tCoste>::vertice& cambio2)
{
	
	matriz<tCoste> costes_min;
	vector<typename GrafoP<tCoste>::vertice> P;
	vector<tCoste> origen_destino;
	vector<tCoste> destino_origen;
	tCoste pasando_cambio1, pasando_cambio2;
		
	//Calculos los costes minimos de ir desde el origen a la estacion
	origen_destino = Dijkstra(tren,origen,P);
	//Calculos los costes minimos de ir al destino en bus
	destino_origen = DijkstraInv(autobus, destino, P);
	
	pasando_cambio1 = suma(origen_destino[cambio1],destino_origen[cambio1]);
	pasando_cambio2 = suma(origen_destino[cambio2],destino_origen[cambio2]);
	
	if(pasando_cambio1 > pasando_cambio2)
	{
		//devolver el camino
	}
	else
	{
		//devolver el camino
	}	
}


Lista<typename GrafoP<tCoste>::vertice> ruta(const GrafoP<tCoste>::vertice& origen,typename GrafoP<tCoste>::vertice cambio,
      										 typename GrafoP<tCoste>::vertice destino, const vector<typename GrafoP<tCoste>::vertice>& origen_cambio,
											   const vector<typename GrafoP<tCoste>::vertice>& destino_cambio)
{
  	auto ruta = camino<tCoste>(origen,cambio,origen_cambio);
	typename Lista<typename GrafoP<tCoste>::vertice>::posicion i = ruta.primera();	
	
	while(i != ruta.fin())
	{
		ruta.insertar(ruta.elemento(i),ruta.fin());
		i = ruta.siguiente(i);
	}	
			 	
	ruta = camino<tCoste>(destino, cambio, destino_cambio);
	i = ruta.anterior(ruta.fin());
	while(i != ruta.primera())
	{
		i = ruta.anterior(i);
		ruta.insertar(ruta.elemento(i), ruta.fin());
	}
	
	return ruta;
}
