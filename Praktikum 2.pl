% Autor:
% Datum: 07.05.2017

append(nil,Xs,Xs).
append(list(X,Xs), Ys, list(X,Rs)):- append(Xs,Ys,Rs).

%A1

%a)
linList(nil).
%linList(list(X,nil)).
linList(list(_,Ys) ):- linList(Ys).

%b)

% X ist Element von Ys
member(X,list(X,Xs)).
member(X,list(_,Xs)):- member(X,Xs).

selbeliste(Xs,Ys):- append(nil,Xs,Ys).

% Xs ist infix von Ys
infix(Xs,Ys):-
              append(Rs,_,Ys),
              append(_,Xs,Rs),
              linList(Ys).

%A2

binbaum(e).
binbaum(n(_,Lb,Rb)):- binbaum(Lb), binbaum(Rb).

construct(Root, Lb, Rb, n(Root,Lb,Rb)):- binbaum(Lb), binbaum(Rb).


natSymb(o).
natSymb(s(X)):- natSymb(X).
add(X,o,X):- natSymb(X).
add(X,s(X2),s(E)):- add(X,X2,E).

knotenanz(e, o).
knotenanz(n(W,Lb,Rb), N):-
                      knotenanz(Lb,Nl),
                      knotenanz(Rb,Nr),
                      add(Nl,s(Nr),N).




head(list(X,Xs),X).

rueckwärts(nil,nil).
rueckwärts(list(X,Xs),Ys) :- rueckwärts(Xs,Hs),append(Hs,list(X,nil),Ys).
 
palindrom(nil).
palindrom(Xs):-  rueckwärts(Xs,Ys), append(nil,Ys,Xs).
