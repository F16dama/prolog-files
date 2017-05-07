% Autor:
% Datum: 05.05.2017

%A21
%a)

% binbaum(a,binbaum(b,nil,nil), binbaum(c,nil,nil)).

%b)

binbaum(nil,nil,nil).
binbaum(X,nil,nil).
binbaum(X,binbaum(L,LLb,LRb),binbaum(R,RLb,RRb)):- binbaum(L,LLb,LRb), binbaum(R,RLb,RRb).

%c)

root()