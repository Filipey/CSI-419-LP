inverte([]).
inverte([A|T]):-inverte(T),write(A).