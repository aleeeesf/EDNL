#include "grafoPMC.h"

typedef int tCoste; //El coste se expresará con enteros

template <typename tCoste> tCoste suma(tCoste x, tCoste y)
{
   const tCoste INFINITO = GrafoP<tCoste>::INFINITO;
   if (x == INFINITO || y == INFINITO)
      return INFINITO;
   else
      return x + y;
}

vector<tCoste> DijkstraInv(const GrafoP<tCoste>& G,
                           typename GrafoP<tCoste>::vertice destino,
                           vector<typename GrafoP<tCoste>::vertice>& P)
// Calcula los caminos de coste mínimo hasta destino desde todos los demás
// vértices del grafo G. En el vector D de tamaño G.numVert()
// devuelve estos costes mínimos y P es un vector de tamaño
// G.numVert() tal que P[i] es el último vértice del camino
// de origen a i.
{
   typedef typename GrafoP<tCoste>::vertice vertice;
   vertice v, w;
   const size_t n = G.numVert();
   vector<bool> S(n, false);                  // Conjunto de vértices vacío.
   vector<tCoste> D;                          // Costes mínimos hasta destino.
   int i;

   // Iniciar D y P con caminos directos hasta el vértice destino.
   for(i=0; i <= G.numVert() - 1; i++)
   {
      D[i] = G[i][destino]; //Se inicializa el vector entero con los costes directos desde i hasta destino 
   }
   D[destino] = 0;                             // Coste destino-destino es 0.
   P = vector<vertice>(n, destino); //P alberga el nodo por el que hay que pasar antes para llegar al destino desde i

   // Calcular caminos de coste mínimo hasta cada vértice.
   S[destino] = true;                          // Incluir vértice destino en S.
   for (size_t i = 1; i <= n-2; i++) 
   {
      // Seleccionar vértice w no incluido en S con menor coste hasta destino.
      tCoste costeMin = GrafoP<tCoste>::INFINITO;
      for (v = 0; v <= n-1; v++)
      {
         if (!S[v] && D[v] <= costeMin) 
         {
            costeMin = D[v];
            w = v;
         }
      }
      S[w] = true;                          // Incluir vértice w en S.
      // Recalcular coste desde cada v no incluido en S a través de w hasta destino
      for (v = 0; v < n; v++)
         if (!S[v]) 
         {
            tCoste vwd = suma(D[w], G[v][w]);
            if (vwd < D[v]) 
            {
               D[v] = vwd;
               P[v] = w;
            }
         }
   }
   return D;
}
