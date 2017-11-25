higher(X,Y,[X|T]):-
  member(Y,T).
higher(X,Y,[H|T]):-
  higher(X,Y,T).

adjacent(X,Y,[X,Y|_]).
adjacent(X,Y,[_|L]):-adjacent(X,Y,L).

not_adjacent(X,Y,L):-
  not(adjacent(X,Y,L)),
  not(adjacent(Y,X,L)).

puzzle(L):-
  permutation(L,[juan,antonio,ana,maria,luis]),
  L = [Atico,Piso4,Piso3,Piso2,Bajo],
  juan \== Atico,
  antonio \== Bajo,
  ana \== Atico,
  ana \== Bajo,
  higher(luis,antonio,L),
  not_adjacent(maria,ana,L),
  not_adjacent(ana,antonio,L).

% en Prolog
% ?- puzzle(L).
