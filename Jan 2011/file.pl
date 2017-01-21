main:-
         open('input.txt',read,Str),
         read_from_file(Str, Lines),
         close(Str),
         write(Lines),  nl.



read_from_file(Stream, [H|T]):-
          \+ at_end_of_stream(Stream),
          read(Stream,H),
          read_from_file(Stream, T).

read_from_file(Stream,[]):-
          !.
