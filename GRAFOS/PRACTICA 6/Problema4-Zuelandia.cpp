#include <iostream>
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h"

using namespace std;

int main(){
	
	GrafoP<int> Z(6);
	
	
	
	return 0;
}

template <typename tCoste>
matriz<tCoste> Zuelandia(const Grafo& G, const matriz<bool>& carreteras_cortadas, const vector<bool>& ciudades_tomadas, const typename GrafoP<tCoste>::vertice& capital)
{	
	GrafoP<tCoste> aux(G);
	vector<tCoste> Origen_Capital;
	vector<tCoste> Capital_Destino;
	vector<typename GrafoP<tCoste>::vertice>& P(G.numVert());
	matriz<tCoste> m(G.numVert());
	int n = G.numVert();
	
	//Tomamos las carreteras cortadas para ponerlas a INFINITO
	//en la matriz de costes
	
	for(int i =0; i <= n-1; ++i)
	{		
		for(int j = 0; j <= n-1; ++j)
			
			if(carreteras_cortadas[i][j] == false) aux[i][j] = GrafoP<tCoste>::INFINITO;			
		
	}
	
	//Tomamos las ciudades cortadas para ponerlas a INFINITO EN LA MATRIZ DE COSTES
	for(int i = 0; i <= n-1; ++i) 
	
		if(ciudades_tomadas[i] == true) {
		
			for(int j = 0; j <= n-1; ++j){
				
				aux[j][i] = GrafoP<tCoste>::INFINITO;
				aux[i][j] = GrafoP<tCoste>::INFINITO;				
			} 
		}
	
	//Costes de ir desde todos las ciudades a la capital
	Origen_Capital = DijkstraInv(aux,capital,P);
	//Costes de ir desde la capital a todos las ciudades
	Capital_Destino = Dijkstra(aux,capital,P);
	
	//Rellenamos la matriz de costes a partir del Grafo de la situación actual de Zuelandia
    for(int i = 0; i <= n-1; i++)
        for(int j = 0; j <= n-1; j++)
            m[i][j] = suma(Origen_Capital[i],Capital_Destino[j]); //Ir desde i hasta la Capital y desde la Capital hasta j

    return(m);

	
	
	
	
	
}
