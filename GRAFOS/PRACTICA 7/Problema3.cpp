#include <iostream>
#include <vector>
#include <limits>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>

using namespace std;

int main(){

	
	
	return 0;
}

template <typename tCoste>
struct Distribucion
{
	vector<int> cantidad;
	tCoste coste_total;
};

template <typename tCoste>
void Aplicar_subvencion(vector<tCoste>& costes, const vector<double>& subvenciones)
{
	for(int i = 0; i <= costes.size(); ++i)
	{
		costes[i] = ( costes[i] * ( (100-subvenciones[i])/100 ) );
	}
}

template <typename tCoste>
Distribucion<tCoste> distribuir_stock(const typename GrafoP<tCoste>::vertice& origen, int cantidad, const GrafoP<tCoste>& G, const vector<int>& capacidad_almacenes, const vector<double>& subvenciones)
{
	
	Distribucion<tCoste> D;
	vector<typename GrafoP<tCoste>::vertice>& P;
	vector<tCoste> costes_min;
	vector<bool> almacen_lleno(costes_min.size(), false);	//llenamos el vector a false		
	int min = INT_MAX;	//min = INFINTO
	int cantidad_restante = cantidad;
	typename GrafoP<tCoste>::vertice almacen_minimo;		
	
	costes_min = Dijkstra(G,origen,P);		//Guardamos los costes minimos de ir desde el alamacn principal a los demas almacenes
	Aplicar_subvencion(costes_min, subvenciones);	//Los costes por unidad con la subvencion aplicada

	while(cantidad_restante > 0)
	{
		for(int i = 0; i <= costes_min.size(); ++i)
		{
			if(costes_min[i] < min && !almacen_lleno[i]){
				
				min = costes_min[i];
				almacen_minimo = i;
			}
		}
		
		//Ahora que tenemos el almacen con el coste menor aplicamos
		
		if(capacidad_almacenes[almacen_minimo] > cantidad_restante)
		{
			D.cantidad[almacen_minimo] = cantidad_restante;
			D.coste_total = cantidad_restante * costes_min[almacen_minimo];
			cantidad_restante = 0;			
		}
		else{
			D.cantidad[almacen_minimo] += cantidad_restante;
			D.coste_total += cantidad_restante * costes_min[almacen_minimo];
			cantidad_restante -= capacidad_almacenes[almacen_minimo];	
			almacen_lleno[almacen_minimo] = true;
		}	 
			
	}	
	
	return D;
	
}
