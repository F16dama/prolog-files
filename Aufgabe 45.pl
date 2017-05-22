% Autor:
% Datum: 22.05.2017

% Aufgabe 45 e

alp(tick).
alp(tack).

l_uhr([tick,tack]).
l_uhr([W,W2,W3|Ws]):- alp(W),alp(W2),alp(W3),W\==W2, W2\==W3.
l_uhr([W,W2|Ws]):- alp(W),alp(W2),W\==W2, l_uhr(Ws).