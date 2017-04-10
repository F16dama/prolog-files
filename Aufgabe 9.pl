% Autor:
% Datum: 09.04.2017

natSymb(o).
natSymb(s(X)):- natSymb(X).

%a)
                   ecke(a).  ecke(b).   ecke(c).  ecke(d). ecke(e).
kante(a,b).
kante(a,c).
kante(a,d).
%kante(a,e).
kante(b,c).
kante(b,d).
kante(b,e).
kante(c,d).
kante(e,d).

%b)

weg(X,X):- ecke(X).
weg(X,Y):- kante(X,Y).
weg(X,Y):- kante(X,X1), kante(X1,Y).

%c

wegLange(X,X,L):- s(L),ecke(X).
wegLange(X,Y,L):- s(L),kante(X,Y).
wegLange(X,Y,L):- s(L), kante(X,X1), kante(X1,Y).