find_element([X | _], 1) :- write("Element found: "), write(X).
find_element([_ | T], K) :- K > 1, K1 is K - 1, find_element(T, K1).

% Modo de execução: find_element([1,2,3,4], 3).