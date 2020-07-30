#include <iostream>
#include <vector>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>

using namespace std;

int main(){
	
	return 0;
}

//Función que devuelve los kilometros totales que ha de recorrer los camiones
// · GrafoP con los kilometros 
// · Las cargas que hay que llevar a cada cliente
// · Origen donde se parte los pedidos
template <typename tCoste>
int distancia_total(const GrafoP<tCoste>& Zuelandia, const vector<int>& cargas, const typename GrafoP<tCoste>::vertice& origen)
{
	int kilometros_totales;
	vector<typename GrafoP<tCoste>::vertice> P;
	//Guardamos los costes de ir desde el la empresa a los clientes
	vector<tCoste> km_origen_destino = Dijkstra(Zuelandia,origen,P);
	//Guardadmos los costes (en km) de ir desde las distintas ciudades a la empresa
	vector<tCoste> km_destinos_origen = DijkstaInv(Zuelandia,origen,P);

	for(int i = 0; i <= Zuelandia.numVert()-1 ; i++)
	{
		kilometros_totales = cargas[i] * suma(km_origen_destino[i], km_destinos_origen[i]);
		
	}	
	
	
	return kilometros_totales;
}
