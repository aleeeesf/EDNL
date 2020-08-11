#include <iostream>
#include <vector>
#include <cassert>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\ApoMax-Kruskall-Prim.hpp>
using namespace std;
typedef char tCoste;

int main()
{
	return 0;
}

GrafoP<tCoste> Canales_Jerte(const GrafoP<tCoste>& G)
{
	GrafoP<tCoste> K(G.numVert());
	K = KruskallMax(G);	
	return K;
}
