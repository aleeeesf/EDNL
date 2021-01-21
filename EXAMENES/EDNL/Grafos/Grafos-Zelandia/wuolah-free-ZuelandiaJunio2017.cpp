
#include <iostream>
#include <vector>
#include <limits>
#include <cfloat>
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h"

using namespace std;
typedef double tCoste;
using vertice = GrafoP<tCoste>::vertice;
matriz <tCoste> ZuelandiaJunio (GrafoP<tCoste>::vertice Capital, GrafoP<tCoste> G)
{
	GrafoP<tCoste> CG(G);
	matriz<tCoste> F(G.numVert());
	matriz<tCoste> PF(G.numVert());
	matriz<GrafoP<tCoste>::vertice> Q;
	
	for(size_t i=0;i<CG.numVert();i++)
	{
		CG[i][Capital] = GrafoP<tCoste>::INFINITO;

	}
	F = Floyd(CG,Q); //matriz de coste donde tendremos que quitar los caminos que pasan por la capital
	vector<tCoste> Dinv;
	vector<GrafoP<tCoste>::vertice> PINV;
	Dinv = Dijkstra(CG,Capital,PINV);//miramos los caminos con destino la capital
	
	for(size_t i=0;i<F.dimension();i++)
	{
		PF[Capital][i] = Dinv[i];
	}

	return PF;
}
