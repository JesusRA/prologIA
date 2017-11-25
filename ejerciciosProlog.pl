% Ejercicios Prolog

% 1
penultimo(X,L):-
  append(_,[X,_],L).

penultimorec(X,[X,_]).
penultimorec(X,[_,Y|L]):-
  penultimorec(X,[Y|L]).

penultimorec2(X,[X,_]).
penultimorec2(X,[_|L]):-
  penultimorec2(X,L).

% 2
selecciona(X,[X|L],L).
selecciona(X,[Y|L1],[Y|L2]):-
  selecciona(X,L1,L2).

% 3
inserta(X,L1,L2):-
  selecciona(X,L2,L1).

% 4
sublista(L1,L2):-
  append(_L3,L4,L2),
  append(L1,_L5,L4).

% 5
todos_iguales([]).
todos_iguales([_]).
todos_iguales([X,X|L]):-
  todos_iguales([X|L]).

% 6
maximo(X,Y,X):-
  X >= Y.
maximo(X,Y,Y):-
  X < Y.

% 7
minimo(X,Y,X):-
  X < Y.
minimo(X,Y,Y):-
  X >= Y.

% 8
factorial(1,1).
factorial(X,Y):-
  X > 1,
  X1 is X-1,
  factorial(X1,Y1),
  Y is X*Y1.

% 9
fibonacci(0,0).
fibonacci(1,1).
fibonacci(N,X) :-
  N > 1,
  N1 is N-1,
  fibonacci(N1,X1),
  N2 is N-2,
  fibonacci(N2,X2),
  X is X1+X2.

% 10
mcd(X,X,X).
mcd(X,Y,Z):-
  X < Y,
  Y1 is Y-X,
  mcd(X,Y1,Z).
mcd(X,Y,Z):-
  X > Y,
  mcd(Y,X,Z).

% Más ejercicios Prolog

% 1
append([],L,L).
append([X|L1],L2,[X|L3]) :-
  append(L1,L2,L3).

% 2
prefix(P,L) :-
  append(P,_,L).

% 3
sufix(S,L) :-
  append(_,S,L).

% 4
accReverse([],L,L).
accReverse([H|T],Acc,Rev) :-
  accReverse(T,[H|Acc],Rev).
reverse(L1,L2) :-
  accReverse(L1,[],L2).

% 5
palindromo(L):-
  reverse(L,L).

% 6
suma_lista([],0).
suma_lista([X|L],Y) :-
  suma_lista(L,Y1),
  Y is X + Y1.

suma_lista_acc([],Acc,Suma) :-
  Suma = Acc.
suma_lista_acc([X|L],OldAcc,Suma) :-
  NewAcc is OldAcc + X,
  suma_lista_acc(L,NewAcc,Suma).
suma_lista_2(L,X) :-
  suma_lista_acc(L,0,X).

% 7
ordenada([_]).
ordenada([X,Y|L]) :-
  X =< Y,
  ordenada([Y|L]).

% 8
modulo(M,N,M):-
  M < N.
modulo(M,N,X):-
  M >= N,
  X is mod(M,N).
