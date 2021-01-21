#include <iostream>
#include <vector>
#include <cassert>
#include <math.h>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\particion.h"

using namespace std;
typedef double tCoste;
typedef int Lineas_aereas;
using vertice = GrafoP<tCoste>::vertice;

struct canal
{
	tCoste caudal;
	tCoste longitud;
};

Canales_Jerte(const GrafoP<tCoste>& Jerte, const matriz<tCoste>& Caudales, tCoste subvencion, tCoste precio_km)
{
	size_t N = Jerte.numVert();
	GrafoP<tCoste> G(N);
	tCoste Coste_Caudal, Coste_km;
	
	for(int i = 0; i <= N-1; i++)
	{
		for(int j = 0; j <= N-1; j++)
		{
			Coste_Caudal = Caudales[i][j] * subvencion;	
			Coste_km = Jerte[i][j] * precio_km;
			G[i][j] = Coste_Caudal + Coste_km;
		}
	}
	
	G = Kruskall(G);
	
	matriz<canal> M(G.numVert());
	for(int i = 0; i <= N-1; i++)
	{
		for(int j = 0; j <= N-1; j++)
		{
			if(G[i][j] != GrafoP<tCoste>::INFINITO)
			{
				M[i][j].caudal = Caudales[i][j];
				M[i][j].longitud = Jerte[i][j];	
			}
			
			else  M[i][j] = GrafoP<canal>::INFINITO;
		}
	}
	
	
}
