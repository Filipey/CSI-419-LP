fala(alex,russo).
fala(bob,ingles).
fala(mary,russo).
fala(mary,ingles).

fala_com(Pessoa1,Pessoa2):-fala(Pessoa1,L),fala(Pessoa2,L),Pessoa1 \= Pessoa2.