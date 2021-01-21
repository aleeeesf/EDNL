#include <iostream>
#include <vector>
#include <cassert>
#include <C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\GRAFOS\alg_grafoPMC.h>

typedef int tCoste;
using namespace std;


int main()
{
	GrafoP<tCoste> p(10);
	p[0][1] = 5;
	p[1][0] = 5;
	p[1][2] = 4;
	p[2][1] = 4;
	p[2][3] = 6;
	p[3][2] = 6;
	p[3][4] = 7;
	p[4][3] = 7;
	p[4][5] = 8;
	p[5][4] = 8;
	
	Prim(p);
	cout<<p<<endl;
	
		
}
