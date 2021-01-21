//1. Como no se puede acceder a la capital para ir a otras ciudades, ponemos a infinito los costes de ir a la capital desde cuqluier ciudad de zuelandia
//2. Calculamos los costes de ir a la capital desde cualquier ciudad.
//Ojo, se nos dice que si se puede ir, no que se pueda pasar para ir a otras ciudades

#include <iostream>
#include <vector>
#include <limits>
#include <cfloat>
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h"

using namespace std;
typedef double tCoste;
using vertice = GrafoP<tCoste>::vertice;

matriz<tCoste> Zuelandia(const GrafoP<tCoste>& Km_Zuelandia, const vertice& Capital)
{
	size_t N_Ciudades = Km_Zuelandia.numVert();
	GrafoP<tCoste> Carreteras_Zuelandia(Km_Zuelandia);
	matriz<tCoste> M(N_Ciudades);
	matriz<vertice> P(N_Ciudades);
	vector<vertice> Q;
	vector<tCoste> Ciudades_Capital;
	
	for(int i = 0; i <= N_Ciudades-1; i++)
	{
		Carreteras_Zuelandia[i][Capital] = GrafoP<tCoste>::INFINITO;
	}
		
	M = Floyd(Carreteras_Zuelandia,P);	//Ya tenemos los costes minimos para pasar ir a todas las ciudades sin pasar por la capital
	
	Ciudades_Capital = DijkstraInv(Km_Zuelandia,Capital,Q);
	
	for(int i = 0; i <= N_Ciudades-1; i++)
	{
		M[i][Capital] = Ciudades_Capital[i];
	}		
	
	return M;
}
