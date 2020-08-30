#include <iostream>
#include <vector>
#include <cassert>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>

using namespace std;
typedef double tCoste;
using Ciudad = GrafoP<tCoste>::vertice;

struct Puente
{
	Ciudad ciudad1;	
	Ciudad ciudad2;		
};

matriz<tCoste> Zuelandia(const GrafoP<tCoste>& Costes_isla1, const GrafoP<tCoste>& Costes_isla2, 
							const GrafoP<tCoste>& Costes_isla3, const vector<Puente>& Puentes)
{
	size_t N = Costes_isla1.numVert() + Costes_isla2.numVert() + Costes_isla3.numVert();
	GrafoP<tCoste> G(N);
	matriz<tCoste> Costes_minimos(N);
	matriz<Ciudad> P;
	size_t N1 = Costes_isla1.numVert();
	size_t N2 = Costes_isla2.numVert();
	size_t N3 = Costes_isla3.numVert();
	
	for(int i = 0; i <= N-1; i++)
	{
		for(int j = 0; j <= N-1; j++)
		{
			if(i < N1 && j < N1)
			{
				G[i][j] = Costes_isla1[i][j];
			}
			else if(i >= N1 && j >= N1 && i < N1+N2 && j < N1+N2)
			{
				G[i][j] = Costes_isla2[i-N1][j-N1];
			}
			else if(i >= N1+N2 && j >= N1+N2)
			{
				G[i][j] = Costes_isla3[i-(N1+N2)][j-(N1+N2)];
			}
			else
				G[i][j] = GrafoP<tCoste>::INFINITO;
		}
	}
	
	for(int i = 0; i <= Puentes.size(); i++)
	{
		G[Puentes[i].ciudad1][Puentes[i].ciudad1] = 0;
	}
	
	Costes_minimos = Floyd(G,P);
	
	return Costes_minimos;
}
