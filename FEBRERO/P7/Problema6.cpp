#include <iostream>
#include <vector>
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h"

using namespace std;
typedef double tCoste;
using vertice = GrafoP<tCoste>::vertice;
enum Transortes {Carretera,tren,avion};

matriz<tCoste> Viajero_Alergico(const GrafoP<tCoste>& Grafo_Autobus, const GrafoP<tCoste>& Grafo_Tren, const vertice& Estacion);


int main()
{

}

matriz<tCoste> Viajero_Alergico(const GrafoP<tCoste>& Grafo_Autobus, const GrafoP<tCoste>& Grafo_Tren, const vertice& Estacion)
{
	size_t N = Grafo_Autobus.numVert();
	matriz<tCoste> M(N), min_Tren(N), min_Bus(N);
	matriz<vertice> P(N);
	matriz<vertice> Q(N);
	tCoste coste_bus, coste_tren, coste_Transbordo;
	
	min_Bus = Floyd(Grafo_Autobus,P);
	min_Tren = Floyd(Grafo_Tren,Q);
	
	
	for(int i = 0; i < N; i++)
	{
		for(int j = 0; j < N; j++)
		{
			coste_bus = min_Bus[i][j];
			coste_tren = min_Tren[i][j];
			coste_Transbordo = suma(
									min(min_Tren[i][Estacion],min_Bus[i][Estacion]),
									min(min_Tren[Estacion][j],min_Bus[Estacion][j])
								);
								
			M[i][j] = min(coste_Transbordo,min(coste_bus, coste_tren));			
		}		
	}
	
	
	
	return M;
}

