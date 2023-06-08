list_length(List) :- list_length(List, 0).

list_length([], Acc) :- write("The list length is: "), write(Acc).
list_length([_ | T], Acc) :- Length is Acc + 1, list_length(T, Length).

% Modo de execução: list_length([1,2,3,4]).