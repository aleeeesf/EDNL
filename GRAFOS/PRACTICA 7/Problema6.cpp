#include <iostream>
#include <vector>
#include <cassert>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>

using namespace std;
typedef double tCoste;

int main(){
	return 0;
}

matriz<tCoste> tarifas_minimas(const GrafoP<tCoste>& tren, const GrafoP<tCoste> bus, const typename GrafoP<tCoste>::vertice& estacion)
{
	assert(tren.numVert() == bus.numVert());
	auto N = tren.numVert() -1;
	matriz<tCoste> costes_tren;
	matriz<tCoste> costes_bus;
	matriz<typename GrafoP<tCoste>::vertice> P;
	matriz<tCoste> coste_min;
	tCoste ij_tren, ij_bus, ij_trans;
	
	//Aplicamos costes minimos
	costes_tren = Floyd(tren,P);
	costes_bus = Floyd(bus,P);

	for(int i = 0; i<=N; i++)
	{
		for(int j = 0; j<=N; j++)
		{
			ij_tren = costes_tren[i][j];
			ij_bus = costes_bus[i][j];
			ij_trans = suma ( min(costes_bus[i][estacion],costes_tren[i][estacion]),
								min( costes_bus[estacion][j],costes_tren[estacion][j]));
								
			coste_min[i][j] = min(ij_tren, min(ij_bus,ij_trans));
		}
	}
	
	return coste_min;
}
