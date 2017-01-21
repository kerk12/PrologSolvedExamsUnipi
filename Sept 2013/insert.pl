insert(X,[],[X]):-!.
insert(X,[H|T],[X,H|T]):-
       X=<H,
       !.
insert(X,[H|T],[H|T1]):-
       insert(X,T,T1).
