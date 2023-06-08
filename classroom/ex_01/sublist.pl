sublist([],[]).
lenght([],0).

lenght([_|T],Y):-lenght(T,X), Y is 1 + X
sublist(X,[_|T]):-sublist(X,T), lenght(X) <= lenght([_|T]).