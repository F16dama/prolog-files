% Autor:
% Datum: 09.04.2017

natSymb(o).
natSymb(s(X)):- natSymb(X).

%a)
kante(a,b).
kante(a,c).
kante(a,d).
kante(a,e).
kante(b,c).
kante(b,d).
kante(b,e).
kante(c,d).
kante(e,d).
kante(e,c).

%b)

weg(X,X).
weg(X,Y):- kante(X,X1), weg(X1,Y).

%c

wegLange(X,X,o).
wegLange(X,Y,s(L)):- kante(X,X1), wegLange(X1,Y,L).