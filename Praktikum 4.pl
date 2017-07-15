% Autor:
% Datum: 04.06.2017


%a)

%Zustände
z(z0).
z(z1).

%Alphabet
sigma(1).
sigma(2).
sigma(3).

%Startzustand
start(z0).

%Endzustand
ende(z1).

%Transitionfunktion delta(zakt,Ws,Zneu)
delta(z0, 2, z1).
delta(z1, 2, z0).
delta(z0, 1, z1).
delta(z1, 1, z0).
delta(z0, 3, z1).
delta(z1, 3, z0).


%b)

%Sigma* prüft ob nur zeichen aus Alphabet verwendet wurden
sigma_stern([]).
sigma_stern([A|Ws]) :- sigma(A), sigma_stern(Ws).

%delta_stern(zakt,Ws,Zneu)
delta_stern(S, [], S).
delta_stern(S, [A|Ws], Sn) :- delta(S, A, D), delta_stern(D, Ws, Sn).

%Prüft ob angegebenes Wort korrekt ist oder nicht
lvonN(Ws) :- sigma_stern(Ws), start(S), ende(E), delta_stern(S, Ws, E).