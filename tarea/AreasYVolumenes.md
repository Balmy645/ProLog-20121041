
(defun ACuadrado ()
    (princ "Tamaño de un lado: ")
    (setq lado(read))
    (princ "Área del cuadrado: "(* lado lado))
)

(defun VCuadrado()
    (princ "Tama de un lado: ")
    (setq lado(read))
    (princ "Volumen del cuadrado: "(* (* lado lado) lado))
)

(defun ARectangulo()
    (princ "Tamaño del lado largo de la base: ")
    (setq ladol(read))
    (princ "Tamaño del lado más pequeño de la base: ")
    (setq ladop(read))
    (princ "Altura: ")
    (setq h(read))
    (princ "El area del rectangulo es: "(* ladol ladop))
)

(defun VRectangulo()
    (princ "Tamaño del lado largo de la base: ")
    (setq ladol(read))
    (princ "Tamaño del lado más pequeño de la base: ")
    (setq ladop(read))
    (princ "Altura: ")
    (setq h(read))
    (princ "El volumen del rectangulo es: "(* (* ladol ladop) h))
)

(defun ATriangulo()
    (princ "Tamaño de un lado: ")
    (setq lado(read))
    (princ "Tamaño de la altura: ")
    (setq h(read))
    (princ "Area del triangulo: "(/ (* lado h) 2 ))
)

(defun VTriangulo()
    (princ "Tamaño de un lado de la base: ")
    (setq lado(read))
    (princ "Tamaño de la altura de la base: ")
    (setq h(read))
    (princ "Altura de la piramide: ")
    (setq h1(read))
    (princ "Volumen del triangulo: "(* (/ (* lado h) 2 ) h1 ))
)

(defun AParalelogramo()
    (princ "Tamaño más largo de la base: ")
    (setq LL(read))
    (princ "Altura de la base: ")
    (setq h1(read))
    (princ "Área del paralelogramo: "(* LL h1))
 )

 (defun VParalelogramo()
    (princ "Tamaño más largo de la base: ")
    (setq LL(read))
    (princ "Altura de la base: ")
    (setq h1(read))
    (princ "Altura del plano: ")
    (setq h2(read))
    (princ "Área del paralelogramo: "(* (* LL h1)h2))
 )

 (defun ACirculo()
    (princ "Tamaño del radio: ")
    (setq r(read))
    (princ "Área del circulo: "(* (* r r) 3.1415))
 )

(defun VCilindro()
    (princ "Tamaño del radio: ")
    (setq r(read))
    (princ "Altura del cilindro: ")
    (setq h(read))
    (princ "Volumen del Cilindro: "(* (* (* r r) 3.1415) h ))
 )

 (defun AElipse()
    (princ "Tamaño del eje mas largo: ")
    (setq ejea(read))
    (princ "Tamaño del eje mas pequño: ")
    (setq ejeb(read))
    (princ "Área del elipse: "(* (* ejea ejeb) 3.1415))
 )

 (defun VElipseCilindrico()
    (princ "Tamaño del eje mas largo: ")
    (setq ejea(read))
    (princ "Tamaño del eje mas pequño: ")
    (setq ejeb(read))
    (princ "Altura del Cilindro: ")
    (setq h(read))
    (princ "Volumen del elipse: "(* (* (* ejea ejeb) 3.1415) h))
 )

 (defun ATrapecio()
    (princ "Tamaño del lado más largo de la base: ")
    (setq a(read))
    (princ "Tamaño del lado más pequeño de la base: ")
    (setq b(read))
    (princ "Altura de la base: ")
    (setq h1(read))
    (princ "Área del trapecio: "(* (/ (+ a b) 2) h1))
 )

  (defun VTrapecio()
    (princ "Tamaño del lado más largo de la base: ")
    (setq a(read))
    (princ "Tamaño del lado más pequeño de la base: ")
    (setq b(read))
    (princ "Altura de la base: ")
    (setq h1(read))
    (princ "Altura Volumetrica: ")
    (setq h2(read))
    (princ "Volumen del trapecio: "(*(* (/ (+ a b) 2) h1) h2))
 )

  (defun ARombo()
    (princ "Tamaño de un lado: ")
    (setq l (read))
    (princ "Tamaño de la altura de la base: ")
    (setq h1 (read))
    (princ "Área del rombo es: "(* l h1))
)

  (defun VRombo()
    (princ "Tamaño de un lado: ")
    (setq l (read))
    (princ "Tamaño de la altura de la base: ")
    (setq h1 (read))
    (princ "Tamaño de la altura del volumen: ")
    (setq h2 (read))
    (princ "Volumen del rombo es: "(* (* l h1) h2))
)

  (defun APentagono()
    (princ "Tamaño del primer lado: ")
    (setq l1 (read))
    (princ "Tamaño del segundo lado: ")
    (setq l2 (read))
    (princ "Tamaño del tercer lado: ")
    (setq l3 (read))
    (princ "Tamaño del cuarto lado: ")
    (setq l4 (read))
    (princ "Tamaño del quinto lado: ")
    (setq l5 (read))
    (princ "Tamaño del apotema: ")
    (setq Apo (read))
    (princ "Área del pentagono: "(/ (* (+ (+ (+ (+ l1 l2) l3) l4) l5) Apo) 2))
)

  (defun VPentagono()
    (princ "Tamaño del primer lado: ")
    (setq l1 (read))
    (princ "Tamaño del segundo lado: ")
    (setq l2 (read))
    (princ "Tamaño del tercer lado: ")
    (setq l3 (read))
    (princ "Tamaño del cuarto lado: ")
    (setq l4 (read))
    (princ "Tamaño del quinto lado: ")
    (setq l5 (read))
    (princ "Tamaño del apotema: ")
    (setq Apo (read))
    (princ "Altura Volumetrica: ")
    (setq h (read))
    (princ "Volumen del pentagono: "(* (/ (* (+ (+ (+ (+ l1 l2) l3) l4) l5) Apo) 2) h))
)

  (defun AHexagono()
    (princ "Tamaño del primer lado: ")
    (setq l1 (read))
    (princ "Tamaño del segundo lado: ")
    (setq l2 (read))
    (princ "Tamaño del tercer lado: ")
    (setq l3 (read))
    (princ "Tamaño del cuarto lado: ")
    (setq l4 (read))
    (princ "Tamaño del quinto lado: ")
    (setq l5 (read))
    (princ "Tamaño del sexto lado: ")
    (setq l6 (read))
    (princ "Tamaño del apotema: ")
    (setq Apo (read))
    (princ "Área del Hexagono: "(/ (* (+ (+ (+ (+ (+ l1 l2) l3) l4) l5) l6) Apo) 2))
)

  (defun VHexagono()
    (princ "Tamaño del primer lado: ")
    (setq l1 (read))
    (princ "Tamaño del segundo lado: ")
    (setq l2 (read))
    (princ "Tamaño del tercer lado: ")
    (setq l3 (read))
    (princ "Tamaño del cuarto lado: ")
    (setq l4 (read))
    (princ "Tamaño del quinto lado: ")
    (setq l5 (read))
    (princ "Tamaño del sexto lado: ")
    (setq l6 (read))
    (princ "Tamaño del apotema: ")
    (setq Apo (read))
    (princ "Altura Volumetrica: ")
    (setq h (read))
    (princ "Volumen del Hexagono: "(* (/ (* (+ (+ (+ (+ (+ l1 l2) l3) l4) l5) l6) Apo) 2) h))
)


    <!--  intento de recursividad xd -->

  (defun nPollygoneArea (n L)
        (if (null n)
        (princ "¿Cuantos lados tiene el poligono? ")
        (setq n(read))
        (nPollygoneArea(n L))
        )
        (if (> n 0)
            (princ "Tamaño del lado " n)
            (setq L (read))
            (- n 1)
            (sumaPeri(L n))
        )
        (princ "Tamaño del apotema: ")
        (setq Apo(read))
        (princ "Área del Poligono: "(/ (* L Apo) 2)
)

  (defun sumPeri(L n)
        (+ L 0)
        (nPollygoneArea(n L))    
)











ACuadrado = L * L, VCuadrado = L*L*L —› ya

ARectangulo = B * H, VRectangulo = P*B*H —› ya

ATriangulo = B*H /2, VTriangulo = (B*H/2)/3 * H —› ya 

AParalelogramo = Llargo * h, VParalelogramo = (Llargo * h) *H —› ya

ACirculo = pi * r^2, VCirculo = pi * r^2 * H —› ya

AEllipse = ejea * ejeb * pi , VEllipse = (ejea * ejeb* pi)*h —› ya

ATrapecio = 1/2 (a + b) * H , VTrapecio = (1/2(a+b)*h1)*h2 —› ya

ARombo = L * h VRombo = L*h1 *h2 —› ya

APentagono = ((L + L + L + L + L) * Apotema)/2, VPentagono = (((L + L + L + L + L) * Apotema)/2)*h —› ya

AHexagono = ((L + L + L + L + L + L) * Apotema)/2, VHexagono = (((L + L + L + L + L + L) * Apotema)/2)*h —› ya