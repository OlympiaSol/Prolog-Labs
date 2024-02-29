
%-----------------------------------------------------------------------------------------

%-- ASKHSH 1

grade(A, B, C, E, G) :-
    (A < 1 ; A > 10 ; B < 1 ; B > 10 ; C < 1 ; C > 10 ; E < 1 ; E > 10), G is 0.

grade(A, B, C, E, G) :-
    A >= 5, B >= 5, C >= 5, weighted_mean(A, B, C, M),
    M > E, ((M + E) / 2) * 1.2 > 10,
    G is 10.

grade(A, B, C, E, G) :-
    A >= 5, B >= 5, C >= 5, weighted_mean(A, B, C, M),
    M > E, ((M + E) / 2) * 1.2 =< 10,
    G is ((M + E) / 2) * (1.2).

grade(A, B, C, E, G) :-
    A >= 5, B >= 5, C >= 5, weighted_mean(A, B, C, M),
    M =< E, E * 1.2 =< 10,
    G is E * 1.2.

grade(A, B, C, E, G) :-
    A >= 5, B >= 5, C >= 5, weighted_mean(A, B, C, M),
    M =< E, E * 1.2 > 10,
    G is 10.

grade(A, B, C, E, G) :-
    weighted_mean(A, B, C, M), M > E,
    G is (M + E) / 2.

grade(A, B, C, E, G) :-
    weighted_mean(A, B, C, M), M =< E,
    G is E.

weighted_mean(A, B, C, M) :-
    M is 3 / ((1 / A) + (1 / B) + (1 / C)).

%-----------------------------------------------------------------------------------------

%-- ASKHSH 2

zeta(K, N, X, Y, G) :-
K =:= 0,
G is Y + K.
zeta(K, N, X, Y, G) :-
N < K,
G is Y + K.
zeta(K, N, X, Y, G) :-
Y < K,
N =:= K,
G is X.
zeta(K, N, X, Y, G) :-
N =:= K + 1,
Y < K,
G is N - 2.
zeta(K, N, X, Y, G) :-
Y < K,
N >= K + 2,
G is K.
zeta(K, N, X, Y, G) :-
K >= 1,
Y >= K,
N >= K,
S1 is N - K,
S2 is Y - K,
zeta(K, N, X, S2, G2),
zeta(K, S1, X, G2, G).

