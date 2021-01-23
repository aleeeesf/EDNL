#include <iostream>
#include <vector>
#include <cassert>
#include <math.h>
#include <float.h>
#include <limits>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>

using namespace std;
typedef double tCoste;
using vertice = GrafoP<tCoste>::vertice;

GrafoP<tCoste> G(5);


/*

//FLoyd
matriz<vertice> Q;
Floyd(G,Q);

//Dijkstra
vector<vertice> P;
vector<tCoste> costes_min;

costes_min = Dijkstra(G,origen,P);


*/

vertice buscar_minimo(const vertice& actual, const matriz<tCoste>& Costes,const vector<bool>& repartido)
{
	size_t N_Ciudades = repartido.size();
	double coste_min = DBL_MAX, coste;
	vertice candidata;
	
	
	for(int i = 0; i < N_Ciudades; i++)
	{
		if(!repartido[i] && i != actual)
		{
			coste = Costes[actual][i];
			
			if(coste < coste_min)
			{
				coste_min = coste;
				candidata = i;
			}
		}
	}
	
	return candidata;
	
}

bool clientes_por_repartir(const vector<bool>& repartido)
{
	bool quedan = false;
	
	for(int i = 0; i < repartido.size(); i++)
	{
		if(!repartido[i]) quedan = true;
	}
	
	return quedan;
}

tCoste distribucion_bebidas(const GrafoP<tCoste>& Distancias, const vertice& central,const int capacidad_maxima)
{
	size_t N_Ciudades = Distancias.numVert();
	matriz<vertice> Q(N_Ciudades);	
	matriz<tCoste> Distancias_Minimas(N_Ciudades);
	tCoste distancia_total = 0;
	int carga_actual = capacidad_maxima;
	int clientes_por_repartir = N_Ciudades;
	vertice candidata, actual;
	vector<bool> repartido(false,N_Ciudades);
	
	Distancias_Minimas = Floyd(Distancias,Q);
	
	//1.Mientras queden por repartir
	//2.Buscar el cliente más proximo por repartir
	//3.Entregamos las cajas
	//Si quedan por repartir -> Buscar el siguiente
	//Si no queda suficiente -> Volver al alamcen
	
	actual = central;
	repartido[actual] = true;
	
	while(clientes_por_repartir(repartido))
	{
		candidata = buscar_minimo(actual, Distancias_Minimas, repartido);		
		
		if(carga_actual > 0 && carga_actual >= Pedido(candidata))
		{						
			distancia_total += Distancias_Minimas[actual][candidata];
			carga_actual -= Pedido(candidata);
			actual = candidata;		
			repartido[actual] = true;
		}
		
		else
		{
			distancia_total += Distancias_Minimas[actual][candidata] + Distancias_Minimas[candidata][central];
			//Quitarle a pedido(candidata) la carga actual
			carga_actual = capacidad_maxima;
			actual = central;
		}	
	}
	
	return distancia_total;
	
}

