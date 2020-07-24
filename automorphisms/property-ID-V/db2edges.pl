% Mapping DB facts to graph edges: 
e(t(X,Y), X) :- prop(X,Y).
e(t(X,Y), Y) :- prop(X,Y).
