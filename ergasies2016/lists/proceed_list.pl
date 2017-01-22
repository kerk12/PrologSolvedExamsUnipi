find_last([X], X).

find_last([H|T],X):-
    find_last(T,X).

proceed_list([],[]):-!.
proceed_list([H|T],[]):-!.

proceed_list([H|T],[L|R]):-
    find_last([H|T], X),
    X =< L,
    !.
