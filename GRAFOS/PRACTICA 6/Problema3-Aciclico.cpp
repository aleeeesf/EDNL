#include <iostream>
#include <iomanip>
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h"
using namespace std;

template <typename tCoste>
matriz<tCoste> Floyd_MODIF(const GrafoP<tCoste>& G,
                     matriz<typename GrafoP<tCoste>::vertice>& P);

template <typename tCoste>
bool ciclos(const GrafoP<tCoste>& G);

template <typename tCoste>
bool aciclico(const GrafoP<tCoste>& G);

int main(){
	
	GrafoP<int> G(6);
	G[0][2] = 5;
	G[0][5] = 7;
	G[1][2] = 3;
	G[2][3] = 8;
	G[2][4] = 2;
	G[5][4] = 4;
	G[2][0] = 10;
	
	cout<<G<<endl;
	matriz<typename GrafoP<int>::vertice> P;
	matriz<int> K = Floyd_MODIF(G,P);
	cout<<K[0][0]<<endl<<K[1][1]<<endl<<K[2][2]<<endl<<K[3][3]<<endl<<K[4][4]<<endl<<K[5][5]<<endl;
	
	if(aciclico(G)) cout<<"yes";
	
	return 0;
}


template <typename tCoste>
matriz<tCoste> Floyd_MODIF(const GrafoP<tCoste>& G,
                     matriz<typename GrafoP<tCoste>::vertice>& P)
{
   typedef typename GrafoP<tCoste>::vertice vertice;
   const size_t n = G.numVert();
   matriz<tCoste> A(n);   // matriz de costes mínimos

   // Iniciar A y P con caminos directos entre cada par de vértices.
   P = matriz<vertice>(n);
   for (vertice i = 0; i < n; i++) {
      A[i] = G[i];                    // copia costes del grafo
      A[i][i] = GrafoP<tCoste>::INFINITO;                    // diagonal a INFINITO
      P[i] = vector<vertice>(n, i);   // caminos directos
   }
   // Calcular costes mínimos y caminos correspondientes
   // entre cualquier par de vértices i, j
   for (vertice k = 0; k < n; k++)
      for (vertice i = 0; i < n; i++)
         for (vertice j = 0; j < n; j++) {
            tCoste ikj = suma(A[i][k], A[k][j]);
            if (ikj < A[i][j]) {
               A[i][j] = ikj;
               P[i][j] = k;
            }
         }
   return A;
}

template <typename tCoste>
bool ciclos(const GrafoP<tCoste>& G)
{	
	matriz<typename GrafoP<int>::vertice> P;
	matriz<tCoste> K = Floyd_MODIF(G,P);
	bool encontrado = false;
	int i = 0, n = G.numVert();
	
	while(i<=n-1 && !encontrado){
		if(K[i][i] != GrafoP<tCoste>::INFINITO) encontrado = true;
		i++;
	} 
	
	return encontrado;
}

template <typename tCoste>
bool aciclico(const GrafoP<tCoste>& G)
{
	return ciclos(G);
}


