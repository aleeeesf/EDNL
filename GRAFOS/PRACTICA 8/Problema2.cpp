#include <iostream>
#include <vector>
#include <cassert>
#include <math.h>
#include <algorithm>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\particion.hpp"

using namespace std;
typedef double tCoste;
class Particion;	//Declaracion adelantada
using vertice = GrafoP<tCoste>::vertice;

struct Ciudad //Coordenadas cartesianas(x,y)
{
	double x;
	double y;
};

struct Linea_Aerea
{
	vertice a;
	vertice b;
	tCoste distancia;
};


/*DECLARACIONES ADELANTADAS*/
tCoste distancia(const Ciudad& ciudad_a, const Ciudad& ciudad_b);
int num_islas(const GrafoP<tCoste>& G, int N_ciudades, Particion& P);
matriz<Linea_Aerea> LineasAereas_Tombuctu(const matriz<bool>& Tombuctu, const vector<Ciudad>& ciudades, int N_ciudades, matriz<tCoste>& M);
vector<vertice> Representantes_islas(const Particion& P, int N_islas, int N_ciudades);
bool existe(const vector<vertice>& representantes, const vertice& v);
int Representante_a_isla(int x, const vector<vertice>& representantes);


int main()
{
	//Primero buscamos el numero de islas
	//Luego buscamos el representante de cada isla (de la particion)
	return 0;
}


tCoste distancia(const Ciudad& ciudad_a, const Ciudad& ciudad_b)
{
	tCoste a = ciudad_a.x - ciudad_b.x;
	tCoste b = ciudad_a.y - ciudad_b.y;
	
	return sqrt(pow(a,2) + pow(b,2));
}

int num_islas(const GrafoP<tCoste>& G, int N_ciudades, Particion& P)
{
	
	int rep1, rep2, N_islas;
	
	N_islas = N_ciudades;
		
	for(int i = 0; i <= N_ciudades-1; i++)
	{
		for(int j = 0; j <= N_ciudades-1; j++)
		{
			if(G[i][j] && i != j)
			{
				rep1 = P.encontrar(i);
				rep2 = P.encontrar(j);
				
				if(rep1 != rep2)
				{
					P.unir(rep1, rep2);
					N_ciudades--;
				}
			}			
		}
	}
}

vector<vertice> Representantes_islas(const Particion& P, int N_islas, int N_ciudades)
{
	int codigo = 0, num_representantes = 0, i = 0;
	vector<vertice> representantes(N_islas, -1);
	
	while(num_representantes <= N_islas && i <= N_ciudades-1)
	{
		codigo = P.encontrar(i);
		
		if(!existe(representantes,codigo))
		{
			representantes.push_back(codigo);
			num_representantes++;
		}
		i++;
		
	}

	return representantes;	
}

bool existe(const vector<vertice>& representantes, const vertice& v)
{
	auto i = find(representantes.begin(), representantes.end(), v);	//Buscamos el elemento
	
	if(i != representantes.end()) return true;	//Si no se llega al final del vector, se ha encontrado el elemento
	else return false; //Ha llegado al final -> NO se ha encontrado el elemento
}

int Representante_a_isla(int x, const vector<vertice>& representantes)
{
	int isla = -1;
	for(int i = 0; i<= representantes.size()-1; i++)
	{
		if(representantes[i] == x) isla = i;
	}	
	
	return isla;
}


matriz<Linea_Aerea> LineasAereas_Tombuctu(const GrafoP<tCoste>& G, const vector<Ciudad>& ciudades, int N_ciudades)
{
	Particion P(N_ciudades);	
	vector<vertice> Representantes;
	int Isla1, Isla2, dist;
	Linea_Aerea LA;

		
	//Calculamos el número de islas, y modificamos la particion P
	int N_islas = num_islas(G,N_ciudades,P);
	
	//Buscamos el representante de cada isla
	Representantes = Representantes_islas(P, N_islas, N_ciudades);
	
	//Creamos una matriz 
	matriz<tCoste> Costes_islas(N_islas, GrafoP<tCoste>::INFINITO);
	matriz<Linea_Aerea> Aerolineas(N_islas);
	for(int i = 0; i <= N_ciudades-2; i++)
	{
		Isla1 = Representante_a_isla(P.encontrar(i), Representantes);
		for(int j = i+1; j <= N_ciudades-1; j++)
		{
			Isla2 = Representante_a_isla(P.encontrar(j), Representantes);
				
			if(Isla1 != Isla2)
			{
				dist = distancia(ciudades[i],ciudades[j]);
				
				if(dist < Costes_islas[Isla1][Isla2])
				{
					Costes_islas[Isla1][Isla2] = dist;
					Costes_islas[Isla2][Isla1] = dist;
					LA.a = i;
                    LA.b = j;
                    LA.distancia = dist;
                    Aerolineas[Isla1][Isla2] = LA;
                    Aerolineas[Isla2][Isla1] = LA;
				}
			}						
		}		
	}
	
	return Aerolineas;
}
