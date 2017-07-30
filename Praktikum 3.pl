% Autor:
% Datum: 18.05.2017

% Hilfsfunktionen

append([],Xs,Xs).
append([X|Xs], Ys, [X|Rs]):- append(Xs,Ys,Rs).

reverse([],[]).
reverse([X|Xs],Ys) :- reverse(Xs,Hs),append(Hs,[X],Ys).

präfix([],Xs).
präfix([X|Xs],[X|Ys]):- präfix(Xs,Ys).



% Aufgabe 1))

postfix(Xs,Ys):- append(_,Xs,Ys).

postfix(Xs,Ys):- reverse(Xs,Xrs), reverse(Ys,Yrs), präfix(Xrs,Yrs).



% Aufgabe 2))

binbaum(e).
binbaum(n(X,Lb,Rb)):-
                    binbaum(Lb),
                    binbaum(Rb).

member(X,n(X,Lb,Rb)):- binbaum(Lb), binbaum(Rb).
member(X,n(_,Lb,Rb)):- binbaum(Lb), binbaum(Rb), member(X,Lb).
member(X,n(_,Lb,Rb)):- binbaum(Rb), binbaum(Lb), member(X,Rb).

% Aufgabe 3

präorder(n(X,Xlb,Xrb), Ys):-
                       präorder(Xlb,Yls),
                       präorder(Xrb,Yrs),
                       append([X|Yls],Yrs,Ys).
präorder(e,[]).

postorder(n(X,Xlb,Xrb), Ys):-
                       postorder(Xlb,Yls),
                       postorder(Xrb,Yrs),
                       append(Yls,Yrs,Ts), append(Ts,[X],Ys).
postorder(e,[]).

root(n(Y,Lb,Rb),Y):- binbaum(n(Y,Lb,Rb)).

roots([],[]).
roots([e|Xs],Ys):- roots(Xs,Yns).
roots([Rb|Xs],Ys):- root(Rb,X), roots(Xs,Yns), append([X],Yns,Ys).


% Zusatzaufgabe

% mirror(Xb,Yb): Yb ist Xb Baum an der Wurzel gespiegelt
mirror(e,e).
mirror(n(X,Xlb,Xrb),n(X,Ylb,Yrb)):- mirror(Xlb,Yrb), mirror(Xrb,Ylb).


