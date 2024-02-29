
%-----------------------------------------------------------------------------------------

%-- ASKHSH 1

p(X, A, N) :-
    S is 1 - A,
    S < X,
    p1(X, A, S, 2, N).

p(X, A, 1) :-
    S is 1 - A,
    S >= X.

p1(X, A, S, N1, N) :-
    S1 is S + (1 - (A / N1)),
    S1 >= X,
    N is N1.

p1(X, A, S, N1, N) :-
    S1 is S + (1 - (A / N1)),
    S1 < X,
    N2 is N1 + 1,
    p1(X, A, S1, N2, N).



%-----------------------------------------------------------------------------------------

%-- ASKHSH 2

fromTo(L, I, J, S) :-
    integer(I),
    integer(J),
    fromToHelper(L, I, J, 1, S).

fromToHelper([], _, _, _, []).
fromToHelper([_|T], I, J, C, S) :-
    C < I,
    C1 is C + 1,
    fromToHelper(T, I, J, C1, S).
fromToHelper([H|T], I, J, C, [H|S]) :-
    C >= I,
    C =< J,
    C1 is C + 1,
    fromToHelper(T, I, J, C1, S).
fromToHelper(_, _, J, C, []) :-
    C > J.





