#include <iostream>
#include <vector>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>

using namespace std;
typedef double tCoste;
using vertice = GrafoP<tCoste>::vertice;

struct tCamion
{
	tCoste Carga;
	tCoste Km_totales;	
};

/*Asumimos que existe una funcion que devuelve el numero de cajas 
que quedan por servir al cliente en el que se encuentra el repartidor*/
int pedido(){}

bool Clientes_por_repartir(const vector<bool>& Repartidos)
{
	int n = Repartidos.size();
	int i = 0;
	bool quedan_por_repartir = false;
	
	while(i <= n-1 && !quedan_por_repartir)
	{
		if(!Repartidos[i]) quedan_por_repartir = true;	//Todavia quedan clientes por repatir
		i++;
	}
	
	return quedan_por_repartir;
}

//Busca al cliente más cercano que quede sin repartir
vertice Buscar_Cliente(const matriz<tCoste>& G, const vector<bool>& Repartidos, const vertice& origen)
{
	
	int n = Repartidos.size();
	vertice Cliente;
	int minimo = INT_MAX;
	int costemin;
	
	for(int i = 0; i <= n-1; i++)
	{
		costemin = G[origen][i];
		
		if(costemin < minimo && !Repartidos[i])	//Guardamos el cliente mas cercano que 
		{										//quede por repartir
			Cliente = i;
		}
	}
	
	return Cliente;	
}

tCoste Distribuir_bebidas(const GrafoP<tCoste>& Costes, tCoste Capacidad, const vertice& Almacen)
{
	matriz<tCoste> G(Costes.numVert());
	matriz<vertice> P;
	size_t N = G.dimension();
	vertice Cliente;
	tCamion Camion;
	//Todos los clientes están sin repartir
	vector<bool> Repartidos(N,false);
	
	//El almacen no tiene por qué ser repartido
	Repartidos[Almacen] = true;
	
	//Determinamos los costes minimos de viajar de una ciudad a otra
	G = Floyd(Costes,P);

	//Partimos desde el alamacen
	vertice Ciudad_actual = Almacen;
	//Iniciamos los valores del camion
	Camion.Km_totales = 0;
	Camion.Carga = Capacidad;
	
	
	while(Clientes_por_repartir(Repartidos))
	{
		Cliente = Buscar_Cliente(G,Repartidos,Ciudad_actual);
		Camion.Km_totales += G[Ciudad_actual][Cliente];			//Sumamos los costes de ir desde donde estamos al proximo cliente
		Ciudad_actual = Cliente;
		
		if(Pedido() <= Camion.Carga)		//Seguimos teniendo carga suficiente
		{
			Camion.Carga -= Pedido();
			Repartidos[Cliente] = true;
		}
		
		else			//Nos hemos quedado sin carga suficiente
		{
			Camion.Km_totales += G[Ciudad_actual][Almacen];
			Ciudad_actual = Almacen;
			Camion.Carga = Capacidad;
		}
		
	}
	
	return Camion.Km_totales;
	
}
