% Autor:
% Datum: 08.04.2017

%A5

vater(terach,abraham).         m�nnlich(terach).
vater(terach,nachor).          m�nnlich(abraham).
vater(terach,haran).           m�nnlich(nachor).
vater(abraham,isaak).          m�nnlich(haran).
vater(haran,lot).              m�nnlich(isaak).
vater(haran,milcah).           m�nnlich(lot).
vater(haran,yiscah).
mutter(sarah,isaak).           weiblich(sarah).
                               weiblich(milcah).
                               weiblich(yiscah).


% Bruder

bruder(X1,X3):- vater(X2,X1),vater(X2,X3),m�nnlich(X1).
bruder(X1,X3):- mutter(X2,X1),mutter(X2,X3),m�nnlich(X1).

% Schwester

schwester(X1,X3):- vater(X2,X1),vater(X2,X3),weiblich(X1).
schwester(X1,X3):- mutter(X2,X1),mutter(X2,X3),weiblich(X1).

% Kind

kind(X1,X2):- vater(X2,X1).
kind(X1,X2):- mutter(X2,X1).

% Sohn

sohn(X1,X2):- kind(X1,X2), m�nnlich(X1).

% Tochter

tochter(X1,X2):- kind(X1,X2), weiblich(X1).