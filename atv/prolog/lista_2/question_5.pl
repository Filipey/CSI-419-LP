remove_duplicates([], []).
remove_duplicates([H | T], NoDuplicatesList) :- 
    member(H, T), 
    remove_duplicates(T, NoDuplicatesList).

remove_duplicates([H | T], [H | NoDuplicatesList]) :- 
    \+ member(H, T), 
    remove_duplicates(T, NoDuplicatesList).

% Modo de execução: remove_duplicates([1,1,2,3,4,4,5,6], X).