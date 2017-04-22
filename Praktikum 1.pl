% Autor:
% Datum: 22.04.2017

% Beschreibung aller Vater und Mutter Relationen

% Prädikate
mannlich(klausvater). mannlich(klaus). mannlich(hanz). mannlich(michael).
mannlich(jan). mannlich(tim). mannlich(kai). mannlich(heinz). mannlich(denis).
weiblich(erdmute). weiblich(gisela). weiblich(gudrun). weiblich(mitz).
weiblich(peter). weiblich(birgit). weiblich(klausmutter). weiblich(inge).
weiblich(claudia). weiblich(stefanie). weiblich(louise).
weiblich(silva). weiblich(malina).

% Relationen
mutter(erdmute,gisela). mutter(erdmute,gudrun).
mutter(erdmute,mitz). mutter(erdmute,peter).
mutter(mitz,birgit).
vater(klausvater,klaus). mutter(klausmutter,klaus).
vater(klausvater,inge). mutter(klausmutter,inge).
mutter(inge,claudia). vater(hanz,claudia).
mutter(claudia,jan). mutter(claudia,tim). mutter(claudia,kai).
vater(heinz,jan). vater(heinz,tim). vater(heinz,kai).
vater(klaus,stefanie). mutter(gisela,stefanie).
vater(michael,denis). mutter(stefanie,denis).
vater(robert,louise). mutter(stefanie,louise).
vater(michael,silva).
mutter(birgit,malina).

% Regeln
sohn(XSohn,XEltern):- vater(XEltern,XSohn), mannlich(XSohn).
sohn(XSohn,XEltern):- mutter(XEltern,XSohn), mannlich(XSohn).

tochter(XTochter,XEltern):- vater(XEltern,XTochter), weiblich(XTochter).
tochter(XTochter,XEltern):- mutter(XEltern,XTochter), weiblich(XTochter).

bruder(XBruder,XGeschwister):- sohn(XBruder,XEltern), tochter(XGeschwister,XEltern).
bruder(XBruder,XGeschwister):- sohn(XBruder,XEltern), sohn(XGeschwister,XEltern).

schwester(XBruder,XGeschwister):- tochter(XBruder,XEltern), tochter(XGeschwister,XEltern).
schwester(XBruder,XGeschwister):- tochter(XBruder,XEltern), sohn(XGeschwister,XEltern).
