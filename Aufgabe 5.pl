% Autor:
% Datum: 08.04.2017

%A5

vater(terach,abraham).         männlich(terach).
vater(terach,nachor).          männlich(abraham).
vater(terach,haran).           männlich(nachor).
vater(abraham,isaak).          männlich(haran).
vater(haran,lot).              männlich(isaak).
vater(haran,milcah).           männlich(lot).
vater(haran,yiscah).
mutter(sarah,isaak).           weiblich(sarah).
                               weiblich(milcah).
                               weiblich(yiscah).


% Bruder

bruder(X1,X3):- vater(X2,X1),vater(X2,X3),männlich(X1).
bruder(X1,X3):- mutter(X2,X1),mutter(X2,X3),männlich(X1).

% Schwester

schwester(X1,X3):- vater(X2,X1),vater(X2,X3),weiblich(X1).
schwester(X1,X3):- mutter(X2,X1),mutter(X2,X3),weiblich(X1).

% Kind

kind(X1,X2):- vater(X2,X1).
kind(X1,X2):- mutter(X2,X1).

% Sohn

sohn(X1,X2):- kind(X1,X2), männlich(X1).

% Tochter

tochter(X1,X2):- kind(X1,X2), weiblich(X1).