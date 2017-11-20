% en mayúsculas porque son variables
[Atico,Piso4,Piso3,Piso2,Bajo]
% en minúsculas porque son átomos
[juan,antonio,ana,maria,luis]
% si vive más alto está más a la izquierda en nuestra lista
% definir higher y not_adjacent
higher().
not_adjacent().
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
