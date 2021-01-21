#include <iostream>
#include <vector>
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h"

using namespace std;
typedef double tCoste;
using vertice = GrafoP<tCoste>::vertice;

struct Puente
{
	vertice ciudad_1;
	vertice ciudad_2;
};


int main()
{
	return 0;
}

matriz<tCoste> Zuelandia(const GrafoP<tCoste>& isla1, const GrafoP<tCoste>& isla2, const GrafoP<tCoste>& isla3, const vector<Puente>& puentes)
{
	size_t N_Ciudades = isla1.numVert() + isla2.numVert() + isla3.numVert();
	matriz<tCoste> M(N_Ciudades);
	matriz<vertice> P(N_Ciudades);
	GrafoP<tCoste> Costes_Islas(N_Ciudades);
	size_t N1, N2, N3;
	N1 = isla1.numVert();
	N2 = isla2.numVert();
	N3 = isla3.numVert();
	
	for(int i = 0; i < N_Ciudades; i++)
	{
		for(int j = 0; j < N_Ciudades; j++)
		{
			if((i <= N1-1) && (j <= N1-1))
				Costes_Islas[i][j] = isla1[i][j];
				
			else if((i > N1-1 && j > N1-1) && (i < N1+N2-1 && j < N1+N2-1))
				Costes_Islas[i][j] = isla2[i - N1][j - N2];
				
			else if(i > N1+N2-1 && j > N1+N2-1)
				Costes_Islas[i][j] = isla3[i - (N1+N2)][j - (N1+N2)];
		}
	}
	
	for(int i = 0; puentes.size()-1; i++)
	{
		Costes_Islas[puentes[i].ciudad_1][puentes[i].ciudad_2] = 0;
		Costes_Islas[puentes[i].ciudad_2][puentes[i].ciudad_1] = 0;
	}
	
	M = Floyd(Costes_Islas,P);
	
	return M;
}
