#include <iostream>
#include <vector>
#include <limits>
#include <cfloat>
#include <cmath>
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h"

using namespace std;
typedef double tCoste;
using vertice = GrafoP<tCoste>::vertice;

struct Puente
{
	vertice Ciudad_Fobos;
	vertice Ciudad_Deimos;
	tCoste Coste_Total;
};

struct Ciudad
{
	double x;
	double y;
};

double distancia(const Ciudad& c1, const Ciudad& c2)
{
	double a = abs(c1.x - c2.x);
	double b = abs(c1.y - c2.y);	
	return sqrt(pow(a,2)+pow(b,2));
}

GrafoP<tCoste> Costes_Carreteras(const matriz<bool>& Carretera, const vector<Ciudad>& Ciudades)
{
	size_t N_Ciudades = Carretera.dimension();
	GrafoP<tCoste> G(N_Ciudades);

	
	for(int i = 0; i <= N_Ciudades-1; i++)
	{
		for(int j = 0; j <= N_Ciudades-1; j++)
		{
			if(Carretera[i][j])
			{
				G[i][j] = distancia(Ciudades[i],Ciudades[j]);	
			}						
		}
	}
	
	return G;
}

tCoste suma3(tCoste a, tCoste b, tCoste c)
{
	return suma(a, suma(b,c));
}

Puente Determinar_Puente(const matriz<tCoste>& Fobos, const matriz<tCoste>& Deimos, const vector<Ciudad>& Ciudades_Fobos, 
			const vector<Ciudad>& Ciudades_Deimos,const vector<bool>& Costeras_Fobos, const vector<bool>& Costeras_Deimos)
{
	size_t N_Fobos = Fobos.dimension();
	size_t N_Deimos = Deimos.dimension();
	vector<tCoste> Minimos_CFobos;	//Costes de ir desde la costera a las demas ciudades de la isla
	vector<tCoste> Minimos_CDeimos; //Costes de ir desde la costera a las demas ciudades de la isla
	tCoste Coste;
	Puente P;
	
	P.Coste_Total = std::numeric_limits<tCoste>::max();
	
	for(int i = 0; i <= N_Fobos-1; i++)
	{
		if(Costeras_Fobos[i])
		{
			for(int j = 0; j <= N_Fobos-1; j++)
			{
				Minimos_CFobos[i] = suma3(Fobos[i][j],Fobos[j][i],Minimos_CFobos[i]);
			}
		}
	}
	
	for(int i = 0; i <= N_Deimos-1; i++)
	{
		if(Costeras_Fobos[i])
		{
			for(int j = 0; j <= N_Deimos-1; j++)
			{
				Minimos_CDeimos[i] = suma3(Deimos[i][j],Deimos[j][i],Minimos_CDeimos[i]);
			}
		}
	}
	
	
	for(int i = 0; i <= N_Fobos-1; i++)
	{
		if(Costeras_Fobos[i])
		{
			for(int j = 0; j <= N_Deimos-1; j++)
			{
				if(Costeras_Deimos[j])
				{
					Coste = Minimos_CFobos[i] + Minimos_CDeimos[j] + distancia(Ciudades_Fobos[i],Ciudades_Deimos[j]); 
					
					if(Coste < P.Coste_Total)
					{
						P.Ciudad_Fobos = i;
						P.Ciudad_Deimos = j;
						P.Coste_Total = Coste;
					}
				}
			}	
		}
	}	
}


Puente Zelandia(const matriz<bool>& Fobos, const matriz<bool>& Deimos, const vector<Ciudad>& Ciudades_Fobos, 
	const vector<Ciudad>& Ciudades_Deimos, const vector<bool>& Costeras_Fobos, const vector<bool>& Costeras_Deimos)
{
	Puente P;
	
	size_t N_Fobos = Fobos.dimension();
	size_t N_Deimos = Deimos.dimension();
	
	GrafoP<tCoste> F(N_Fobos);
	GrafoP<tCoste> D(N_Deimos);
	
	matriz<tCoste> F_Minimos(N_Fobos);	
	matriz<tCoste> D_Minimos(N_Deimos);
	
	matriz<vertice> R(N_Fobos);
	matriz<vertice> Q(N_Deimos);
	
	F = Costes_Carreteras(Fobos,Ciudades_Fobos);
	D = Costes_Carreteras(Deimos,Ciudades_Deimos);
	
	F_Minimos = Floyd(F,R);
	D_Minimos = Floyd(D,Q);
	
	P = Determinar_Puente(F_Minimos,D_Minimos,Ciudades_Fobos,Ciudades_Deimos,Costeras_Fobos,Costeras_Deimos);
	return P;	
}
