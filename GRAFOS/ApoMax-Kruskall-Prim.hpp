/*--------------------------------------------------------*/
/* ApoMax.h                                                  */
/*                                                        */
/* clase ApoMax genÈrica: ¡rbol parcialmente ordenado con    */
/*    elementos de tipo T en los nodos, cuyo tamaÒo       */
/*    (par·metro de entrada del constructor) puede ser    */
/*    distinto para cada objeto de la clase ApoMax.          */
/*    Los elementos se ordenan con el operador < del tipo */
/*    T, de modo que el de cada nodo es menor que el de   */
/*    todos sus descendientes.                            */
/*--------------------------------------------------------*/

#ifndef ApoMax_H
#define ApoMax_H
#include <cassert>
#include <iostream>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\grafoPMC.h>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\particion.h>
template <typename T> class ApoMax {
public:
   explicit ApoMax(size_t maxNodos);       // constructor
   void insertar(const T& e);
   void suprimir();
   const T& cima() const;
   bool vacio() const;
   ApoMax(const ApoMax& A);                   // ctor. de copia
   ApoMax& operator =(const ApoMax& A);       // asignaciÛn de apo
   ~ApoMax();                              // destructor
private:
   typedef int nodo; // Ìndice de la matriz
                     // entre 0 y maxNodos-1
   T* nodos;      // vector de nodos
   int maxNodos;  // tamaÒo del vector
   nodo ultimo;   // ˙ltimo nodo del ·rbol

   nodo padre(nodo i) const { return (i-1)/2; }
   nodo hIzq(nodo i)  const { return 2*i+1; }
   nodo hDer(nodo i)  const { return 2*i+2; }
   void flotar(nodo i);
   void hundir(nodo i);
};

/*--------------------------------------------------------*/
/* clase Apo genÈrica: Vector de posiciones relativas.    */
/*    Un ApoMax de n nodos se almacena en celdas             */
/*    consecutivas del vector, desde 0 hasta n-1 (ultimo).*/
/*    La raÌz del ApoMax se almacena en la celda 0 del       */
/*    vector. Al hijo izquierdo del nodo i le corresponde */
/*    la celda 2i+1 y al hijo derecho la celda 2i+2.      */
/*                                                        */
/* ImplementaciÛn de operaciones                          */
/*--------------------------------------------------------*/

template <typename T>
inline ApoMax<T>::ApoMax(size_t maxNodos) :
   nodos(new T[maxNodos]),
   maxNodos(maxNodos),
   ultimo(-1)   // ApoMax vacÌo
{}

template <typename T>
inline void ApoMax<T>::insertar(const T& e)
{
   assert(ultimo < maxNodos-1);   // ApoMax no lleno
   nodos[++ultimo] = e;
   flotar(ultimo);
}

template <typename T>
inline void ApoMax<T>::suprimir()
{
   assert(ultimo > -1);   // ApoMax no vacÌo
   if (--ultimo > -1) {     // ApoMax no queda vacÌo.
      nodos[0] = nodos[ultimo+1];
      if (ultimo > 0)     // Quedan dos o m·s elementos. Reordenar
         hundir(0);
   }
}

template <typename T>
inline const T& ApoMax<T>::cima() const
{
   assert(ultimo > -1);   // ApoMax no vacÌo
   return nodos[0];
}

template <typename T>
inline bool ApoMax<T>::vacio() const
{
   return (ultimo == -1);
}

template <typename T>
inline ApoMax<T>::~ApoMax()
{
   delete[] nodos;
}

template <typename T>
ApoMax<T>::ApoMax(const ApoMax<T>& A) :
   nodos(new T[A.maxNodos]),
   maxNodos(A.maxNodos),
   ultimo(A.ultimo)
{
   // copiar el vector
   for (nodo n = 0; n <= ultimo; n++)
      nodos[n] = A.nodos[n];
}

template <typename T>
ApoMax<T>& ApoMax<T>::operator =(const ApoMax<T>& A)
{
   if (this != &A) {   // evitar autoasignaciÛn
      // Destruir el vector y crear uno nuevo si es necesario
      if (maxNodos != A.maxNodos) {
         delete[] nodos;
         maxNodos = A.maxNodos;
         nodos = new T[maxNodos];
      }
      ultimo = A.ultimo;
      // Copiar el vector
      for (nodo n = 0; n <= ultimo; n++)
         nodos[n] = A.nodos[n];
   }
   return *this;
}

// MÈtodos privados

template <typename T>
void ApoMax<T>::flotar(nodo i)
{
   T e = nodos[i];
   while (i > 0 && e > nodos[padre(i)]) {
      nodos[i] = nodos[padre(i)];
      i = padre(i);
   }
   nodos[i] = e;   // colocar e
}

template <typename T>
void ApoMax<T>::hundir(nodo i)
{
   bool fin = false;
   T e = nodos[i];
   while (hIzq(i) <= ultimo && !fin) {   // hundir e
      nodo hMax;   // hijo menor del nodo i
      if (hIzq(i) < ultimo && nodos[hDer(i)] > nodos[hIzq(i)])
         hMax = hDer(i);
      else
         hMax = hIzq(i);
      if (nodos[hMax] > e) { // subir el hijo menor
         nodos[i] = nodos[hMax];
         i = hMax;
      }
      else   // e <= hMax
         fin = true;
   }
   nodos[i] = e;   // colocar e
}


/*----------------------------------------------------------------------------*/
/* √Årboles generadores de coste m√≠nimo                                        */
/*----------------------------------------------------------------------------*/
template <typename tCoste>
GrafoP<tCoste> PrimMax(const GrafoP<tCoste>& G)
// Devuelve un √°rbol generador de coste m√≠nimo
// de un grafo no dirigido ponderado y conexo G.
{
   assert(!G.esDirigido());

   typedef typename GrafoP<tCoste>::vertice vertice;
   typedef typename GrafoP<tCoste>::arista arista;
   const tCoste INFINITO = GrafoP<tCoste>::INFINITO;
   arista a;
   const size_t n = G.numVert();
   GrafoP<tCoste> g(n);      // √Årbol generador de coste m√≠nimo.
   vector<bool> U(n, false); // Conjunto de v√©rtices incluidos en g.
   ApoMax<arista> A(n*(n-1)/2-n+2); // Aristas adyacentes al √°rbol g
                                 // ordenadas por costes.
   U[0] = true;   // Incluir el primer v√©rtice en U.
   // Introducir en el ApoMax las aristas adyacentes al primer v√©rtice
   for (vertice v = 1; v < n; v++)
      if (G[0][v] != INFINITO)
         A.insertar(arista(0, v, G[0][v]));
   for (size_t i = 1; i <= n-1; i++) {     // Seleccionar n-1 aristas.
      // Buscar una arista a de coste m√≠nimo que no forme un ciclo.
      // Nota: Las aristas en A tienen sus or√≠genes en el √°rbol g.
      do {
         a = A.cima();
         A.suprimir();
      } while (U[a.dest]); // a forma un ciclo (a.orig y a.dest est√°n en U y en g).
      // Incluir la arista a en el √°rbol g y el nuevo v√©rtice u en U.
      g[a.orig][a.dest] = g[a.dest][a.orig] = a.coste;
      vertice u = a.dest;
      U[u] = true;
      // Introducir en el ApoMax las aristas adyacentes al v√©rtice u
      // que no formen ciclos.
      for (vertice v = 0; v < n; v++)
         if (!U[v] && G[u][v] != INFINITO)
            A.insertar(arista(u, v, G[u][v]));
   }
   return g;
}

template <typename tCoste>
GrafoP<tCoste> KruskallMax(const GrafoP<tCoste>& G)
// Devuelve un √°rbol generador de coste m√≠nimo
// de un grafo no dirigido ponderado y conexo G.
{
   assert(!G.esDirigido());

   typedef typename GrafoP<tCoste>::vertice vertice;
   typedef typename GrafoP<tCoste>::arista arista;
   const tCoste INFINITO = GrafoP<tCoste>::INFINITO;
   const size_t n = G.numVert();
   GrafoP<tCoste> g(n);   // √Årbol generador de coste m√≠nimo.
   Particion P(n);   // Partici√≥n inicial del conjunto de v√©rtices de G.
   ApoMax<arista> A((n*n-1)/2);    // Aristas de G ordenadas por costes.

   // Copiar aristas del grafo G en el ApoMax A.
   for (vertice u = 0; u < n; u++)
      for (vertice v = u+1; v < n; v++)
         if (G[u][v] != INFINITO)
            A.insertar(arista(u, v, G[u][v]));

   size_t i = 1;
   while (i <= n-1) {   // Seleccionar n-1 aristas.
      arista a = A.cima(); // arista de menor coste
      A.suprimir();
      vertice u = P.encontrar(a.orig);
      vertice v = P.encontrar(a.dest);
      if (u != v) { // Los extremos de a pertenecen a componentes distintas
         P.unir(u, v);
         // Incluir la arista a en el √°rbol g
         g[a.orig][a.dest] = g[a.dest][a.orig] = a.coste;
         i++;
      }
   }
   return g;
}


#endif // ApoMax_H
