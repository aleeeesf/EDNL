#include <iostream>
#include <vector>
#include <cassert>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>


using namespace std;
typedef double tCoste;
enum Transportes{avion, tren, bus};

int main(){

	return 0;
}

vector<bool> Viajero_Alergico(const GrafoP<tCoste>& Avion, const GrafoP<tCoste>& Bus, const GrafoP<tCoste>& Tren,
								const typename GrafoP<tCoste>::vertice& origen, const Transportes& alergico, tCoste presupuesto)
{
	//Nos aseguramos que los tes grafos tienen los mismo numeros de vertices
	assert(Avion.numVert() == Tren.numVert() == Bus.numVert());
	
	int N = Avion.numVert() -1;
	vector<bool> ciudades_aptas(Avion.numVert(),false);
	vector<tCoste> costes_min;
	GrafoP<tCoste> G(Avion.numVert());
	vector<typename GrafoP<tCoste>::vertice> P;
	
	switch(alergico)
	{
		case avion:
					for(int i = 0; i <= N; ++i)
					{
						for(int j = 0; j <= N; ++j)
						{
							G[i][j] = min(Tren[i][j],Bus[i][j]);
						}
					}
					
					break;
		
		case tren:	
					for(int i = 0; i <= N; ++i)
					{
						for(int j = 0; j <= N; ++j)
						{
							G[i][j] = min(Avion[i][j],Bus[i][j]);
						}
					}
					
					break;
		case bus:
					for(int i = 0; i <= N; ++i)
					{
						for(int j = 0; j <= N; ++j)
						{
							G[i][j] = min(Avion[i][j],Tren[i][j]);
						}
					}
					
					break;		
	}
	
	
	costes_min = Dijkstra(G,origen,P);
	
	for(int i = 0; i <= costes_min.size()-1; ++i)
	{
		if(presupuesto >= costes_min[i]) ciudades_aptas[i] = true;
	}
	
	return ciudades_aptas;
}
