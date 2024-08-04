
% Task input:
in_valid_range(V) :- 
    numlist(108457, 562041, L),
    member(V, L).


digits(0, [0]).
digits(1, [1]).
digits(2, [2]).
digits(3, [3]).
digits(4, [4]).
digits(5, [5]).
digits(6, [6]).
digits(7, [7]).
digits(8, [8]).
digits(9, [9]).

digits(V, [F|T]) :- 
    divmod(V, 10, Q, R),
    F is R, 
    digits(Q, T), !.

descendent([]).
descendent([_]).
descendent([A,B|T]) :- A >= B, descendent([B|T]). 

has_same_adjacent([]) :- false.
has_same_adjacent([_]) :- false.
has_same_adjacent([A,B|T]) :- 
    A = B;
    has_same_adjacent([B|T]).

remove_prefix(_, [], []) :- true.
remove_prefix(A, [B|T], [B|T]) :- A =\= B.
remove_prefix(A, [A|T], L) :- remove_prefix(A, T, L).


has_exactly_two_same_adjacent([]) :- false.
has_exactly_two_same_adjacent([_]) :- false.
has_exactly_two_same_adjacent([A,B]) :- A = B.
has_exactly_two_same_adjacent([A,B,C|T]) :-
    A =\= B, has_exactly_two_same_adjacent([B, C|T]);
    A = B, B =\= C;
    A = B, B = C, remove_prefix(A, T, Rest), has_exactly_two_same_adjacent(Rest).


good_password(V) :- 
    in_valid_range(V),
    digits(V, D),
    descendent(D),
    % has_same_adjacent(D). -- part one
    has_exactly_two_same_adjacent(D).

solution(X) :- 
    findall(V, good_password(V), L),
    list_to_set(L, S),
    length(S, X).
