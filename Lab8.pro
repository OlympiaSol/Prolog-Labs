%-- ASKHSH 1

smooth(List, K, S) :-
    length(List, Len),
    Len >= K,
    Length is Len - K + 1,
    calculate_smoothed(List, K, Length, Temp),
    reverse(Temp, S).

smooth(_, 0, []).

smooth(List, 1, List) :-
    length(List, Len),
    Len > 0.

smooth(_, K, []) :-
    K > 0.

calculate_smoothed(_, _, 0, []).

calculate_smoothed(List, K, Length, [Avg|Tail]) :-
    get_sublist(List, Sublist, Length, K),
    calculate_average(Sublist, Avg),
    NewLength is Length - 1,
    calculate_smoothed(List, K, NewLength, Tail).

get_sublist(List, Sublist, Index, K) :-
    length(List, Len),
    EndIndex is Index + K - 1,
    EndIndex =< Len,
    get_sublist_helper(List, Sublist, Index, EndIndex).

get_sublist_helper(List, Sublist, Index, EndIndex) :-
    findall(X, (between(Index, EndIndex, N), nth1(N, List, X)), Sublist).

calculate_average(List, Avg) :-
    sum_list(List, Sum),
    length(List, Len),
    Avg is div(Sum, Len).




%-----------------------------------------------------------------------------------------

%-- ASKHSH 2

robots(S1, L1, S2, L2) :-
    \+ collides_robots(S1, L1, S2, L2).

collides_robots(_, [], _, []).

collides_robots(S1, [A1 | T1], S2, [A2 | T2]) :-
    collision_of_robots(S1, A1, S2, A2),
    move(S1, A1, NS1),
    move(S2, A2, NS2),
    collides_robots(NS1, T1, NS2, T2).

collision_of_robots(sec(X1, Y1), Dir1, sec(X2, Y2), Dir2) :-
    X1 = X2,
    Y1 = Y2,
    opposite_dir(Dir1, Dir2).

move(sec(X, Y), w, sec(X, NY)) :- NY is Y - 1.
move(sec(X, Y), e, sec(X, NY)) :- NY is Y + 1.
move(sec(X, Y), s, sec(NX, Y)) :- NX is X + 1.
move(sec(X, Y), n, sec(NX, Y)) :- NX is X - 1.

opposite_dir(w, e).
opposite_dir(e, w).
opposite_dir(s, n).
opposite_dir(n, s).



%-----------------------------------------------------------------------------------------
%-----------------------------------------------------------------------------------------
%-----------------------------------------------------------------------------------------

%-- MHN TROPOPOIHSETE TO PARAKATW TMHMA KWDIKA 



inputList([3232,3008,2784,2560,2336,2112,1888,1664,1440,1216,992,768,544,320,96,3328,3104,2880,2656,2432,2208,1984,1760,1536,1312,1088,864,640,416,192,3424,3200,2976,
2752,2528,2304,2080,1856,1632,1408,1184,960,736,512,288,64,3296,3072,2848,2624,2400,2176,1952,1728,1504,1280,1056,832,608,384,160,3392,3168,2944,2720,2496,2272,2048,
1824,1600,1376,1152,928,704,480,256,32,3264,3040,2816,2592,2368,2144,1920,1696,1472,1248,1024,800,576,352,128,3360,3136,2912,2688,2464,2240,2016,1792]).