% Autor:
% Datum: 14.04.2017

natSymb(o).
natSymb(s(X)):- natSymb(X).
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

%a)
wegstrecke(X,X,list(X,nil)).
wegstrecke(X,Y,Knotens):- kante(X,X1), wegstrecke(X1,Y,Knotens2), append(list(X,nil),Knotens2,Knotens).

%b)
%wegstrecke(a,d,Z).
