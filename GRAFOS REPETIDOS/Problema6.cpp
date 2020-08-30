#include <iostream>
#include <vector>
#include <cassert>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>

using namespace std;
typedef double tCoste;
using vertice = GrafoP<tCoste>::vertice;

matriz<tCoste> Tarifa_Minima(const GrafoP<tCoste>& Costes_Tren, const GrafoP<tCoste>& Costes_Bus, const vertice& Estacion)
{
	size_t N = Costes_Tren.numVert();
	matriz<tCoste> Tren(N), Bus(N), Costes_Min(N);
	matriz<vertice> P,Q;
	tCoste ij_bus, ij_tren, ij_trans;
	
	Tren = Floyd(Costes_Tren,P);
	Bus = Floyd(Costes_Bus,Q);
	
	for(int i = 0; i <= N-1; i++)
	{
		for(int j = 0; j <= N-1; j++)
		{
			ij_bus = Bus[i][j];
			ij_tren = Tren[i][j];
			ij_trans = suma( min(Bus[i][Estacion],Tren[i][Estacion]), min(Tren[Estacion][j],Bus[Estacion][j]));
			
			Costes_Min[i][j] = min(ij_bus, min(ij_tren, ij_trans));
		}
	}
	
	return Costes_Min;		
}
