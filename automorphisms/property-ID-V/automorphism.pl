% A graph automorphism is a bijection m: V -> V,
% s.t. e(X,Y) <=> e( f(X), f(Y) ) for all X,Y in V.

% Final all VERTICES (the edges e/2 come from a separate file): 
v(X) :- e(X,_).
v(X) :- e(_,X).

% For any pair of vertices X,Y, there is 0 or 1 map atom m(X,Y):
0 { m(X,Y) } 1 :- v(X), v(Y).

% X1--e-->X2 is mapped to Y1--e-->Y2 whenever X1--m-->Y1 and X2-->m-->Y2 
:- e(X1,X2), m(X1,Y1), m(X2,Y2), not e(Y1,Y2).
% ... and vice versa: 
:- e(Y1,Y2), m(X1,Y1), m(X2,Y2), not e(X1,X2).

% Each vertex X is source and sink of exactly one m-arc:
:- v(X), #count {Y: m(X,Y)} != 1.
:- v(X), #count {Y: m(Y,X)} != 1.

%#show m/2.
