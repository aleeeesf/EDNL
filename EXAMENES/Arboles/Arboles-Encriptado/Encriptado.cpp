#include <iostream>
#include <string>
#include <math.h>
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\ARBOLES BINARIOS\ARBOLES BINARIOS\ABINdinamico.h"
#include "C:\Users\Ale2\Desktop\Alejandro\C++\EDNL\ARBOLES BINARIOS\ARBOLES BINARIOS\abin_E-S.h"
#include "pilaEnlazadas.h"
#include "ColaD.h"

using namespace std;
typedef char tElto;
const tElto fin = '#';
typedef char T;

string descifrador(string s);
void descifrar_rec(typename Abin<T>::nodo n, int i, int j, int h, int ne, string s, Abin<T>& A);
void desencriptar_rec(typename Abin<T>::nodo n, int i, int j, int h, int ne, string s, Abin<T>& A);
int calcular_altura(string s);

int main()
{
	string s("ESE AJUE  NSE CRTEMETEO.SNS");
	
	cout<<descifrador(s)<<endl;
}


string descifrador(string s)
{
	int h = calcular_altura(s);
	int hi, hj;
	Abin<char> A;
	A.insertarRaiz(s[0]);
	
	descifrar_rec(A.raiz(),1,s.size(),h,s.size(),s,A);
	
	imprimirAbin(A);	
}


void descifrar_rec(typename Abin<T>::nodo n, int i, int j, int h, int ne, string s, Abin<T>& A)
{
	int pos;
	if(h != 0)
	{
		if(i >= 0 && i < ne)
		{
			if(j > 0 && j <= ne)
			{

				A.insertarHijoIzqdo(n,s[i]);
				descifrar_rec(A.hijoIzqdo(n),i+1, pow(2,h), h-1,ne,s,A);

				
				if((j-i-pow(2,h)) > (pow(2,h-1)-1))
				{
					pos = i + pow(2,h);
					A.insertarHijoDrcho(n,s[pos]);
					descifrar_rec(A.hijoDrcho(n),pos+1, pos, h-1,ne,s,A);
				}
				else
				{
					pos = j - pow(2,h-1) +1;
					A.insertarHijoDrcho(n,s[pos]);
					descifrar_rec(A.hijoDrcho(n),pos+1, pos,h-1,ne,s,A);
				}
			}
 		}
	}	
}


void desencriptar_rec(typename Abin<T>::nodo n, int i, int j, int h, int ne, string s, Abin<T>& ab) {

    if(h != 0)
    {
	    // Hijo Izq
	    if(i+1 <= h) {
	        ab.insertarHijoIzqdo(n, s[i+1]);
	        desencriptar_rec(ab.hijoIzqdo(n),i + 1, pow(2, h), h - 1,ne, s, ab);
	    }
	    // Hijo drch
	    if(j - i - pow(2, h) >  pow(2,  h - 1) - 1) {
	        ab.insertarHijoDrcho(n, s[i + pow(2, h)]);
	        desencriptar_rec(ab.hijoDrcho(n),i + pow(2, h), j - 1, h - 1,ne, s, ab);
	    }
	    else {
	        ab.insertarHijoDrcho(n, s[j - pow(2, h - 1)] + 1);
	        desencriptar_rec(ab.hijoDrcho(n),j - pow(2, h - 1) + 1, j - 1, h-1,ne, s, ab);
	    }
	}
    

} 



int calcular_altura(string s)
{
	int elementos = s.size();
	return (sqrt(elementos)-1);
}
