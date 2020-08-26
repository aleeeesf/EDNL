#include <iostream>
#include <vector>
#include <limits>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>

using namespace std;
typedef double tCoste;
using vertice = GrafoP<tCoste>::vertice;

struct Distribucion
{
	vector<tCoste> Cantidades_Ciudad;
	tCoste coste_total;
};

vector<tCoste> Aplicar_subvencion(const vector<tCoste>& Costes, const vector<double>& subvenciones)
{
	int n = Costes.size();
	vector<tCoste> Costes_con_subvencion;
	
	for(int i = 0; i <= n-1; i++)
	{
		Costes_con_subvencion[i] = Costes[i] * ((100-subvenciones[i])/100);
	}
	
	return Costes_con_subvencion;
}


Distribucion distribuir_stock(const GrafoP<tCoste>& Costes, const vertice& origen, int cantidad, 
								const vector<tCoste>& capacidad_almacenes, const vector<double>& subvenciones)
{	
	matriz<tCoste> G(Costes.numVert());
	vector<vertice> P;
	int n = G.dimension();
	vector<tCoste> Costes_minimos;
	vector<bool> Almacen_lleno(n,false);
	
	Costes_minimos = Dijkstra(Costes,origen,P);
	Costes_minimos = Aplicar_subvencion(Costes_minimos, subvenciones);	
	
	int cantidad_disponible = cantidad;
	int minimo = INT_MAX;
	vertice Ciudad_candidata;
	Distribucion D;
	
	while(cantidad_disponible > 0)		//Mientras queden cantidades por repartir
	{
		//1.Buscamos el alamcen con menor coste
		for(int i = 0; i <= n-1; i++)
		{
			if(Costes_minimos[i] < minimo && !Almacen_lleno[i])
			{
				minimo = Costes_minimos[i];
				Ciudad_candidata = i;
			}
		}
		
		if(cantidad_disponible < capacidad_almacenes[Ciudad_candidata])
		{
			D.Cantidades_Ciudad[Ciudad_candidata] = cantidad_disponible;
			D.coste_total = Costes_minimos[Ciudad_candidata] * cantidad_disponible;
			cantidad_disponible = 0;		
		}
		else
		{			
			D.Cantidades_Ciudad[Ciudad_candidata] = capacidad_almacenes[Ciudad_candidata];
			D.coste_total = Costes_minimos[Ciudad_candidata] * cantidad_disponible;
			cantidad_disponible -= capacidad_almacenes[Ciudad_candidata];
			Almacen_lleno[Ciudad_candidata] = true;
		}		
	}	
}

