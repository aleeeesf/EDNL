#include <iostream>
#include <vector>
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h"

using namespace std;
typedef double tCoste;
using vertice = GrafoP<tCoste>::vertice;
enum Transortes {Carretera,tren,avion}
int main()
{

}

Viajero_Alergico(const GrafoP<tCoste>& Grafo_Carretera, const GrafoP<tCoste>& Grafo_Tren, const GrafoP<tCoste>& Grafo_Avion, Alergico alergico, double dinero
                , const vertice& origen)
{
    size_t N_Ciudades = Grafo_Carretera.numVert();
    GrafoP<tCoste> G(N_Ciudades);
    vector<vertice> P;
    vector<bool> Ciudades_Aptas;
    vector<tCoste> Costes;  

    switch(alergico)
    {
        case Transortes::Carretera : 
                                    for(int i = 0; i <= N_Ciudades; i++)
                                    {
                                        for(int j = 0; j <= N_Ciudades; j++)
                                        {
                                            G[i][j] = min(Grafo_Tren[i][j], Grafo_Avion[i][j]);
                                        }
                                    }
                                    break;
        case Transortes::avion : 
                                    for(int i = 0; i <= N_Ciudades; i++)
                                    {
                                        for(int j = 0; j <= N_Ciudades; j++)
                                        {
                                            G[i][j] = min(Grafo_Carretera[i][j], Grafo_Avion[i][j]);
                                        }
                                    }
                                    break;
        case Transortes::tren : 
                                    for(int i = 0; i <= N_Ciudades; i++)
                                    {
                                        for(int j = 0; j <= N_Ciudades; j++)
                                        {
                                            G[i][j] = min(Grafo_Carretera[i][j], Grafo_Avion[i][j]);
                                        }
                                    }
                                    break;                                            
    }

    costes = Dijkstra(G, origen, P);

    for(int i = 0; i <= N_Ciudades; i++)
    {
        if(dinero >= costes[i])
            Ciudades_Aptas[i] = true;
    }
    
    return Ciudades_Aptas;
}

