
Añadir hechos para ver cuales son bacteria(bacteriana), virus(viral).

Añadir más medicamentos para tratar cada una de las enfermedades

Añadir más enfermedades


```swiProlog

%%declaraciones de enfermedades 
enfermedad(gripe).
enfermedad(rubeola). 
enfermedad(malaria).
enfermedad(hepatitis).
enfermedad(tuberculosis).
enfermedad(anemia).

%%declaracion de clases biologicas
clase(bacteriana, tuberculosis).
clase(bacteriana, hepatitis).
clase(bacteriana, anemia).
clase(viral, rubeola).
clase(viral, malaria).
clase(viral, gripe).

sintomade(tos, gripe). %la tos es síntoma de gripe 
sintomade(cansancio, gripe). %el cansancio es síntoma de gripe 
sintomade(fiebre, gripe). %la fiebre es síntoma de gripe 
sintomade(dolorcabeza, gripe). %dolor de cabeza es síntoma de gripe 
sintomade(nauseas, hepatitis). %las nauseas son síntoma de hepatitis 
sintomade(diarrea, hepatitis). %la diarrea es síntoma de hepatitis 
sintomade(ictericia, hepatitis). %la ictericia es síntoma de hepatitis sintomade(cansancio, anemia). %cansancio es síntoma de anemia 
sintomade(apatia, anemia). %apatía es síntoma de anemia 
sintomade(nausea, anemia). %las nauseas son síntomas de anemia 
sintomade(tos, tuberculosis). %la tos es síntoma de la tuberculosis sintomade(cansancio, tuberculosis). %el cansancio es síntoma de tuberculosis sintomade(fiebre, tuberculosis). %la fiebre es síntoma de la tuberculosis sintomade(escalofrios, tuberculosis). %los escalofríos es síntoma de tuberculosis sintomade(escalofrios, malaria). %los escalofríos son síntomas de la malaria sintomade(fiebre , malaria). %la fiebre es síntoma de malaria 
sintomade(diarrea , malaria). %la diarrea es síntoma de malaria 
sintomade(ictericia, malaria). %la ictericia es síntoma de malaria 
sintomade(fiebre, rubeola). %la fiebre es síntoma de rubéola sintomade
(jaqueca, rubeola). %la jaqueca es síntoma de rubéola 
sintomade(secrecion, rubeola). %la secreción es síntoma de rubeola


% Reglas para determinar que probabilidad una persona puede tener una % enfermedad X dado n síntomas % %La función buscar busca las enfermedades que contengan como mínimo los síntomas %suministrados % % primer parámetro (lista de enfermedades) % % segundo parámetro (Enfermedad)

% %tercer parámetro cantidad de ocurrencias 
% %(a decir verdad tendría que ser la misma cantidad que el arreglo entregado)

buscar([], E , 0). 
buscar(X , E , 1) :- sintomade(X, E). 
buscar([X|Xs] , E , P) :- enfermedad(E) , buscar(X , E , S1) , buscar(Xs , E ,S2) , P is S1 + S2. 

%%función que devuelve la cantidad de síntomas totales de la enfermedad seleccionada 

cantSint(E , C) :- findall(X , sintoma(X, E) , L) , length(L , R), C is R. 

%%Esta función es parecida a la de buscar con la excepción que en el ultimo argumento te entrega 

%% el (porcentaje de probabilidad de la enfermedad) 

diagnostico([X|Xs] , E , K) :- buscar([X|Xs] , E , P) , cantSint(E , T) , K is P * 100 / T.

%declaraciones de los hechos para determinar medicina de una enfermedad 
%que medicamento debo tomar dependiendo la enfermedad 
medicinade(contrex, gripe). 

%contrex es medicamento de la gripe 

medicinade(jarabe, gripe). 

%jarabe es medicamento de la gripe 

medicinade(pastillas, tubercolosis). 

%pastillas es medicamento de la tubercolosis 

medicinade(vacuna, malaria). 

%vacuna es medicamento de la malaria 

medicinade(vacuna, rubéola). %vacuna es medicamento de la rubeola 

medicinade(vitaminas, anemia). %vitaminas es medicamento de la anemi


```
