% A graph automorphism is a bijection m: V -> V,
% s.t. e(X,Y) <=> e( f(X), f(Y) ) for all X,Y in V.

% EDGES: 
e(X,Y) :- prop(X,Y).

% VERTICES:
v(X) :- e(X,_).
v(X) :- e(_,X).

% For any pair X,Y, there is a map arc m(X,Y) or there isn't: 
{m(X,Y)} :- v(X), v(Y).

% e(X1,X2) and m: Xi -> Yi, then e(Y1,Y2): 
:- e(X1,X2), m(X1,Y1), m(X2,Y2), not e(Y1,Y2).
% ... and vice versa: 
:- e(Y1,Y2), m(X1,Y1), m(X2,Y2), not e(X1,X2).

% Each vertex X is source and sink of exactly one m-arc:
:- v(X), #count {Y: m(X,Y)} != 1.
:- v(X), #count {Y: m(Y,X)} != 1.

#show m/2.
