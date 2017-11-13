len([],0).
len([_|L],N):-
  len(L,X),
  N is X + 1.

acclen([], Acc, Length):-
  Length = Acc.
acclen([_|L], OldAcc, Length):-
  NewAcc is OldAcc + 1,
  acclen(L, NewAcc, Length).
