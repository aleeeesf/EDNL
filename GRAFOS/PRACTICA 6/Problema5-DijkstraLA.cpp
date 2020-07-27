#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\grafoPLA.h>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\listaenla.h>

using namespace std;

template <typename tCoste>
tCoste acceso(const typename GrafoP<tCoste>::vertice& a, const typename GrafoP<tCoste>::vertice& b, const GrafoP<tCoste>& G);

int main(){
	
	
	GrafoP<int> G(6);
	Lista<GrafoP<int>::vertice_coste> L = G.adyacentes(1);
	Lista<GrafoP<int>::vertice_coste>::posicion p = L.primera();

	/*
	G[1][2] = 1;
	G[1][5] = 2;
	G[2][3] = 3;
	G[2][4] = 4;
	G[2][5] = 5;
	G[3][2] = 6;
	G[3][4] = 7;
	G[4][2] = 8;
	G[4][3] = 9;
	G[4][5] = 10;
	G[5][2] = 11;	
	G[5][3] = 12;	
	G[5][4] = 13;	*/	
	return 0;
}

template <typename tCoste>
tCoste acceso(const typename GrafoP<tCoste>::vertice& a, const typename GrafoP<tCoste>::vertice& b, const GrafoP<tCoste>& G)
{
	
	Lista<GrafoP<int>::vertice_coste> L = G.adyacentes(a);
	Lista<GrafoP<int>::vertice_coste>::posicion p = L.primera();
	bool encontrado = false;
	
	while(p != L.fin() && !encontrado)
	{
		
		if(L.elemento(p).v == b){
			
			encontrado = true;
			return L.elemento(p).c;
		}
		
		p = L.siguiente(p);
	}

	if(!encontrado) return GrafoP<tCoste>::INFINITO;

}

template <typename tCoste>
vector<tCoste> Dijkstra(const GrafoP<tCoste>& G,
                        typename GrafoP<tCoste>::vertice origen,
                        vector<typename GrafoP<tCoste>::vertice>& P)
// Calcula los caminos de coste mínimo entre origen y todos los
// vértices del grafo G. En el vector D de tamaño G.numVert()
// devuelve estos costes mínimos y P es un vector de tamaño
// G.numVert() tal que P[i] es el último vértice del camino
// de origen a i.
{
   typedef typename GrafoP<tCoste>::vertice vertice;
   vertice v, w;
   const size_t n = G.numVert();
   vector<bool> S(n, false);                  // Conjunto de vértices vacío.
   vector<tCoste> D;                          // Costes mínimos desde origen.

   // Iniciar D y P con caminos directos desde el vértice origen.
	//Rellenamos el vector D con los pesos de los vertices adyacentes a origen.
	for(v = 0; v < G.numVert(); v++)
		D[v] = Acceder_lista_adayacencia(origen, v, G);
   D[origen] = 0;                             // Coste origen-origen es 0.
   P = vector<vertice>(n, origen);

   // Calcular caminos de coste mínimo hasta cada vértice.
   S[origen] = true;                          // Incluir vértice origen en S.
   for (size_t i = 1; i <= n-2; i++) {
      // Seleccionar vértice w no incluido en S
      // con menor coste desde origen.
      tCoste costeMin = GrafoP<tCoste>::INFINITO;
      for (v = 0; v < n; v++)
         if (!S[v] && D[v] <= costeMin) {
            costeMin = D[v];
            w = v;
         }
      S[w] = true;                          // Incluir vértice w en S.
      // Recalcular coste hasta cada v no incluido en S a través de w.
      for (v = 0; v < n; v++)
         if (!S[v]) {
            tCoste Owv = suma(D[w], acceder(w,v,G));
            if (Owv < D[v]) {
               D[v] = Owv;
               P[v] = w;
            }
         }
   }
   return D;
}

