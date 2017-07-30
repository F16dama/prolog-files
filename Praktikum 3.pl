<<<<<<< HEAD
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


=======
% Autor:
% Datum: 18.05.2017

% Hilfsfunktionen

% Rs ist Xs konkatiniert mit Ys
append([],Xs,Xs).
append([X|Xs], Ys, [X|Rs]):- append(Xs,Ys,Rs).

% Ys ist Xs mit hinten angefügtem X
attach(Xs,X,Ys):-  append(Xs,[X],Ys).

% Ys ist Xs rückwärts
reverse([],[]).
reverse([X|Xs],Ys) :- reverse(Xs,Hs),append(Hs,[X],Ys).

% Xs ist in Ys enthalten von vorne
präfix([],_).
präfix([X|Xs],[X|Ys]):- präfix(Xs,Ys).



% Aufgabe 1))

% Ys endet mit der Liste Xs
postfix(Xs,Ys):- append(_,Xs,Ys).
postfix(Xs,Ys):- reverse(Xs,Xrs), reverse(Ys,Yrs), präfix(Xrs,Yrs).



% Aufgabe 2))

% biärbaum ist durch e = null und dem n(W,Lb,Rb) Funktor definiert
% W ist Wurzel
% Lb ist linker Teilbaum
% Rb ist rechter Teilbaum
binbaum(e).
binbaum(n(_,Lb,Rb)):-
                    binbaum(Lb),
                    binbaum(Rb).

% X ist im Baum enthalten
member(X,n(X,Lb,Rb)):- binbaum(Lb), binbaum(Rb).
member(X,n(_,Lb,Rb)):- binbaum(Lb), binbaum(Rb), member(X,Lb).
member(X,n(_,Lb,Rb)):- binbaum(Rb), binbaum(Lb), member(X,Rb).

% Aufgabe 3

% Baum wird in preorder in die Liste Ys gespeichert
präorder(e,[]).
präorder(n(X,Xlb,Xrb), Ys):-
                       präorder(Xlb,Yls),
                       präorder(Xrb,Yrs),
                       append([X|Yls],Yrs,Ys).

% Baum wird in postorder in die Liste Ys gespeichert
postorder(e,[]).
postorder(n(X,Xlb,Xrb), Ys):-
                       postorder(Xlb,Yls),
                       postorder(Xrb,Yrs),
                       append(Yls,Yrs,Ts), append(Ts,[X],Ys).

% Y ist Wurzel von Baum
root(n(Y,Lb,Rb),Y):- binbaum(n(Y,Lb,Rb)).

% Von allen Rb die Wurzel wird in Ys gespeichert
roots([],[]).
roots([e|Xs],Ys):- roots(Xs,Ys).
roots([Rb|Xs],Ys):- root(Rb,X), roots(Xs,Yns), append([X],Yns,Ys).


% Zusatzaufgabe

% mirror(Xb,Yb): Yb ist Xb Baum an der Wurzel gespiegelt
mirror(e,e).
mirror(n(X,Xlb,Xrb),n(X,X2rb,X2lb)):- mirror(Xlb,X2lb), mirror(Xrb,X2rb).


>>>>>>> e62d25b9aa6fda8bb3c7c31b9f61627030689718
