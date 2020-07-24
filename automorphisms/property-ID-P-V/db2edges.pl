% Mapping DB facts to graph edges: 
e(t(X,P,V), X) :- prop(X,P,V).
e(t(X,P,V), P) :- prop(X,P,V).
e(t(X,P,V), V) :- prop(X,P,V).
