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


