pairs_list([], []).
pairs_list([First, Second | Tail], [[First, Second] | Rest]) :-
    pairs_list(Tail, Rest).