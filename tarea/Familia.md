## Hechos que representan relaciones familiares

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

## reglas de consulta

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

## Consultas de ejemplo

 ¿Quién es el padre de Pedro?
- consulta: padre(X, pedro).
- resultado esperado: X = carlos.

 ¿Quién es el abuelo de Jorge?
- consulta: abuelo(X, jorge).
- resultado esperado: X = juan.

 ¿Quién es el tío de Luis?
- consulta: tio(X, luis).
- resultado esperado: X = ana ; X = carlos ; X = maria.



