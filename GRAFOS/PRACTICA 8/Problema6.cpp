#include <iostream>
#include <vector>
#include <cassert>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>

using namespace std;
typedef double tCoste;

struct canal
{
	tCoste caudal;
	double longitud;
};

matriz<canal> Canales_Jerte(const matriz<tCoste>& distancias, const matriz<tCoste>& caudales, tCoste subvencion, tCoste coste_km);

int main()
{
	return 0;
}

matriz<canal> Canales_Jerte(const matriz<tCoste>& distancias, const matriz<tCoste>& caudales, tCoste subvencion, tCoste coste_km)
{
	size_t N = distancias.dimension();
	tCoste Coste_Caudal, Coste_Distancia;
	GrafoP<tCoste> G(N), K(N);
	
	for(int i = 0; i <= N-1; i++)
	{
		for(int j = 0; j <= N-1; j++)
		{
			Coste_Caudal = subvencion * caudales[i][j];
			Coste_Distancia = coste_km * distancias[i][j];
			G[i][j] = Coste_Caudal + Coste_Distancia;
		}
	}
	
	K = Prim(G);	//Tomamos las distancias minimas
	matriz<canal> M(K.numVert());
		
	for(int i = 0; i <= N-1; i++)
	{
		for(int j = 0; j <= N-1; j++)
		{
			if(K[i][j] != GrafoP<tCoste>::INFINITO)
			{
				M[i][j].caudal = caudales[i][j];
				M[i][j].longitud = distancias[i][j];	
			}
			
			else  M[i][j] = GrafoP<canal>::INFINITO;
		}
	}
		
	return M;
}
