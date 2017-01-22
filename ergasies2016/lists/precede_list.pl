precedes([],_). /*The first list is empty. Accept.*/

precedes([H|T1],[H|T2]):-
    /*The heads are the same. Check for the tails.*/
    precedes(T1,T2).