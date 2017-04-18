% Autor:
% Datum: 14.04.2017

natSymb(o).
natSymb(s(X)):- natSymb(X).

%a)

natList(nil).
natList(list(X,X1)):- natList(X1), natSymb(X).

%b)

invList(nil).
invList(list(o,nil)).
invList(list(s(X),list(X,X1) ) ):- natSymb(X), invList(list(X,X1)).
