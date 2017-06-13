% Autor:
% Datum: 11.06.2017

sigma(a).
sigma(b).

vari(vS).
start(vS).

regel([vS],[]).
regel([vS],[a,vS,b]).


lvong(Xs):- start(S),
            redrel_plus([S],Xs),
            sigma_stern(Xs).
sigma_stern([]).
sigma_stern([X|Xs]):- sigma(X),
                      sigma_stern(Xs).

redrel_plus(Xs,Ys):-  redrel(Xs,Ys).
redrel_plus(Xs,Ys):-  redrel(Xs,Hs), redrel_plus(Hs,Ys).

redrel(Alphas,Betas):- regel(Ls,Rs),
                       append(Ls,Alpha2s,AlphaRs),
                       append(Alpha1s,AlphaRs,Alphas),
                       append(Alpha1s,Rs,BetaLs),
                       append(BetaLs,Alpha2s,Betas).

append([],Xs,Xs).
append([X|Xs], Ys, [X|Rs]):- append(Xs,Ys,Rs).