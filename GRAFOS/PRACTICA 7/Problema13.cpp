#include <iostream>
#include <vector>
#include <cassert>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>

using namespace std;
typedef double tCoste;
using vertice = GrafoP<tCoste>::vertice;

struct Puente{
	
	vertice ciudad1;
	vertice ciudad2;
};

struct Puentes
{
	Puente puente1;
	Puente puente2;	
};

tCoste suma3(tCoste a, tCoste b, tCoste c)
{
	return suma(a, suma(a,b));
}


vertice Ciudad_candidata(const GrafoP<tCoste>& isla, const vector<bool>& costeras)
{
	size_t N = isla.numVert();
	matriz<tCoste> M(N);
	matriz<vertice> P;
	tCoste Coste_Minimo, Coste;
	vertice Vertice_candidato;
	
	M = Floyd(isla,P);
	
	for(int i = 0; i <= N-1; i++)
	{
		if(costeras[i])
		{
			for(int j = 0; j <= N-1; j++)
			{				
				if(i != j)	//Sumar los costes de ir y volver a todas las ciudades de la isla
				{
					Coste = suma3(M[i][j], M[j][i], Coste);
				}				
			}
			
			//¿Es el menor de los costes?
			if(Coste < Coste_Minimo)
			{
				Coste_Minimo = Coste;
				Vertice_candidato = i;
			}
		}	
	}	
	
	return Vertice_candidato;
}


Puentes Huries(const GrafoP<tCoste>& isla1, const GrafoP<tCoste>& isla2, const GrafoP<tCoste>& isla3, const vector<bool>& costeras_isla1, 
		const vector<bool>& costeras_isla2,	const vector<bool>& costeras_isla3)
{
	//Buscar la ciudad costera que minimice los costes a las demas de la isla
	vertice Candidata_isla1, Candidata_isla2, Candidata_isla3;
	
	Candidata_isla1 = Ciudad_candidata(isla1, costeras_isla1);
	Candidata_isla2 = Ciudad_candidata(isla2, costeras_isla2);
	Candidata_isla3 = Ciudad_candidata(isla3, costeras_isla3);
	
	Puentes P;
	//Isla 1 a Isla 3
	P.puente1.ciudad1 = Candidata_isla1;
	P.puente1.ciudad2 = Candidata_isla3;
	
	//Isla 1 a Isla2
	P.puente2.ciudad1 = Candidata_isla1;
	P.puente2.ciudad2 = Candidata_isla2;
	
	
	return P;	
}
