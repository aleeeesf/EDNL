#include <iostream>
#include <vector>
#include <cassert>
#include <math.h>
#include <cfloat>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\particion.h"

using namespace std;
typedef double tCoste;
using vertice = GrafoP<tCoste>::vertice;
class Particion;

struct Ciudad
{
	float x, y;
};

struct Linea_Aerea
{
	vertice a;
	vertice b;
	tCoste distancia;
};

struct Distribucion
{
	Particion Islas;
	matriz<tCoste> Costes;
};

float distancia(const Ciudad& a, const Ciudad& b)
{
	float x = abs(a.x - b.x);
	float y = abs(a.y - b.y);
	
	return sqrt(pow(x,2)+pow(y,2));	
}

int Calcular_islas(const GrafoP<bool>& Carreteras, Particion& P)
{
	size_t N = Carreteras.numVert();
	int res1, res2, cont_uniones, islas;
	
	
	for(int i = 0; i < N; i++)
	{
		res1 = P.encontrar(i);
		for(int j = 0; j < N; j++)
		{
			
			if(Carreteras[i][j] && i != j)
			{
				res2 = P.encontrar(j);
			
				if(res1 != res2)
				{
					P.unir(res1,res2);
					cont_uniones++;
				}
			}
		}
	}
	
	islas = N - cont_uniones;
	
	return islas;	
}


void Calcular_Representante(vector<vertice>& Representantes, const Particion& P, int N_Ciudades)
{
	int res;
	
	for(int i = 0; i < N_Ciudades; i++)
	{
		res = P.encontrar(i);
		if(!existe(Representantes, res)) Representantes.push_back(i);
	}
}

bool existe(vector<vertice>& Representantes, vertice res)
{
	bool encontrado = false;
	
	for(int i = 0; i < Representantes.size(); i++)
	{
		if(Representantes[i] == res) encontrado = true;
	}
	
	return encontrado;
}

vertice Representante_a_isla(const vector<vertice>& Representantes, int ciudad)
{
	int isla;
	for(int i = 0; i < Representantes.size(); i++)
	{
		if(Representantes[i] == ciudad) isla = i;
	}
	
	return isla;
}

matriz<Linea_Aerea> Tombuctu2(const GrafoP<bool>& Carreteras, const vector<Ciudad>& Ciudades)
{
	int N_Ciudades = Ciudades.size();
	int N_islas = Calcular_islas(Carreteras);
	tCoste dist;
	Particion P(N_Ciudades);
	vector<vertice> Representantes(N_islas);
	
	Calcular_Representantes(Representantes, P, N_Ciudades);
	
	matriz<Linea_Aerea> Lineas(N_Islas);
	
	for(int i = 0; i < N_Ciudades-1; i++)
	{
		isla1 = Representante_a_isla(Representantes, P.encontrar(i));
		
		for(int j = i; j < N_Ciudades; j++)
		{
			isla2 = Representante_a_isla(Representantes, P.encontrar(j));	
			
			if(isla1 != isla2)
			{
				dist = distancia(i,j)
				if(dist < Lineas[Isla1][Isla2].distancia)
				{
					Lineas[Isla1][Isla2].distancia = dist;
					Lineas[Isla1][Isla2].a = i;
					Lineas[Isla1][Isla2].b = j;
					
					Lineas[Isla2][Isla1].distancia = dist;
					Lineas[Isla2][Isla1].a = i;
					Lineas[Isla2][Isla1].b = j;
				}
			}
		}
	}
	
	return Lineas;
}

