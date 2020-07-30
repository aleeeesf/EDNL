#include <vector>
#include "grafoPMC.h"
#include "alg_grafoPMC.h"

typedef int tCoste;

struct Distribucion
{
   vector<int> Cantidades; //Cantidades[i] será la cantidad que deposito en el almacen de la ciudad i
   tCoste   CosteTotal;//Coste mínimo total de hacer toda la distribución
};

void Aplicar_Subvencion(vector<tCoste>& V, const vector<double>& Subvenciones)
{
   int i;
   for(i = 0; i <= V.size()-1; i++)
   {
      V[i]= V[i]*(100 - Subvenciones[i])/100;
   }
   
}

Distribucion DistribuirStock(const GrafoP<tCoste>::vertice& origen, int cantidad, const GrafoP<tCoste>& G, vector<int> Capacidades, vector<double> Subvenciones)
{
   Distribucion D;
   int i, ciudad_min, cantidad_restante;
   tCoste min;
   vector<GrafoP<tCoste>::vertice> P;
   vector<tCoste> V;
   vector<bool> Lleno(Capacidades.size() , false);

   for(i=0; i<= G.numVert()-1; i++)
      D.Cantidades[i]=0; //Ponemos las cantidades de cada ciudad a 0

   V = Dijkstra(G, origen, P); //V ahora tiene los costes mínimos
   Aplicar_Subvencion(V, Subvenciones); //V ahora tiene los costes reales por unidad de producto

   
   D.CosteTotal=0;
   cantidad_restante = cantidad;
   while(cantidad_restante > 0)
   {
      min = INT64_MAX;
      //Elegimos la ciudad con el coste mínimo y con el almacén vacío
      for(i=0 ; i <= Capacidades.size() - 1; i++) //Capacidades.size() es el número de ciudades
      {
         if (!Lleno[i] && V[i]!=0 && V[i]<min) 
         {
            min = V[i];
            ciudad_min = i;
         }
      }

      //Una vez que he elegido la ciudad, descargo productos en la ciudad y calculo el coste
      if(Capacidades[ciudad_min]>cantidad_restante)
      {
         D.CosteTotal += V[ciudad_min]*cantidad_restante;
         D.Cantidades[ciudad_min] = cantidad_restante;
         cantidad_restante = 0;
      }
      else
      {
         cantidad_restante -= Capacidades[ciudad_min];
         D.Cantidades[ciudad_min] = Capacidades[ciudad_min];
         Lleno[ciudad_min] = true;
         D.CosteTotal += V[ciudad_min]*Capacidades[ciudad_min];
      }
   }

   return D;
}
