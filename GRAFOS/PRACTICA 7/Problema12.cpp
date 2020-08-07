#include <iostream>
#include <vector>
#include <cassert>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>

using namespace std;
typedef double tCoste;
using Ciudad = GrafoP<tCoste>::vertice;

struct Puente{
	
	Ciudad ciudad1;
	Ciudad ciudad2;
};

tCoste Calcular_coste(const matriz<tCoste>& G, const Ciudad& c, size_t N);
tCoste sumar_3(size_t x,size_t y,size_t z);
Ciudad Ciudad_candidata(const GrafoP<tCoste>& Isla, const vector<bool>& costeras);
Puente Puente_Grecoland(const GrafoP<tCoste>& Fobos, const GrafoP<tCoste>& Deimos,const vector<bool>& costeras_Fobos ,const vector<bool>& costeras_Deimos);

int main()
{
	matriz<typename GrafoP<tCoste>::vertice> P;
	GrafoP<tCoste> G(7);
	G[0][1] = 9;
	G[0][3] = 4;
	G[1][0] = 9;
	G[1][2] = 3;
	G[1][5] = 2;
	G[2][0] = 3;
	G[2][3] = 4;
	G[3][0] = 4;
	G[3][2] = 4;
	G[3][6] = 5;
	G[4][6] = 7;
	G[5][1] = 2;
	G[5][6] = 6;
	G[6][3] = 5;	
	G[6][4] = 7;
	G[6][5] = 6;
	
	cout<<G<<endl;
	matriz<tCoste> F = Floyd(G,P);
	cout<<F<<endl;
	return 0;
}


Puente Puente_Grecoland(const GrafoP<tCoste>& Fobos, const GrafoP<tCoste>& Deimos,const vector<bool>& costeras_Fobos ,const vector<bool>& costeras_Deimos)
{
	Puente P;
	P.ciudad1 = Ciudad_candidata(Fobos,costeras_Fobos);
	P.ciudad2 = Ciudad_candidata(Deimos, costeras_Deimos);
	
	return P;
}

Ciudad Ciudad_candidata(const GrafoP<tCoste>& Isla, const vector<bool>& costeras)
{
	matriz<tCoste> F;
	matriz<typename GrafoP<tCoste>::vertice> P;
	size_t N = costeras.size();
	tCoste coste_total, min, max_costera;
	Ciudad Ciudad_costesmin;
	
	F = Floyd(Isla,P);
	min = INT_MAX;
	for(int i = 0; i <= N-1; i++)
	{
		if(costeras[i])
		{
			coste_total = Calcular_coste(F,i,N);
			
			if(coste_total < min)
			{
				min = coste_total;
				Ciudad_costesmin = i;
			}
		}
	}
	
	return Ciudad_costesmin;
	
}

tCoste Calcular_coste(const matriz<tCoste>& G, const Ciudad& c, size_t N)
{	
	tCoste coste_total(0);
	
	for(int i = 0; i <= N-1; i++)
	{
		coste_total = sumar_3(G[c][i],G[i][c],coste_total);
	}
	
}

tCoste sumar_3(size_t x,size_t y,size_t z)
{
	return suma(x,suma(y,z));
}
