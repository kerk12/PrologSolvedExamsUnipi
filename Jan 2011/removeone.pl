removeone(_, [], []):-
    !.

removeone(X,[X|Tail], Tail):-
    !.

removeone(X, [H|T], [H|T1]):-
    X\=H,
    removeone(X,T,T1),
    !.
