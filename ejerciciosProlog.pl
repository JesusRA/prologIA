penultimo(X,L):-
  append(_,[X,_],L).

% penultimorec es más eficiente
penultimorec(X,[X,_]).
penultimorec(X,[_,Y|L]):-
  penultimorec(X,[Y|L]).

penultimorec2(X,[X,_]).
penultimorec2(X,[_|L]):-
  penultimorec2(X,L).
