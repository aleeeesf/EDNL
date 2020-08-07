#ifndef MATRIZ_H
#define MATRIZ_H
#include <ostream>
#include <iostream>
#include <vector>
#include <iomanip>
#include "alg_grafoPMC.h"


using std::vector;

// matriz cuadrada
template <typename T> class matriz {
public:
   matriz() {}
   explicit matriz(size_t n, const T& x = T()): m(n, vector<T>(n, x)) {}
   size_t dimension() const {return m.size();}
   const vector<T>& operator [](size_t i) const {return m[i];}
   vector<T>& operator [](size_t i) {return m[i];}
private:
   vector< vector<T> > m;
};

template <typename T>
std::ostream& operator <<(std::ostream& os, const matriz<T>& m)
{
	os<<"       ";
	for(int i = 0; i <= m.dimension()-1; i++)
	{
		os << std::setw(4)<<i;		
	}
	
	os<<std::endl<<"      --------------------------------"<<std::endl;
	
	for(int i = 0; i <= m.dimension()-1; i++)
	{
		os<< std::setw(4)<<i<<" | ";
		for(int j = 0; j <= m.dimension()-1; j++)
		{
			if (m[i][j] == GrafoP<T>::INFINITO)
            	os << "-";
         	else
            	os << std::setw(4)<<m[i][j];
		}
		std::cout<<std::endl;
	}
	
	return os;
}
#endif  // MATRIZ_H
