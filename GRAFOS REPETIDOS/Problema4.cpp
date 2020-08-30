#include <iostream>
#include <vector>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>

using namespace std;
typedef double tCoste;
using vertice = GrafoP<tCoste>::vertice;

tCoste Cementos_Zuelandia(const GrafoP<tCoste>& Costes, const vector<int>& Cargas, const vertice& Capital)
{
	vector<tCoste> Almacen_Ciudad, Ciudad_Almacen;
	vector<vertice> P;
	tCoste Coste_Total;
	size_t N = Costes.numVert();
	
	Almacen_Ciudad = Dijkstra(Costes, Capital, P);
	Ciudad_Almacen = Dijkstra(Costes, Capital, P);
	
	for(int i = 0; i <= N-1; i++)
	{
		Coste_Total = suma(Almacen_Ciudad[i], Ciudad_Almacen[i]) * Cargas[i];
	}
	
	return Coste_Total;
}
