conv_temp(X) :-
    Temp is 9.0/5.0*X+32,
    is_it_hot(Temp).

is_it_hot(T) :-
    T > 90,
    write("Hot temperature today."),
    nl,
	get_input().

is_it_hot(T) :-
    T < 30,
    write("It is cold today"),
    nl,
	get_input().

% Neither hot or cold...
is_it_hot(T) :-
    get_input().

get_input() :-
    write("Please type the temperature in Celcius: "),
    nl,
    read(X),
    conv_temp(X).
