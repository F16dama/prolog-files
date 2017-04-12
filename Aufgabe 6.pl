% Autor:
% Datum: 08.04.2017

%A6

%d)

natSymb(o).
natSymb(s(X)):- natSymb(X).

%a)

% add(Summand1,Summand2,Ergebnis).
add(X,o,X):- natSymb(X).                        % n + 0 = n
add(X,s(X2),s(E)):- add(X,X2,E).


%b)

% sub(Summand1,Summand2,Ergebnis).
sub(X,X2,E):- add(X2,E,X).

%c)

%halb(Ganz,Halb).
halb(G,H):- add(H,H,G).

%e)

%multi(Faktor1,Faktor2,Produkt)
mult(o,X,o):- natSymb(X).
mult(s(X),X2,P):- mult(X,X2,X1), add(X1,X2,P).

