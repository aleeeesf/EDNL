#ifndef problema2_hpp
#define problema2_hpp
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h"

// Pre: Recibe un grafo ponderado con al menos un vértice.
// Pos: Devuelve el diametro del grafo ponderado.
template <typename tCoste>
unsigned diametroGrafo(const GrafoP<tCoste> &G)
{
	typedef typename GrafoP<tCoste>::vertice vertice;
	matriz<tCoste> costes;				// Costes desde cada vertice hasta cada vertice
	tCoste max1, max2, diametro, aux;	// Costes mayores y diametro
	matriz<vertice> P;
	size_t n, i, j;
	
	n = G.numVert();
	diametro = GrafoP<tCoste>::INFINITO;
	costes = Floyd(G, P);
	
	for(i = 0; i <= n-1; ++i)			// Pseudocentro i
	{
		max1 = max2 = -1;
		for(j = 0; j <= n-1; ++j)		// Para cada vertice j...
		{
			aux = costes[i][j];
			if(aux > max1)
			{
				max2 = max1;
				max1 = aux;
			}
			else if(aux > max2)
				max2 = aux;
		}
		diametro = std::min(diametro, suma(max1, max2));
	}
		
	return diametro;
}

#endif /* problema2_hpp */
