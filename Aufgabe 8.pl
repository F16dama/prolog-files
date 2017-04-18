% Autor:
% Datum: 11.04.2017


natSymb(o).
natSymb(s(X)):- natSymb(X).

%a)

eqZero(o).

%b)

% Wenn rechts gilt, dann gilt auch links
neqZero(X):- X\==o, natsymb(X).



