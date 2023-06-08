% ---------------------- FATOS
filho(rosa-maria,oswaldo).
filho(evanilda,oswaldo).
filho(ricardo,oswaldo).
filho(magno,oswaldo).
filho(rosa-maria,efigenia).
filho(evanilda,efigenia).
filho(ricardo,efigenia).
filho(magno,efigenia).
filho(roger,pedro).
filho(rodrigo,pedro).
filho(roris,pedro).
filho(ralf,pedro).
filho(roger,neuza).
filho(rodrigo,neuza).
filho(roris,neuza).
filho(ralf,neuza).
filho(iolanda,rosa-maria).
filho(iolanda,joao-bosco).
filho(filipe,evanilda).
filho(joao-pedro,evanilda).
filho(marcelo,evanilda).
filho(filipe,roger).
filho(joao-pedro,roger).
filho(marcelo,roger).
filho(priscila,magno).
filho(priscila,gorete).
filho(maria-fernanda,rodrigo).
filho(maria-fernanda,luiza).
filho(sofia,roris).
filho(fernando,roris).
filho(sofia,fernanda).
filho(fernando,fernanda).
filho(ralf-jr,ralf).
filho(bruna,ralf).
filho(ralf-jr,carla).
filho(bruna,carla).
filho(gael,iolanda).
filho(gael,luis-felipe).

sexo(oswaldo,masculino).
sexo(rosa-maria,feminino).
sexo(evanilda,feminino).
sexo(ricardo,masculino).
sexo(magno,masculino).
sexo(efigenia,feminino).
sexo(pedro,masculino).
sexo(roger,masculino).
sexo(rodrigo,masculino).
sexo(roris,masculino).
sexo(ralf,masculino).
sexo(neuza,feminino).
sexo(iolanda,feminino).
sexo(joao-bosco,masculino).
sexo(filipe,masculino).
sexo(joao-pedro,masculino).
sexo(marcelo,masculino).
sexo(priscila,feminino).
sexo(gorete,feminino).
sexo(maria-fernanda,feminino).
sexo(sofia,feminino).
sexo(fernando,masculino).
sexo(fernanda,feminino).
sexo(ralf-jr,masculino).
sexo(bruna,feminino).
sexo(carla,feminino).
sexo(gael,masculino).
sexo(luis-felipe, masculino).

% ----------------- REGRAS
irmaos(Pessoa1,Pessoa2):-filho(Pessoa1,X),filho(Pessoa2,X),Pessoa1 \= Pessoa2.
avo(Pessoa1,Pessoa2):-filho(Pessoa2,X),filho(X,Pessoa1),sexo(Pessoa1,feminino),Pessoa1 \= Pessoa2.
tia(Pessoa1,Pessoa2):-filho(Pessoa2,X),irmaos(X,Pessoa1),sexo(Pessoa1,feminino),Pessoa1 \= Pessoa2.
primos(Pessoa1,Pessoa2):-filho(Pessoa1,X),filho(Pessoa2,Y),filho(X,Z),filho(Y,Z), Pessoa1 \= Pessoa2.