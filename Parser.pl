% Autor:
% Datum: 22.05.2017

append([],Xs,Xs).
append([X|Xs], Ys, [X|Rs]):- append(Xs,Ys,Rs).

sigma(a).
sigma(b).
vari(vS).
start(vS).
regel([vS],[]).
regel([vS],[a]).
regel([vS],[b]).
regel([vS],[a,vS,a]).
regel([vS],[b,vS,b]).

lvong([a,b,a]).
lvong(Xs):- sigma_stern(Xs),
            redrel_plus([S],Xs),
            start(S).
sigma_stern([]).
sigma_stern([X|Xs]):- sigma(X),
                      sigma_stern(Xs).
redrel_plus(Xs,Ys):- redrel(Xs,Ys).
redrel_plus(Xs,Ys):- redrel(Xs,Hs), redrel_plus(Hs,Ys).

redrel(Alphas,Betas):- regel(Ls,Rs),
                       append(Alpha1s,Ls,Hs),
                       append(Hs,Alpha2s,Alphas),
                       append(Alpha1s,Rs,H1s),
                       append(H1s,Alpha2s,Betas).
