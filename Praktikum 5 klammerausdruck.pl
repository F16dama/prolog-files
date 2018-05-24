% Autor:
% Datum: 18.06.2017

%a)

%Startzustand
start(z0).

%Kellerboden
ende(#).

%Zustände
z(z0).
z(z1).

%Alphabet Sigma
sigma('(').
sigma(')').
sigma('a').
sigma('+').

%Alphabet Keller
keller('(').
keller('#').

%Transrelationen
delta(z0,'(','#',z0,['(','#']).
delta(z0,'(','(',z0,['(','(']).

delta(z0,'+','#',z1,['#']).
delta(z0,'a','#',z1,['#']).
delta(z0,'+','(',z1,['(']).
delta(z0,'a','(',z1,['(']).

delta(z1,'+','#',z1,['#']).
delta(z1,'a','#',z1,['#']).
delta(z1,'+','(',z1,['(']).
delta(z1,'a','(',z1,['(']).

delta(z1,'(','#',z0,['(','#']).
delta(z1,'(','(',z0,['(','(']).

delta(z1,')','#',z1,[]).
delta(z1,')','(',z1,[]).

% delta(z0, 1, #, z0, [1, #]).
% delta(z0, 1, 0, z0, [1, 0]).
% 
% delta(z0, nix, #, z2, [#]).
% delta(z0, nix, 0, z2, [0]).
% delta(z0, nix, 1, z2, [1]).

% Sigma*
sigma_stern([]).
sigma_stern([X|Xs]) :- sigma(X), sigma_stern(Xs).

%Einzelschrittrelationen
%(z, aw, gs, z', w, s's) ∈ |-M if (z, a, g, z', s') ∈ ∂
es(S, [A|Ws], [T | Gs], NS, Ws, NKs) :- delta(S, A, T, NS, TKs), append(TKs, Gs, NKs).

%(z, w, gs, z', w, s's) ∈ |-M if (z, nix, g, z', s') ∈ ∂
es(S, Ws, [T|Gs], NS, Ws, NKs) :- delta(S, nix, T, NS, TKs), append(TKs, Gs, NKs).

%Transitiver Abschluss Einzelschrittrelationen
es_plus(_, [], [Es]) :- ende(Es).
es_plus(S, Ws, Ks) :-
    es(S, Ws, Ks, NS, NWs, NKs),
    es_plus(NS, NWs, NKs).
    
    
% Relation lvonM(Ws) die allgemein der Sprache
% entspricht, die von definierten PDA erkannt wird
lvonM(Xs) :- start(S), z(S), ende(H), keller(H), es_plus(S, Xs, [H]).
 