penultimo(X,L):-
  append(_,[X,_],L).

% penultimorec es más eficiente
penultimorec(X,[X,_]).
penultimorec(X,[_,Y|L]):-
  penultimorec(X,[Y|L]).

penultimorec2(X,[X,_]).
penultimorec2(X,[_|L]):-
  penultimorec2(X,L).

selecciona(X,[X|L],L).
selecciona(X,[Y|L1],[Y|L2]):-
  selecciona(X,L1,L2).

inserta(X,L1,L2):-
  selecciona(X,L2,L1).

maximo(X,Y,X):-
  X >= Y.
maximo(X,Y,Y):-
  X < Y.

factorial(1,1).
factorial(X,Y):-
  X > 1,
  X1 is X-1,
  factorial(X1,Y1),
  % operacion después de llamada, se van metiendo en una pila
  % y se hacen todas al final
  Y is X*Y1.
