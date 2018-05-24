% Autor:
% Datum: 08.05.2017


rS([]).
rS([a|Rs]):- rS(Ss),append(Ss,[b],Rs).

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
                   

%um1grosßer(X,Y): Y ist um eins größer als X
um1großer(X,s(X)).

%lessequ(X,Y): X<=Y
lessequ(o,X):- natSymb(X).
lessequ(s(X),s(Y)):- lessequ(X,Y), natSymb(X), natSymb(Y).

%natSymb(X) : enthält natürliche Zahlen in symbolischer Darstellung
natSymb(o).
natSymb(s(X)):-natSymb(X).


anzlist([], 0).
anzlist([_|Ls], N):- anzlist(Ls, N1), N is N1 + 1.


nth([E|_],1,E).
nth([A|Rs],N,E) :- N>1, N1 is N-1, nth(Rs,N1,E).
