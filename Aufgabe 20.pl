% Autor:
% Datum: 05.05.2017

%A20
%a)
anz(nil,o).
anz(list(X,Xs),s(N)):- anz(Xs,N).



%b)
pr�fix(nil,Xs).
pr�fix(list(X,Xs),list(X,Ys)):- pr�fix(Xs,Ys).