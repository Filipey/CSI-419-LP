is_sublist([], _).
is_sublist([H | T], OriginalList) :- 
    is_member(H, OriginalList, OtherElements), 
    is_sublist(T, OtherElements).

is_member(X, [X | T], T).
is_member(X, [_ | T], OtherElements) :- is_member(X, T, OtherElements).

% Modo de execução: is_sublist([1,2,3], [1,2,3,4]).