mymember(X,[X|_]) :- !.
mymember(X,[_|T]) :- mymember(X,T).

set([],[]).
set([H|T],[H|Out]) :-
    not(mymember(H,T)),
    set(T,Out).
set([H|T],Out) :-
    mymember(H,T),
    set(T,Out).
