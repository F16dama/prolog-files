% Autor:
% Datum: 14.04.2017

%c)
natSymb(o).
natSymb(s(X)):- natSymb(X).

% add(Summand1,Summand2,Ergebnis).
add(X,o,X):- natSymb(X).                                        % n + 0 = n
add(X,s(X2),s(E)):- add(X,X2,E).
%multi(Faktor1,Faktor2,Produkt)
mult(o,X,o):- natSymb(X).
mult(s(X),X2,P):- mult(X,X2,X1), add(X1,X2,P).

%a)
exp(X1,o,s(o)):- natSymb(X1).                                      % n^0 = 1
exp(X1,s(X2),X3):- exp(X1,X2,H), mult(H,X1,X3).

%b)
log(X1,X2,X3):- exp(X1,X3,X2).































%exp(X1,s(s(o)), X2):- mult(X1,X1,X2).
%exp(X1,s(s(s(o))), X3):- mult(X1,X1,X2), mult(X1,X2,X3).
%exp(X1,s(s(s(s(o)))), X4):- mult(X1,X1,X2), mult(X1,X2,X3), mult(X1,X3,X4).


%exp(X1,X2,X3):- mult(X1,X1,X4),mult(X4,X1,X3),add(_,s(X1),X3),exp(X1,s(X2),X3).
%exp(X1,s(X2),E):- exp(E2,X2,_), add(E2,_,E), mult(X1,X1,E2).