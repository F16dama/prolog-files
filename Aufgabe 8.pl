% Autor:
% Datum: 11.04.2017


natSymb(o).
natSymb(s(X)):- natSymb(X).
add(Sum1,o,Sum1):- natSymb(Sum1).                        % n + 0 = n
add(Sum1,s(Sum2),s(Erg1)):- add(Sum1,Sum2,Erg1).

%a)

eqZero(o).

%b)

% Wenn rechts gilt, dann gilt auch links
neqZero(X):- add(X,Y,o),



