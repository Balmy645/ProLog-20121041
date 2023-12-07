
Es un proyecto.

Basarse en Eliza para su trabajo. 

-Contiene el sistema experto (Lo que nos gusta)
-Lo de la familia (opcional)
-Lo de las enfermedades

Las funciones de replace son los que hacen los recorridos sobre las listas para localizar la información.

! —› funciona como un break; 

padre(juan, pedro).

padre(pedro, luis).

abuelo(X, Y, R) :- padre(X, Z), padre(Z, Y), R=['Si es su abuelo']
abuelo(X, Y, R) :- \+padre(X, Z), padre(Z, Y), R=['No es su abuelo']

template(['El', abuelo, de, :, '.'])


