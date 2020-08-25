/*
Sea un conjunto finito de símbolos A = {s1, s2, ..., sn}, con n constante y predeterminado.
Una proposición es
- un símbolo proposicional del conjunto A, o bien
- una expresión construida aplicando conectivas lógicas a otras proposiciones. Se
considerarán las conectivas ^ (Y),  v(O), y ¬ (NO).
Una forma de representar una proposición es mediante un árbol binario en el que los nodos
internos contienen las conectivas lógicas y las hojas los símbolos proposicionales. 

Una valoración es una asignación de un valor de verdad (verdadero o falso) a cada símbolo
del conjunto A. La forma de representar una valoración de A será mediante una secuencia v de
valores de verdad que asigna el valor i-ésimo de v al símbolo si. Por ejemplo, suponiendo n = 3,
la secuencia <verdadero, falso, verdadero> representa la valoración que asigna verdadero a s1,
falso a s2 y verdadero a s3. Una vez que se tiene una valoración, es posible obtener el valor de
verdad de cualquier proposición con sólo interpretar las conectivas lógicas con su significado
convencional. Veamos una serie de ejemplos suponiendo n = 3:

	Proposición 				Valoración 					Valor de verdad
	s1 ^ s2 			<verdadero, falso, falso> 				falso
	s1 ^ s2 			<verdadero, verdadero, falso> 			verdadero
	s1 v ¬s2 			<falso, verdadero, verdadero> 			falso
	s1 v ¬s1 			<falso, falso, falso> 					verdadero
	(s1 v s3) ^ s2 		<verdadero, falso, falso> 				falso
*/
#include <iostream>
#include <vector>
#include <cassert>

using namespace std;

typedef int Simbolo;
enum Conectiva{Y,NO,O};
typedef vector<bool> Valores;

// -1 si es una conectiva y != -1 si es un simbolo
class Elemento
{
	public:
		Elemento(Simbolo S):num(S),c('s'){}
		Elemento(Conectiva cn):num(-1)
		{
			switch(cn)
			{
				case Conectiva::Y: c = 'Y';
									break;
				case Conectiva::NO: c = 'N';
									break;
				case Conectiva::O: c = 'O';
									break;
			}
		}
		int numero(){return num;}
		char caracter(){return c;}
	
	private:
		int num;
		char c;		
};


class Proposicion
{
	public:
		Proposicion(Simbolo S);
		Proposicion(Proposicion& p, Conectiva C);
		Proposicion(Proposicion& p1, Proposicion& p2, Conectiva C);
		bool Valor_de_Verdad(const Valores& v);
		
	private:
		Elemento E;
		Proposicion *izq;
		Proposicion *der;
};

Proposicion::Proposicion(Simbolo S):E(Elemento(S)),izq(nullptr),der(nullptr){}

Proposicion::Proposicion(Proposicion& p, Conectiva C):E(Elemento(C)),izq(nullptr)
{
	assert(C == Conectiva::NO);
	der = &p;
}

Proposicion::Proposicion(Proposicion& p1, Proposicion& p2, Conectiva C):E(Elemento(C))		
{
	assert(C == Conectiva::Y || C == Conectiva::O);	
	izq = &p2;
 	der = &p1;
}

bool Proposicion::Valor_de_Verdad(const Valores& v)
{
	if(E.numero() == -1)
	{
		if(E.caracter() == 'Y')
			return (izq->Valor_de_Verdad(v) && der->Valor_de_Verdad(v));
		else if(E.caracter() == 'O')
			return (izq->Valor_de_Verdad(v) || der->Valor_de_Verdad(v));
		else
			return (!der->Valor_de_Verdad(v));
	}
	
	else return v[E.numero()];
}
