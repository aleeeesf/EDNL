#include <iostream>
#include <vector>
#include <cassert>
#include <math.h>
#include <algorithm>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\particion.h"

using namespace std;
typedef double tCoste;
class Particion;	//Declaracion adelantada
using vertice = GrafoP<tCoste>::vertice;

struct Ciudad //Coordenadas cartesianas(x,y)
{
	double x;
	double y;
};

/*DECLARACIONES ADELANTADAS*/
tCoste distancia(const Ciudad& ciudad_a, const Ciudad& ciudad_b);
int num_islas(const GrafoP<tCoste>& G, int N_ciudades, Particion& P);
Particion LineasAereas_Tombuctu(const matriz<bool>& Tombuctu, const vector<Ciudad>& ciudades, int N_ciudades, matriz<tCoste>& M);
vector<vertice> Representantes_islas(const Particion& P, int N_islas, int N_ciudades);
bool existe(const vector<vertice>& representantes, const vertice& v);

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
	else return false; //NO se ha encontrado el elemento
}

Particion LineasAereas_Tombuctu(const GrafoP<tCoste>& G, const vector<Ciudad>& ciudades, int N_ciudades)
{
	Particion P(N_ciudades);	
	
	//Calculamos el número de islas
	int N_islas = num_islas(G,N_ciudades,P);
	
	//Buscamos el representante de cada isla
	Representantes_islas(P, N_islas, N_ciudades);
	
	while()
	
	
	
}
