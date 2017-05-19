% Autor:
% Datum: 05.05.2017

%A21
%a)

% n(a,n(b,e,e), n(c,e,e)).
%               a
%             /   \
%            b     c

%b)

binbaum(e).
binbaum(n(X,Lb,Rb)):- binbaum(Lb), binbaum(Rb).

%c)

root(n(Y,Lb,Rb),Y):- binbaum(n(Y,Lb,Rb)).
left(n(Y,Lb,Rb),Lb):- binbaum(n(Y,Lb,Rb)).
right(n(Y,Lb,Rb),Rb):- binbaum(n(Y,Lb,Rb)).
