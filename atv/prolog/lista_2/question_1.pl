reverse([], []).
reverse([H | T], ReversedList) :- reverse(T, ReversedTail), append(ReversedTail, [H], ReversedList).

% Modo de execução: reverse([1,2,3,4], X).