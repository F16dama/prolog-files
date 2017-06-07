% Autor:
% Datum: 04.06.2017


%a)

%Zustände
z(z0).
z(z1).

%Alphabet
sigma(a).
sigma(b).

%Startzustand
z0(z0).

%Endzustand
e(z0).

%Transitionfunktion delta(zakt,Ws,Zneu)
delta(z0, a, z1).
delta(z0, b, z1).
delta(z1, a, z0).
delta(z1, b, z0).


%b)

%Sigma* prüft ob nur zeichen aus Alphabet verwendet wurden
sigma_stern([]).
sigma_stern([A|Ws]) :- sigma(A), sigma_stern(Ws).

%delta_stern(zakt,Ws,Zneu)
delta_stern(S, [], S).
delta_stern(S, [A|Ws], Sn) :- delta(S, A, D), delta_stern(D, Ws, Sn).

%Prüft ob angegebenes Wort korrekt ist oder nicht
lvonN(Ws) :- sigma_stern(Ws), z0(S), e(E), delta_stern(S, Ws, E).