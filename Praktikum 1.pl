% Autor:
% Datum: 22.04.2017

% Beschreibung aller eltern und eltern Relationen

% Geschlechter
mannlich(klausvater). mannlich(klaus). mannlich(hanz). mannlich(michael).
mannlich(jan). mannlich(tim). mannlich(kai). mannlich(heinz). mannlich(denis).
weiblich(erdmute). weiblich(gisela). weiblich(gudrun). weiblich(mitz).
weiblich(peter). weiblich(birgit). weiblich(klauseltern). weiblich(inge).
weiblich(claudia). weiblich(stefanie). weiblich(louise).
weiblich(silva). weiblich(malina).

% Relationen

% Erdmute
eltern(erdmute,gisela). eltern(erdmute,gudrun).
eltern(erdmute,mitz). eltern(erdmute,peter).

% Klaus
eltern(klausvater,inge). eltern(klausvater,inge).

% Inge
eltern(inge,claudia). eltern(hanz,claudia).
eltern(claudia,jan). eltern(claudia,tim). eltern(claudia,kai).
eltern(heinz,jan). eltern(heinz,tim). eltern(heinz,kai).


% Mitz
eltern(mitz,birgit).
eltern(birgit,malina).

% Stefanie
eltern(klaus,stefanie). eltern(gisela,stefanie).
eltern(michael,denis). eltern(stefanie,denis).
eltern(robert,louise). eltern(stefanie,louise).

eltern(michael,silva).

% Regeln
mutter(X,Y):- eltern(X,Y), weiblich(X).
vater(X,Y):- eltern(X,Y), mannlich(X).

sohn(XSohn,XEltern):- eltern(XEltern,XSohn), mannlich(XSohn).
sohn(XSohn,XEltern):- eltern(XEltern,XSohn), mannlich(XSohn).

tochter(XTochter,XEltern):- eltern(XEltern,XTochter), weiblich(XTochter).
tochter(XTochter,XEltern):- eltern(XEltern,XTochter), weiblich(XTochter).

bruder(XBruder,XGeschwister):- sohn(XBruder,XEltern), eltern(XEltern,XGeschwister), XBruder\==XGeschwister.
bruder(XBruder,XGeschwister):- sohn(XBruder,XEltern), eltern(XEltern,XGeschwister), XBruder\==XGeschwister.

schwester(XSchwester,XGeschwister):- tochter(XSchwester,XEltern), eltern(XEltern,XGeschwister), XSchwester\==XGeschwister.
schwester(XSchwester,XGeschwister):- tochter(XSchwester,XEltern), eltern(XEltern,XGeschwister), XSchwester\==XGeschwister.

tante(XTante,YNichte):- weiblich(XTante), schwester(XTante,T), eltern(T,YNichte).

onkel(XTante,YNichte):- mannlich(XTante), schwester(XTante,T), eltern(T,YNichte).

groﬂvater(X,Y):- vater(X,X1), vater(X1,Y).
groﬂvater(X,Y):- vater(X,X1), mutter(X1,Y).


groﬂmutter(X,Y):- mutter(X,X1), vater(X1,Y).
groﬂmutter(X,Y):- mutter(X,X1), mutter(X1,Y).

