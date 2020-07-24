% Fig. X is unique wrt prop P and value V, if there is no ..
unique(X,P,V) :- prop(X,P,V), not exists_diff(X,P,V).

% .. other figure Y that has the same prop/value pair: 
exists_diff(X,P,V) :- prop(X,P,V), prop(X2,P,V), X != X2. 

% Which figure F is special (wrt some prop / value)
special(X) :- unique(X,_,_).

normal(X) :- prop(X,_,_), not special(X).



#show unique/3.
#show special/1.
#show normal/1.
