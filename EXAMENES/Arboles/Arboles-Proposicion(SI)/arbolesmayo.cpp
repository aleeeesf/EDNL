#include <iostream>
#include <cassert>
#include <vector>
using namespace std;

enum Logica{Y, NO, O};

typedef int Simbolo;

struct Elemento
{
	char conectiva;
	int n;
	
	Elemento(){}
	Elemento(Simbolo s):n(s){}
	Elemento(Logica c):n(-1)
	{
		switch(c)
		{
			case Logica::Y:
				conectiva = 'Y';
				break;
				
			case Logica::NO:
				conectiva = 'N';
				break;
				
			case Logica::O:
				conectiva = 'O';
				break;
		}
	}
};

class Proposicion
{
	
	Proposicion(Simbolo S);
	Proposicion(Proposicion &p, Logica L);
	Proposicion(Proposicion &p1, Proposicion &p2, Logica L);
	bool valordeverdad(const vector<bool>&);
	
	private:
		
		Elemento e;
		Proposicion *izqda;
		Proposicion *drcha;
};

Proposicion::Proposicion(Simbolo S)
{
	Elemento a(S);	
	e = a;
	izqda = nullptr;
	drcha = nullptr;
}

Proposicion::Proposicion(Proposicion &p, Logica L)
{
	assert(L == Logica::NO);
	Elemento a(L);
	
	e = a;
	izqda = &p;
	drcha = nullptr;
}

Proposicion::Proposicion(Proposicion &p1, Proposicion &p2, Logica L)
{
	assert(L == Logica::Y || L == Logica::O);
	Elemento a(L);
	
	e = a;
	izqda = &p1;
	drcha = &p2;	
}

bool Proposicion::valordeverdad(const vector<bool>& valores)
{
	if(e.n == -1)	//es un elemento logico
	{
		if(e.conectiva == 'N')
			return !(izqda->valordeverdad(valores)); 
		
		else if(e.conectiva == 'Y')
			return (izqda->valordeverdad(valores) && drcha->valordeverdad(valores));
		else return (izqda->valordeverdad(valores) || drcha->valordeverdad(valores));
	}
	else
		return valores[e.n];
}

