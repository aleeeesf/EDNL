#include <iostream>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>
using namespace std;

struct Casilla
{	
	int fila;
	int columna;	
};

struct pared
{	
	Casilla casillaA;
	Casilla casillaB;	
};

struct Camino
{
	vector<Casilla> casillas_que_pasa;
};

//Convierte un vertice de un grafo en una casilla
Casilla vertice_a_casilla(const typename GrafoP<int>::vertice& v, int N)
{
	Casilla aux;
	aux.columna = v%N;
	aux.fila = v/N;
	return aux;
	
}

//Convierte una casilla en un vertice del grafo
GrafoP<int>::vertice casilla_a_vertice(const Casilla& a, int N)
{
	return(N*a.columna + a.fila);
}

bool adyacentes(const Casilla& a, const Casilla& b)
{
	if((abs(a.fila - b.fila) + abs(a.columna - b.columna)) == 1) return true;
	else return false;
}
//N: dimensón del laberinto
//paredes: conjunto de paredes del casillero
//entrada: casilla en la empieza el juego
//salida: casilla en la que termina
Camino Recorrido (int N,const vector<pared>& paredes, const Casilla& entrada, const Casilla& salida)
{
	
	GrafoP<int> G(N*N);	//Grafo ponderado de NxN vertices
	Casilla A, B;
	typename GrafoP<int>::vertice x, z;
	vector<int> costes_minimos;
	vector<GrafoP<int>::vertice> P;
	Camino c;
	   
	//Rellenamos la matriz de costes
	for(typename GrafoP<int>::vertice i = 0; i <= G.numVert()-1; ++i)
	{		
		for(typename GrafoP<int>::vertice j = 0; j <= G.numVert()-1; ++j)
		{
			A = vertice_a_casilla(i,N);
			B = vertice_a_casilla(j,N);
			
			if(i == j) G[i][j] = 0;
			else if(adyacentes(A,B)) //Si esta arriba, abajo, derecha o izquierda -> es adyacente
			{
				G[i][j] = 1;
			}
			else G[i][j] = GrafoP<int>::INFINITO;			
		}
	}
	
	for(int i = 0; i<=paredes.size()-1; ++i){
		
		x = casilla_a_vertice(paredes[i].casillaA, N);
		z = casilla_a_vertice(paredes[i].casillaB, N);
		G[x][z] = GrafoP<int>::INFINITO;	
		G[x][z] = GrafoP<int>::INFINITO;
	}
	
	costes_minimos = Dijkstra(G,casilla_a_vertice(entrada,N),P);
	
	for(int i=0; i<=P.size() - 1; i++)
      c.casillas_que_pasa[i] = vertice_a_casilla(P[i], N); //Guardo el camino con las casillas por donde debo coger

   return(c);
}
