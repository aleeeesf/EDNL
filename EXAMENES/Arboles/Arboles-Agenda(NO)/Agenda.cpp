#include <iostream>
#include <vector>
#include "abb.h"
#include "abb_E-S.h"

int main()
{

	Agenda A;
	A.insertar("Juan",640217690);
	A.insertar("Pedro", 640217691);
	A.insertar("Antonio", 640217692);
	
	A.eliminar(640217692);
	MostrarAbb(A.Lista);
	
	vector<int> v;
	

	//MostrarAbb(A);

	return 0;
}
