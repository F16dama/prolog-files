% Autor:
% Datum: 08.04.2017

%A6

%d)

natSymb(o).
natSymb(s(X)):- natSymb(X).

%a)

% add(Ergebnis,Summand1,Summand2).
add(Sum1,o,Sum1):- natSymb(Sum1).                        % n + 0 = n
add(Sum1,s(Sum2),s(Erg1)):- add(Sum1,Sum2,Erg1).


%b)

% sub(Ergebnis,Summand1,Summand2).
sub(Sum1,Sum2,Erg1):- add(Sum2,Erg1,Sum1).

%c)

%halb(Ganz,Halb).
halb(G,H):- add(H,H,G).

%e)

%multi(Faktor1,Faktor2,Produkt)
multi(Faktor1,o,o).
multi(Faktor1,s(Faktor2),Produkt):- multi(Faktor1,Factor2,Kfach) , add(Kfach,Faktor1,Produkt).

