% Autor:
% Datum: 08.05.2017

%%geht nicht
anz(X,[],0).
anz(X,[X1|Xs],Y):- anz(X,Xs,Y).
anz(X,[X|Xs],Y):- anz(X,Xs,N), Y is N+1.


liste([]).
liste([Anfang|Rest]):- liste([Rest]).

fakultaet(0,1).
fakultaet(1,1).
fakultaet(N,Resultat):-
                   N>1,
                   N1 is N-1,
                   fakultaet(N1,Resultat1),
                   Resultat is N * Resultat1.
                   

%um1gros�er(X,Y): Y ist um eins gr��er als X
um1gro�er(X,s(X)).

%lessequ(X,Y): X<=Y
lessequ(o,X):- natSymb(X).
lessequ(s(X),s(Y)):- lessequ(X,Y), natSymb(X), natSymb(Y).

%natSymb(X) : enth�lt nat�rliche Zahlen in symbolischer Darstellung
natSymb(o).
natSymb(s(X)):-natSymb(X).