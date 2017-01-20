alter([],[]):-
    !.

alter([],[H|T]):-
    !.
alter([X],Y):-
    change(X,Z),

    append(Y,Z,Y),
    alter([],Y).

alter([H|T],Z):-
    change(H, X),
    write(Z),
    append(Z,X, Z),
    alter(T, Z).

change(you,i):-
    !.
change(are,[am,not]):-
    !.
change(french,german):-
    !.
change(do,no):-
    !.
change(X,X).
