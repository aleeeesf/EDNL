#include <iostream>
#include "abb.h"
#include "abin.h"
#include "abb_E-S.h"

using namespace std;

typedef char tElto;
const tElto fin = '#';

int main(){

	Abb<int> A;
	LeerAbb(A);
	MostrarAbb(A);
	
	return 0;

}
/*
template <typename T>
void Abb<T>::buscarYPodar(const T& e)
{
    if (r != 0) // si el arbol r es nulo, no tiene sentido buscar
    {
        if (e < r->elto) // buscar en subárbol izqdo
            r->izq.buscarYPodar(e);
        else if (r->elto < e) // buscar en subárbol drcho
            return r->der.buscarYPodar(e);
        else // si *this es un subarbol cuya raiz almacena el elemento "e" se procede a borrarlo
        {
            delete r;
            r=0;
        }
    }
}
*/

