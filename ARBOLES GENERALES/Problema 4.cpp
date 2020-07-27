#include <iostream>
#include <fstream>
#include "agen.h"
#include "agen_E-S.h"

using namespace std;
typedef char tElto;

using nodo = typename Agen<char>::nodo;
const tElto fin = '#'; // fin de lectura

void Podar(char x, Agen<char>& A);
void Podar_Descendientes(nodo n, Agen<char>& A);
void Eliminar_Nodo(nodo n, Agen<char>& A);
nodo Buscar_nodo(char x, Agen<char>& A);
nodo Buscar_nodo_rec(nodo n, Agen<char>& A, char x);



int main () {
	
	Agen<char> A;

	cout << "\n*** Lectura de árbol A de agen.dat ***\n";
	ifstream fe("agen.txt"); // Abrir fichero de entrada.
	rellenarAgen(fe, A); // Desde fichero.
	fe.close();
	cout << "\n*** Mostrar árbol A ***\n";
	imprimirAgen(A); // En std::cout
	
	cout<<"Una vez borrado queda:"<<endl;
	cout<<endl;
	Podar('b',A);

	imprimirAgen(A);
}



void Podar(char x, Agen<char>& A)
{
	nodo n = Buscar_nodo(x,A);

	if(n == Agen<char>::NODO_NULO) cout<<"NO se ha encontrado el nodo"<<endl;

	else
	{		
		Podar_Descendientes(n,A);		//Primero eliminamos los descendientes
		Eliminar_Nodo(n,A);				//Finalmente eliminamos el propio nodo
	} 
}



void Podar_Descendientes(nodo n, Agen<char>& A)
{
	
	if(n != Agen<char>::NODO_NULO)
	{
		nodo hijoIzq = A.hijoIzqdo(n);
		
		if(hijoIzq != Agen<char>::NODO_NULO){
			
			while (hijoIzq != Agen<char>::NODO_NULO)		//Recorremos todos los hijos y vamos borrando uno a uno
			{
				Podar_Descendientes(hijoIzq, A);
				hijoIzq = A.hermDrcho(hijoIzq);				
				A.eliminarHijoIzqdo(n);						//Elimino el antiguo h.izq y el nuevo h.izq pasa a ser el herm. derecho
			}
		}
	}
}


void Eliminar_Nodo(nodo n, Agen<char>& A)
{
	if(n == A.raiz()) A.eliminarRaiz();		//Comprobamos que sea raiz
		
	else									//No es raiz, entonces tiene padre
	{
		nodo padre = A.padre(n);
		
		if(A.hijoIzqdo(padre) == n) A.eliminarHijoIzqdo(padre);		//¿Es el hijo izquierdo?
		
		else													//Entonces es uno de los hermanos derechos
		{
			nodo izqda = A.hijoIzqdo(padre);
			
			nodo herD = A.hermDrcho(izqda);
			
			while(herD != n)									//Buscamos en que nodo se encuentra entre los hermanos
			{
				izqda = herD;									//El hermano derecho queda a la izquierda
				herD = A.hermDrcho(herD);					
			}		
		
			A.eliminarHermDrcho(izqda);							//Eliminamos el nodo
		}		
	}
}


nodo Buscar_nodo(char x, Agen<char>& A)
{
	return Buscar_nodo_rec(A.raiz(), A, x);
}


nodo Buscar_nodo_rec(nodo n, Agen<char>& A, char x)
{
	nodo encontrado = Agen<char>::NODO_NULO;
	if(n == Agen<char>::NODO_NULO) return Agen<char>::NODO_NULO;
	
	else
	{
		if(A.elemento(n) == x){
			
			encontrado = n;
			return encontrado;
		}  
		
		else
		{
			nodo hijo = A.hijoIzqdo(n);
			
			while(hijo != Agen<char>::NODO_NULO && encontrado == Agen<char>::NODO_NULO)
			{
				encontrado = Buscar_nodo_rec(hijo,A,x);
				hijo = A.hermDrcho(hijo);				
			}
			
			return encontrado;
		}
	}
}



