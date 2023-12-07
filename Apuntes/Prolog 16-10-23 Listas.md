[[ProLog]]
Estructura Básica
---

En prolog una lista es la representación de un conjunto de elementos. 

```swi
[manzana, pera, banana]
```
Por igual se pueden hacer listas de listas o listas de hechos

```swi
[[manzana, pera, banana], [camino(tandil,bsas)]]
```

Pero al momento de hacer la búsqueda, esta búsqueda será sobre la lista y no el hecho. 

Por igual se puede ver una lista como predicado.

```swi
lista(Cabeza, Cola)
[Cabeza|Cola]

[Cabeza|Cola] = [1,2,3].

Esto dara como resultado

Cabeza = 1
Cola = 2, 3

Comparativas

[1,2,3] = [1|[2,3]].

Esto retornara un true, ya que hace match.
```

Unificación
---

```swi
[a,b,c] = [X,Y,Z].
[X,Y,Z]=[a,b,c].

Estas dos listas

Regresan esto:

X=a,
Y=b,
Z=c

Pero tambien regresa una lista vacía, lo podemos ver de la siguiente manera.

[a, b, c] = [A,B,C|D]

D = Lista vacía.

Es lo mismo que esto?

[a, b, c] = [A,B,C,D]

La respuesta es NO, ya que D ahí se esta considerando como un elemento.

```

a,b,c = constantes de individuo. 
XYZ = variables de individuo.

También se pueden tener múltiples secciones de la lista.

```swi
[a,b,c,d,e] = [X, Y|Z]

En este caso.

X será igual al primer elemento.

Y será la cabeza de la lista. Y será igual al valor que le sigue despues de X hayá tomado el primero.

Z será lo que reste de la lista.

X = a,
Y = b,
Z = c,d,e
```

Member
---

Esta es una función primitiva que nos permite buscar un elemento dentro de una lista. 

```swi
member(1, [5,6,7,8,1,2,3]).

En este caso retorna un true


Otras formas de hacerlo.

member(X, [3,3,4,5,3,2]).
```
Append
---

**Append** nos ayudará a construir nuevas listas, comparar si dos listas en la unión de dos listas o agregar nuevos miembros a la lista. 

```swi

append().

size([a,b,c], N).
```

Aviso
---

Miércoles: No hay clase, puede que mañana no haya.