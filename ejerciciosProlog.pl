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

minimo(X,Y,X):-
  X < Y.
minimo(X,Y,Y):-
  X >= Y.

% operacion después de llamada, se van metiendo en una pila
% y se hacen todas al final
factorial(1,1).
factorial(X,Y):-
  X > 1,
  X1 is X-1,
  factorial(X1,Y1),
  Y is X*Y1.

sublista(L1,L2):-
  append(_L3,L4,L2),
  append(L1,_L5,L4).

todos_iguales([]).
todos_iguales([_]).
todos_iguales([X,X|L]):-
  todos_iguales([X|L]).

fibonacci(0,0).
fibonacci(1,1).
fibonacci(N,X) :-
  N > 1,
  N1 is N-1,
  fibonacci(N1,X1),
  N2 is N-2,
  fibonacci(N2,X2),
  X is X1+X2.

mcd(X,X,X).
mcd(X,Y,Z):-
  X < Y,
  Y1 is Y-X,
  mcd(X,Y1,Z).
mcd(X,Y,Z):-
  X > Y,
  mcd(Y,X,Z).

concatena([],L,L).
concatena([X|L1],L2,[X|L3]) :-
  append(L1,L2,L3).

%prefix
%sufix
%reverse

palindromo(L):-
  reverse(L,L).

%suma lista
suma_lista([],0).
suma_lista([X|L],Y) :-
  suma_lista(L,Y1),
  Y is X+Y1.

ordenada([_]).
ordenada([X,Y|L]) :-
  X =< Y,
  ordenada([Y|L]).

%modulo
