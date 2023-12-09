
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Hechos sobre personajes principales en Destiny
personaje_destiny(cayde_6).
personaje_destiny(zavala).
personaje_destiny(ikora_rey).
personaje_destiny(osiris).
personaje_destiny(ana_bray).

% Hechos sobre armas excepcionales en Destiny
arma_excepcional(divinity).
arma_excepcional(cerberus+1).
arma_excepcional(riskrunner).
arma_excepcional(necrochasm).
arma_excepcional(whisper_of_the_worm).
arma_excepcional(ace_of_spades).
arma_excepcional(hawkmoon).
arma_excepcional(thorn).
arma_excepcional(last_Word).
arma_excepcional(lumina).
arma_excepcional(gjallahorn).
arma_excepcional(outbreak_perfected).
arma_excepcional(wicked_implement).
arma_excepcional(vex_mythoclast).
arma_excepcional(sleeper_simulant).
arma_excepcional(parasite).
arma_excepcional(truth).
arma_excepcional(the_lament).
arma_excepcional(telesto).


% Hechos sobre clasificaciones de armas en Destiny

clasificacion_arma(divinity, [arc, trace_Rifle]).
clasificacion_arma(cerberus+1, [cinetico, rifle_automatico]).
clasificacion_arma(riskrunner, [arc, smg]).
clasificacion_arma(necrochasm, [cinetico, rifle_automatico]).
clasificacion_arma(whisper_of_the_worm, [solar, rifle_de_francotirador]).
clasificacion_arma(ace_of_spades, [cinetico, cañon_de_mano]).
clasificacion_arma(thorn, [cinetico, cañon_de_mano]).
clasificacion_arma(lumina, [cinetico, cañon_de_mano]).
clasificacion_arma(hawkmoon, [cinetico, cañon_de_mano]).
clasificacion_arma(last_Word, [cinetico, cañon_de_mano]).
clasificacion_arma(gjallahorn, [solar, lanza_cohetes]).
clasificacion_arma(outbreak_perfected, [cinetico, rifle_de_pulsos]).
clasificacion_arma(wicked_implement, [stasis, scout_rifle]).
clasificacion_arma(vex_mythoclast, [solar, fusion_rifle]).
clasificacion_arma(parasite, [solar, lanza_Granadas]).
clasificacion_arma(truth, [void, lanza_Cohetes]).
clasificacion_arma(the_lament, [solar, sword]).
clasificacion_arma(telesto, [void, fusion_rifle]).
clasificacion_arma(sleeper_simulant, [solar, lineal_fusion_rifle]).
clasificacion_arma(gjallahorn, [solar, lanza_cohetes]).






%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

eliza:-	writeln('Hola , mi nombre es  Eliza tu  stalker,
	por favor ingresa tu consulta,
	usar solo minúsculas sin . al final:'),
	readln(Input),
	eliza(Input),!.
eliza(Input):- Input == ['Adios'],
	writeln('Adios. espero poder verte ayudado.'), !.
eliza(Input):- Input == ['Adios', '.'],
	writeln('Adios. espero poder verte ayudado.'), !.
eliza(Input) :-
	template(Stim, Resp, IndStim),
	match(Stim, Input),
	% si he llegado aquí es que he
	% hallado el template correcto:
	replace0(IndStim, Input, 0, Resp, R),
	writeln(R),
	readln(Input1),
	eliza(Input1), !.





template([hola, mi, nombre, es, s(_), '.'], ['Hola', 0, 'como', estas, tu, '?'], [4]).
template([buendia, mi, nombre, es, s(_), '.'], ['buen dia', 'Como', estas, tu, 0, '?'], [4]).

template([hola, ',', mi, nombre, es, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [5]).
template([buendia, ',', mi, nombre, es, s(_), '.'], ['Buendia', 'Como', estas, tu, 0, '?'], [5]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%5Templates

template([hola, yo, soy, s(_),'.'], [y, quien, es, 0, '?'], [3]). 

template([hola, yo, tengo, s(_), anios, '.'], [de, verdad, tienes, 0, '?'], [3]).

template([yo, s(_), soy, el,hijo, de, s(_),'.'], [el,padre,de, 0, es, 1, '.'], [1, 6]).  

template([hola,quien, eres,'?'], [Hola, yo, soy, Eliza],[]). 

template([dime, que, es, lo,que,sabes,'?'], ["I'm inside your walls... you can guess by that ;)"], []).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Reglas para preguntas y respuestas sobre Destiny

template([quién, es, cayde_6, en, Destiny, '?'], ['Cayde-6 es un personaje carismático en Destiny, conocido por su humor y habilidades como Cazador.'], [1]).

template([quién, es, zavala, en, Destiny, '?'], ['Zavala es un personaje serío en Destiny, conocido por su habilidad de dirigir y habilidades como Titan; Actualmente es el eje principal de los guardianes.'], [2]).

template([quién, es, ikora_rey, en, Destiny, '?'], ['Ikora Rey es una hechicera discípula de Osiris que tomo su manto después de ser desterrado por primera vez, es conocida por ser "invencible" en el crisol.'], [3]).

template([quién, es, osiris, en, Destiny, '?'], ['Osiris es un personaje que solia ser egocentrico, conocido por sus habilidades y gran conocimiento.'], [4]).

template([cuáles, son, algunas, armas, excepcionales, en, Destiny, '?'], ['Algunas armas excepcionales en Destiny incluyen la Última palabra, Espino, Gjallahorn y La muerte roja.'], [5]).

template([cuáles, son, las, clasificaciones, de, armas, en, Destiny, '?'], ['Las clasificaciones de armas en Destiny incluyen el tipo de daño elemental y el tipo de arma. Por ejemplo, el Whisper of The Worm es un rifle de francotirador solar.'], [6]).

template([qué, tipo, de, daño, elemental, tiene, el, arma, excepcional, X, en, Destiny, '?'], ['El arma excepcional ', X, ' tiene daño elemental ', Tipo, '.'], [7]):-
    clasificacion_arma(X, [Tipo, _]).

template([qué, tipo, de, arma, es, el, arma, excepcional, X, en, Destiny, '?'], ['El arma excepcional ', X, ' es de tipo ', Tipo, '.'], [8]):-
    clasificacion_arma(X, [_, Tipo]).


template([es, s(_), un, personaje, en, destiny,'?'], [flagpersonaje], [1]).

template([s(_), es, una, arma, en, destiny,'?'], [flagarma], [0]).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Hechos sobre los síntomas de la polio
sintoma(polio, fiebre).
sintoma(polio, dolor_muscular).
sintoma(polio, debilidad).
sintoma(polio, fatiga).
sintoma(polio, rigidez_en_el_cuello).
sintoma(polio, parálisis).


% Hechos sobre las causas y factores de riesgo de la polio
causa(polio, infección_virus_polio).
causa(polio, falta_vacunación).
causa(polio, contacto_persona_enferma).
causa(polio, condiciones_insatisfactorias_saneamiento).

% Tratamientos y medidas para la polio
tratamiento(polio, fisioterapia).
tratamiento(polio, cuidados_respiratorios).
tratamiento(polio, apoyo_nutricional).
tratamiento(polio, medicamentos_para_aliviar_síntomas).
tratamiento(polio, vacunación_preventiva).


% Reglas para preguntas y respuestas sobre el polio

template([qué, es, el, polio, '?'], ['La polio es una enfermedad viral causada por el virus de la polio, que puede afectar el sistema nervioso y causar síntomas como fiebre, dolor muscular y, en casos graves, parálisis.'], [1]).

template([cuáles, son, los, síntomas, de, el, polio, '?'], ['Los síntomas de la polio pueden incluir fiebre, dolor muscular, debilidad, fatiga, rigidez en el cuello y, en casos graves, parálisis.'], [2]).

template([cuáles, son, las, causas, de, el, polio, '?'], ['Las principales causas de la polio incluyen la infección por el virus de la polio, la falta de vacunación, el contacto con personas enfermas y condiciones insatisfactorias de saneamiento.'], [3]).

template([cómo, se, trata, el, polio, '?'], ['El tratamiento de la polio puede incluir fisioterapia, cuidados respiratorios, apoyo nutricional, medicamentos para aliviar síntomas y vacunación preventiva.'], [4]).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



template([hola, _], ['Hola', 'como', estas, tu, '?'], []).
template([buendia, _], ['Buendia', 'Como', estas, tu, '?'], []).

template([yo, s(_), yo, soy, s(_),'.'], [por, que, 0, eres, 1, '?'], [1, 4]).
template([yo, s(_), tu, '.'], [por, que, 0, yo ,'?'], [1]).
template([yo, soy, s(_),'.'], [porque, eres, tu, 0, '?'], [2]).

% pregunta algo que le gusta a eliza
template([te, gustan, las, s(_), _], [flagLike], [3]).
template([te, gustan, los, s(_), _], [flagLike], [3]).

		 % pregunta algo que hace eliza
template([tu, eres, s(_), _], [flagDo], [2]).
% pregunta algo que es eliza
template([que, eres, tu, s(_)], [flagIs], [2]).
template([eres, s(_), '?'], [flagIs], [2]).

template([como, estas, tu, '?'], [yo, estoy, bien, ',', gracias, por, preguntar, '.'], []).

template([yo, pienso, que, _], [bueno, esa, es, tu, opinion], []).
template([porque, _], [esa, no, es, una, buena, razon, '.'], []).
template([yo, tengo, s(_), con, s(_), '.'], ['Tu', tienes, que, lidear, con, tu, 0, y, tu, 1, de, una, forma, madura, '.'], [2, 4]).
template([yo, s(_),  _], [yo, puedo, recomendarte, un, libro, acerca, de, ese,  problema], []).
template([por, favor, s(_), _], ['No', yo, no, puedo, ayudar, ',', yo, solo, soy, una, maquina], []). 
		 template([di, me, un, s(_), _], ['No', yo, no , puedo, ',', soy, mala, para, eso], []).

	  
template(_, [No,lo, se, '.'], []). 

% Lo que le gusta a eliza : flagLike
elizaLikes(X, R):- likes(X), R = ['Claro', a, mi, me, gusta, los, X].
elizaLikes(X, R):- \+likes(X), R = ['No', a, mi, no, me, gusta, los, X].
likes(manzanas).
likes(ponis).
likes(zombies).
likes(computadoras).
like(carros).

% lo que hace eliza: flagDo
elizaDoes(X, R):- does(X), R = ['Yes', yo, X, y, yo, lo, amo].
elizaDoes(X, R):- \+does(X), R = ['No', yo, no,  X ,'.', eso, es, muy, dificil, para, mi].
does(estudiar).
does(cook).
does(work).

% lo que es eliza: flagIs
elizaIs(X, R):- is0(X), R = ['Si', yo, soy, X].
elizaIs(X, R):- \+is0(X), R = ['No', yo, no, soy, X].
is0(tonto).
is0(raro).
is0(lindo).
is0(bien).
is0(faliz).
is0(redundante).

match([],[]).
match([], _):- true.

match([S|Stim],[I|Input]) :-
	atom(S), 
	% si I es un s(X) devuelve falso
	S == I,
	match(Stim, Input),!.

match([S|Stim],[_|Input]) :-
% I es un s(X), lo ignoro y continúo con el resto de la lista
	\+atom(S),
	match(Stim, Input),!.

replace0([], _, _, Resp, R):- append(Resp, [], R),!.

% Eliza likes:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagLike,
	elizaLikes(Atom, R).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



% pertenece personaje a la base de conocimiento
espersonaje(X, R):- personaje_destiny(X), R = ['Si', X, es, un, personaje, en, destiny,].
espersonaje(X, R):- \+personaje_destiny(X), R = ['No', X, no, es, un, personaje, en, destiny,].



%es un personaje:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagpersonaje,
	espersonaje(Atom, R).



% las armas en destiny: flagelarma
esarma(X, R):- arma_excepcional(X), R = ['Si', X, es, un, arma, en, destiny,].
esarma(X, R):- \+arma_excepcional(X), R = ['No', X, no, es, un, arma, en, destiny,].

%es un arma:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagarma,
	esarma(Atom, R).



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% Eliza does:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagDo,
	elizaDoes(Atom, R).

% Eliza is:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagIs,
	elizaIs(Atom, R).

replace0([I|Index], Input, N, Resp, R):-
	length(Index, M), M =:= 0,
	nth0(I, Input, Atom),
	select(N, Resp, Atom, R1), append(R1, [], R),!.

replace0([I|Index], Input, N, Resp, R):-
	nth0(I, Input, Atom),
	length(Index, M), M > 0,
	select(N, Resp, Atom, R1),
	N1 is N + 1,
	replace0(Index, Input, N1, R1, R),!.
