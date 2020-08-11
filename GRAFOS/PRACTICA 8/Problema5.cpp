#include <iostream>
#include <vector>
#include <cassert>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>

using namespace std;
typedef int tCoste;

tCoste reteuni3(const GrafoP<tCoste>& G);

int main()
{
	GrafoP<tCoste> G(5);
	G[0][1] = 10;
	G[0][2] = 14;
	G[0][3] = 4;
	G[0][4] = 2;
	G[1][0] = 10;
	G[1][2] = 3;
	G[1][3] = 12;
	G[2][0] = 14;
	G[2][1] = 3;
	G[2][4] = 5;
	G[3][0] = 4;
	G[3][1] = 12;
	G[3][4] = 11;
	G[4][0] = 2;
	G[4][2] = 5;
	G[4][3] = 11;
	

	cout<<reteuni3(G);
	
	return 0;
	
}


tCoste reteuni3(const GrafoP<tCoste>& G)
{
	GrafoP<tCoste> K(G.numVert());
	tCoste coste_total = 0;
	
	K = Prim(G);
	
	for(int i = 0; i <= K.numVert()-2; i++)
	{
		for(int j = i+1; j <= K.numVert()-1; j++)
		{
			if(K[i][j] != GrafoP<tCoste>::INFINITO)
			{
				coste_total += K[i][j];
			}
				
		}	
	}
	return coste_total;
}
