% Autor:
% Datum: 07.05.2017

append(nil,Xs,Xs).
append(list(X,Xs), Ys, list(X,Zs)):- append(Xs,Ys,Zs).

%A1
%a)

linList(nil).
linList(list(X,nil)).
linList(list(X,list(Y,Ys) ) ):- linList(list(Y,Ys)).

%b)
member(X,list(X,Xs)).
member(X,list(Y,Xs)):- member(X,Xs).

infix(list(X,Xs),list(Y,Ys)):- append.

%A2
