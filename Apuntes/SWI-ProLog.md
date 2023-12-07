[[ProLog]]
Terminar árbol

swipl

```SWI
Programar en SWI

padre(juan).
padre(antonio).
padre(luiso).
padre(eduardo).
madre(luisa).
madre(luisa).
padrede(juan,julio).
padrede(juan,jose).
madrede(luisa,maria).




Para llamar un archivo con consult("path-de-archivo").

Para comentar dentro de swi-prolog se usa # ó %, depende de la versión de SWI

```


El **"."** se usa para terminar cada sentencia, si no tiene punto continua leyendo hasta encontrar un **"."**

Si se pone una letra mayúscula al principio considera que es una variable. 

	Ejemplo:
		Luisa - Maraton - Destiny - Honkai

El ":-" Funciona como la forma para definir una nueva regla (Condicional).  

La **","** Funciona como una AND

El **";"** Funciona como un OR

Al darle a la tecla "*espacio*" al momento de llamar el archivo, si hay más resultados se irán mostrando uno por uno al teclear la tecla"*espacio*".

abuelo(X,Y):- padrede(X,W) , padrede(W,Y). 

Las reglas que se generen también se pueden utilizar como nuevos parámetros 

Agregar a la familia las propiedades monarias. 

abuelog(X,Y):- padrede(X,W), padrede(W,Y);madrede(X,W),madrede(W,Y).


```SWI
trace.
?- padre(X).
```

El comando **trace** nos sirve para ver si alguno de los hechos que hemos planteado son adecuados. Que se relacionan correctamente entre si.

**Backtracking:**  Es el proceso de poderse regresar por ramas ya visitadas para alcanzar una a la que no se ha visitado. 

Constantes Individuales:

Propiedades:

Predicados: Monario, Internario, Binario, Ternario 

Variables Individuales: Aquellos, Ellos

Cuantificador: 


Ejemplo:

1. Ningún emperador es odontólogo
	1. Los emperadores no son odontólogos 
	2. El emperador no es odontólogo

Cuantificador: Ninguno

Variables Individuales: El, Aquellos 

Propiedades: emperador, odontólogo

2. Algunos gatos no saben silbar

Cuantificador: Algunos 

Variables Individuales: Esos, Los 

Propiedades: silbar

PDF: LogicTema5a.pdf




