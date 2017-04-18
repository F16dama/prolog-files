% Autor:
% Datum: 14.04.2017

%a)
head(list(X,Xs),X).


%b)
tail(list(_,Ys),Ys).

%c)
append(nil,Xs,Xs).
append(list(X,Xs), Ys, list(X,Zs)):- append(Xs,Ys,Zs).

