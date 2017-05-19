% Autor:
% Datum: 18.05.2017

append([],Xs,Xs).
append([X|Xs], Ys, [X|Rs]):- append(Xs,Ys,Rs).

reverse([],[]).
reverse([X|Xs],Ys) :- reverse(Xs,Hs),append(Hs,[X],Ys).

pr�fix([],Xs).
pr�fix([X|Xs],[X|Ys]):- pr�fix(Xs,Ys).

% Aufgabe 1

postfix(Xs,Ys):- append(Rs,Xs,Ys).
postfix(Xs,Ys):- reverse(Xs,Xrs), reverse(Ys,Yrs), pr�fix(Xrs,Yrs).

% Aufgabe 2

binbaum(e).
binbaum(n(X,Lb,Rb)):-
                    binbaum(Lb),
                    binbaum(Rb).

member(X,n(X,Lb,Rb)):- binbaum(Lb), binbaum(Rb).
member(X,n(Y,Lb,Rb)):- binbaum(Lb), member(X,Lb).
member(X,n(Y,Lb,Rb)):- binbaum(Rb), member(X,Rb).

% Aufgabe 3

appendlist(nil,Xs,Xs).
appendlist(list(X,Xs), Ys, list(X,Rs)):- appendlist(Xs,Ys,Rs).

attachlist(X,Xs,Ys):- appendlist(Xs,list(X,nil),Ys).

pr�order(n(X,Xlb,Xrb), Ys):-
                       pr�order(Xlb,Yls),
                       pr�order(Xrb,Yrs),
                       append([X|Yls],Yrs,Ys).
pr�order(e,[]).

postorder(n(X,Xlb,Xrb), Ys):-
                       postorder(Xlb,Yls),
                       postorder(Xrb,Yrs),
                       append(Yls,Yrs,Ts), append(Ts,[X],Ys).
postorder(e,[]).

root(n(Y,Lb,Rb),Y):- binbaum(n(Y,Lb,Rb)).

roots([],Ys):- append([],[],Ys).
roots([Rb],Ys):- root(Rb,X), roots(Xs,Yns) append([],[X],Ys).
roots([Rb|Xs],Ys):- root(Rb,X), roots(Xs,Yns), append([X],Yns,Ys).

