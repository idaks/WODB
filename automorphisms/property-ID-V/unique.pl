% Fig. X is unique wrt property value V, if there is no ..
unique(X,V) :- prop(X,V), not exists_diff(X,V).

% .. other object X2 that has the same property: 
exists_diff(X,V) :- prop(X,V), prop(X2,V), X != X2. 

% Which figure F is special (wrt some prop / value)
special(X) :- unique(X,_).

normal(X) :- prop(X,_), not special(X).


#show unique/2.
#show special/1.
#show normal/1.
