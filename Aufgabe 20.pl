% Autor:
% Datum: 05.05.2017

%A20
%a)
anz(nil,o).
anz(list(X,Xs),s(N)):- anz(Xs,N).



%b)
präfix(nil,Xs).
präfix(list(X,Xs),list(X,Ys)):- präfix(Xs,Ys).