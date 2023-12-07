padre(juan, carlos).
padre(juan, ana).
padre(carlos, pedro).
padre(carlos, maria).
padre(pedro, jorge).
padre(pedro, luis).
padre(moises, espiri).
madre(maria, pedro).
madre(maria, maria).
madre(ana, jorge).
madre(ana, luis).
madre(moises, lilia).



abuelo(Abuelo, Nieto) :- padre(Abuelo, Hijo), padre(Hijo, Nieto). 
abuelo(Abuelo, Nieto) :- madre(Abuelo, Hijo), padre(Hijo, Nieto).

abuela(Abuela, Nieto) :- madre(Abuela, Hija), madre(Hija, Nieto).
abuela(Abuela, Nieto) :- padre(Abuela, Hijo), madre(Hijo, Nieto).

tio(Tio, Sobrino) :- hermano(Tio, Padre), padre(Padre, Sobrino).
tio(Tia, Sobrino) :- hermana(Tia, Madre), madre(Madre, Sobrino).

tia(Tia, Sobrino) :- hermana(Tia, Madre), madre(Madre, Sobrino).
tia(Tia, Sobrino) :- hermano(Tia, Padre), padre(Padre, Sobrino).

hermano(Hermano, Otro) :- padre(Padre, Hermano), padre(Padre, Otro), Hermano \= Otro.

hermana(Hermana, Otro) :- madre(Madre, Hermana), madre(Madre, Otro), Hermana \= Otro.

