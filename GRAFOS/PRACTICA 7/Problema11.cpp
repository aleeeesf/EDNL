#include <iostream>
#include <vector>
#include <cassert>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>

using namespace std;
typedef double tCoste;

struct Puente
{
	GrafoP<tCoste>::vertice Ciudad1;
	GrafoP<tCoste>::vertice Ciudad2;	
};

int main(){
	return 0;
}

matriz<tCoste> archipielagos_zuelandia(const GrafoP<tCoste>& isla1,const GrafoP<tCoste>& isla2,const GrafoP<tCoste>& isla3,
										const vector<Puente>& puentes)
{
	int N = isla1.numVert() + isla2.numVert() + isla3.numVert();
	GrafoP<tCoste> G(N);
	int N1, N2, N3;
	matriz<tCoste> M;
	matriz<typename GrafoP<tCoste>::vertice> P;
	
	//Guardamos las ciudades de cada isla
	N1 = isla1.numVert();
	N2 = isla2.numVert();	
	N3 = isla3.numVert();
		
	for(int i = 0; i<=N; i++)
	{
		for(int j = 0; j<=N; j++)
		{
			if(i <= N1-1 && j <= N2-1) 	//COPIO ISLA1
				G[i][j] = isla1[i][j];
			
			else if( (i > N1-1 && i <= N2+N1-1) && (j > N1-1 && j <= N2+N1-1))	//COPIO ISLA2	
				G[i][j] = isla2[i - N1][j -N1];
				
			else if( i > N2+N1-1 && j > N2 +N1-1)			//COPIO ISLA3
				G[i][j] = isla3[i - (N1+N2)][j - (N1+N2)];
				
			else G[i][j] = GrafoP<tCoste>::INFINITO;	
		}
	}
	
	for(int i = 0; i < puentes.size()-1; i++)			//Colocamos los puentes
	{
		G[puentes[i].Ciudad1][puentes[i].Ciudad2] = 0;	
		G[puentes[i].Ciudad2][puentes[i].Ciudad1] = 0;
	}
	
	M = Floyd(G,P);
	
	return M;
}
