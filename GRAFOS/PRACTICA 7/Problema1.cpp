#include <iostream>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>

using namespace std;


template <typename tCoste>
matriz<tCoste> Floyd_MAX(const GrafoP<tCoste>& G,
                     matriz<typename GrafoP<tCoste>::vertice>& P);
          
		  
template <typename tCoste>          
struct Viaje{
	
	tCoste coste;
	typename GrafoP<tCoste>::vertice origen;
	typename GrafoP<tCoste>::vertice destino;
};

int main()
{
	
	
	return 0;
}

template <typename tCoste>
tCoste Viaje_mas_caro(const GrafoP<tCoste>& G)
{
	tCoste mayor = -1;		
	Viaje<tCoste> v;
	int origen, destino;
	typename GrafoP<tCoste>::vertice P;
	matriz<tCoste> M = Floyd_MAX(G,P);
	
	for(int i=0; i<=G.numVert()-1; ++i)
	{		
		for(int j=0; j<= G.numVert()-1; ++j)
		{
			if(M[i][j] > mayor)
			{
				mayor = M[i][j];
				origen = i;
				destino = j;
			}			
		}
	}

	v.coste = mayor;
	v.origen = origen;
	v.destino = destino;
	
	return v;
	
	
}



template <typename tCoste>
matriz<tCoste> Floyd_MAX(const GrafoP<tCoste>& G,
                     matriz<typename GrafoP<tCoste>::vertice>& P)
// Calcula los caminos de coste mínimo entre cada
// par de vértices del grafo G. Devuelve una matriz
// de costes mínimos A de tamaño n x n, con n = G.numVert()
// y una matriz de vértices P de tamaño n x n, tal que
// P[i][j] es el vértice por el que pasa el camino de coste
// mínimo de i a j, si este vértice es i el camino es directo.
{
   typedef typename GrafoP<tCoste>::vertice vertice;
   const size_t n = G.numVert();
   matriz<tCoste> A(n);   // matriz de costes mínimos

   // Iniciar A y P con caminos directos entre cada par de vértices.
   P = matriz<vertice>(n);
   for (vertice i = 0; i < n; i++) {
      A[i] = G[i];                    // copia costes del grafo
      A[i][i] = 0;                    // diagonal a 0
      P[i] = vector<vertice>(n, i);   // caminos directos
   }
   // Calcular costes mínimos y caminos correspondientes
   // entre cualquier par de vértices i, j
   for (vertice k = 0; k < n; k++)
      for (vertice i = 0; i < n; i++)
         for (vertice j = 0; j < n; j++) {
            tCoste ikj = suma(A[i][k], A[k][j]);
            if ((ikj > A[i][j] && ikj != GrafoP<tCoste>::INFINITO) || A[i][j] == GrafoP<tCoste>::INFINITO) {
               A[i][j] = ikj;
               P[i][j] = k;
            }
         }
   return A;
}
