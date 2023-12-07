[[ProLog]]
```lisp

(defun segsoooo(cdr lista)


)

(lambda (a b c) (+ a (* b c)))
```

Para más info ver dentro del libro Common Lisp. Para usar funciones anónimas, estas funciones anónimas puedes ser guardadas en variables.

```lisp
***Variables***
(defvar *foo* (lambda (abc) (+ a (* b c)))) ;define una variable que contiene una función. 
*FOO*
(funcall *foo* 1 2 3) ;Llama la función cuando se requiera
```

El "* FOO*" sirve para definir una variable. 

```lisp

(funcall #'list 1 2 3)
```

La función normal o definida "defun" no puede retornar.

Pero una función **Lambda** si puede retornar.


**Actividad**

Definir 10 Áreas y Volúmenes con el uso de funciones lambda. 


Sample 1: 

```lisp
(defvar *ladoxlado* (lambda (a b) (* a b)))

  

(defun ACuadrado ()

    (princ "tamaño de un lado: ")

    (setq lado(read))

    (princ "Área del cuadrado: ")

    (funcall *ladoxlado* lado lado)

)

  

(defun VCuadrado ()

    (princ "tamaño de un lado: ")

    (setq lado(read))

    (princ "Volumen del Cuadrado: ")

    (* lado (funcall *ladoxlado* lado lado))

)
```
