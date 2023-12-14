
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Hechos sobre personajes principales en Destiny
personaje_destiny(cayde_6).
personaje_destiny(zavala).
personaje_destiny(ikora_rey).
personaje_destiny(osiris).
personaje_destiny(ana_bray).
personaje_destiny(lord_shaxx).
personaje_destiny(eris_morn).
personaje_destiny(banshee-44).
personaje_destiny(master_rahool).
personaje_destiny(eva_levante).
personaje_destiny(xur).
personaje_destiny(petra).
personaje_destiny(saladin).


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
arma_excepcional(edge_of_action).
arma_excepcional(quicksilver_storm).
arma_excepcional(wish_ender).
arma_excepcional(wish_keeper).
arma_excepcional(bastion).
arma_excepcional(witherhoard).
arma_excepcional(malfeasence).
arma_excepcional(arbalest).
arma_excepcional(badjuju).
arma_excepcional(mida_multi_tool).
arma_excepcional(rat_king).
arma_excepcional(centrifuse).
arma_excepcional(ex_dris).
arma_excepcional(erianas_vow).
arma_excepcional(duality).
arma_excepcional(buried_bloodline).
arma_excepcional(the_fourth_horseman).
arma_excepcional(trespasser).
arma_excepcional(borealis).
arma_excepcional(cloudstrike).
arma_excepcional(coldheart).
arma_excepcional(anarchy).
arma_excepcional(eyes_of_tomorrow).
arma_excepcional(two_tailed_fox).
arma_excepcional(black_talon).


% Hechos sobre clasificaciones de armas en Destiny

clasificacion_arma(black_talon, [void, sword]).
clasificacion_arma(two_tailed_fox, [asv, lanza_cohetes]).
clasificacion_arma(eyes_of_tomorrow, [solar, lanza_cohetes]).
clasificacion_arma(anarchy, [arc, lanza_granadas]).
clasificacion_arma(coldheart, [arc, trace_rifle]).
clasificacion_arma(cloudstrike, [arc, rifle_de_francotirador]).
clasificacion_arma(borealis, [asv, rifle_de_francotirador]).
clasificacion_arma(trespasser, [arc, shotgun]).
clasificacion_arma(the_fourth_horseman, [arc, shotgun]).
clasificacion_arma(buried_bloodline, [void, sidearm]).
clasificacion_arma(duality, [solar, shotgun]).
clasificacion_arma(erianas_vow, [solar, cañon_de_mano]).
clasificacion_arma(ex_dris, [arc, lanza_granadas]).
clasificacion_arma(centrifuse, [arc, rifle_automatico]).
clasificacion_arma(rat_king, [cinetico, sidearm]).
clasificacion_arma(mida_multi_tool, [cinetico, scout_rifle]).
clasificacion_arma(badjuju, [cinetico, rifle_de_pulsos]).
clasificacion_arma(arbalest, [cinetico, lineal_fusion_rifle]).
clasificacion_arma(malfeasence, [cinetico, cañon_de_mano]).
clasificacion_arma(witherhoard, [cinetico, lanza_granadas]).
clasificacion_arma(bastion, [cinetico, fusion_rifle]).
clasificacion_arma(wish_keeper, [strand, arco]).
clasificacion_arma(wish_ender, [cinetico, arco]).
clasificacion_arma(quicksilver_storm, [strand, rifle_automatico]).
clasificacion_arma(divinity, [arc, trace_rifle]).
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
clasificacion_arma(parasite, [solar, lanza_granadas]).
clasificacion_arma(truth, [void, lanza_cohetes]).
clasificacion_arma(the_lament, [solar, sword]).
clasificacion_arma(telesto, [void, fusion_rifle]).
clasificacion_arma(sleeper_simulant, [solar, lineal_fusion_rifle]).
clasificacion_arma(gjallahorn, [solar, lanza_cohetes]).
clasificacion_arma(edge_of_action, [void, glaive]).






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

template([quien, desarrollo, destiny,'?'],["El desarrollador de Destiny es Bungie y publicado por el mismo."],[]).

template([que, clases, hay, en, destiny,'?'],["Actualmete hay 3 clases, cazador, titan y hechicero."],[]).

template([que, hace, un, cazador,'?'],["El cazador es una clase de control y single-target dmg. Enfocado principalmente en la ágilidad y dps."],[]).

template([que, hace, un, titan,'?'],["El titan es una clase de control y defensa. Enfocado principalmente en la resilencia y control."],[]).

template([que, hace, un, hechicero,'?'],["El hechicero es una clase de apoyo y aoe dmg. Enfocado principalmente en la recuperación/support y dps."],[]).

template([quien, es, cayde6, en, destiny, '?'], ['Cayde-6 es un personaje carismático en Destiny, conocido por su humor y habilidades como Cazador.'], []).

template([quien, es, zavala, en, destiny, '?'], ['Zavala es un personaje serío en Destiny, conocido por su habilidad de dirigir y habilidades como Titan; Actualmente es el eje principal de los guardianes.'], []).

template([quien, es, ikora_rey, en, destiny, '?'], ['Ikora Rey es una hechicera discípula de Osiris que tomo su manto después de ser desterrado por primera vez, es conocida por ser "invencible" en el crisol.'], []).

template([quien, es, osiris, en, destiny, '?'], ['Osiris es un personaje que solia ser egocentrico, conocido por sus habilidades y gran conocimiento.'], []).

template([quien, es, ana_bray, en, destiny, '?'], ['Ana Bray es una cazadora, conocido por sus habilidades y por ser desarrolladora de Rasputin.'], []).

template([quien, es, lord_shaxx, en, destiny, '?'], ['Lord Shaxx es el director del crisol y un antiguo WarLord de la epoca oscura. Parece que nunca se quita su casco...'], []).

template([quien, es, eris_morn, en, destiny, '?'], ['Eris es una diosa (mas poderosa) de la colmena, Su relacion con la colmena empezo al ser la unica sobreviviente de su escuadra al adentrarse a la boca del infierno.'], []).

template([quien, es, xur , en, destiny, '?'], ['Un comerciante deambulante de los nueves. Su voluntad no le pertenece.'], []).

template([quien, es, petra, en, destiny, '?'], ['Petra es una Insomne, la cual porta el titulo de furia de la reina.'], []).

template([quien, es, saladin, en, destiny, '?'], ['Saladin era un WarLord y fundo a los señores de Hierro. Actualmente él junto a Lady Effredit (y el guardian) son los unicos señores de hierro con vida actualmente.'], []).



template([cuales, son, algunas, armas, excepcionales, en, destiny, '?'], ['Algunas armas excepcionales en Destiny incluyen la Última palabra, Espino, Gjallahorn y La muerte roja.'], []).

template([cuales, son, las, clasificaciones, de, armas, en, destiny, '?'], ['Las clasificaciones de armas en Destiny incluyen el tipo de daño elemental y el tipo de arma. Por ejemplo, el Whisper of The Worm es un rifle de francotirador solar.'], []).

template([que, tipo, de, dano, elemental, tiene, el, arma, excepcional, X, '?'], ['El arma excepcional ', X, ' tiene daño elemental ', Tipo, '.'], [9]):-
    clasificacion_arma(X, [Tipo, _]).

template([que, tipo, de, arma, es, el, arma, excepcional, X, '?'], ['El arma excepcional ', X, ' es de tipo ', Tipo, '.'], [8]):-
    clasificacion_arma(X, [_, Tipo]).

template([que, tipo, de, arma, es, Arma, '?'], Respuesta, [5]):-
    clasificacion_arma(Arma, [TipoDeDanio, TipoDeArma]),
    Respuesta = ['El arma excepcional ', Arma, ' es de tipo ', TipoDeDanio, ' y es un/a ', TipoDeArma, '.'].

template([es, s(_), un, personaje, en, destiny,'?'], [flagpersonaje], [1]).

template([s(_), es, una, arma, en, destiny,'?'], [flagarma], [0]).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Hechos sobre los síntomas de la polio
sintoma(polio, fiebre).
sintoma(polio, dolor_muscular).
sintoma(polio, debilidad).
sintoma(polio, fatiga).
sintoma(polio, rigidez_en_el_cuello).
sintoma(polio, paralisis).


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

template([que, es, el, polio, '?'], ['La polio es una enfermedad viral causada por el virus de la polio, que puede afectar el sistema nervioso y causar síntomas como fiebre, dolor muscular y, en casos graves, parálisis.'], []).

template([cuales, son, los, sintomas, de, el, polio, '?'], ['Los síntomas de la polio pueden incluir fiebre, dolor muscular, debilidad, fatiga, rigidez en el cuello y, en casos graves, parálisis.'], []).

template([cuales, son, las, causas, de, el, polio, '?'], ['Las principales causas de la polio incluyen la infección por el virus de la polio, la falta de vacunación, el contacto con personas enfermas y condiciones insatisfactorias de saneamiento.'], []).

template([como, se, trata, el, polio, '?'], ['El tratamiento de la polio puede incluir fisioterapia, cuidados respiratorios, apoyo nutricional, medicamentos para aliviar síntomas y vacunación preventiva.'], []).

template([tengo, s(), que,es, '?'], [flagpolio],[1]).

espolio(X, R):- sintoma(_,X), R = [ X, es, un, sintoma, de, polio, es, probable, que, lo, tenga].
espolio(X, R):- \+sintoma(_,X), R = [X, no, es, un, sintoma, del, polio, ., consulte, a, su, medico].

% es un polio:
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagpolio,
    espolio(Atom, R).


%%%%para_multi_sintomas


 template([tengo, s(_), ',', (_), y, (_), que, tengo, '?'], [flagVariosintomas], [1, 3, 5]).

multisintomas(X, Y, Z, R):- multi_sintoma(X, Y, Z), R = [ X, Y, y, Z, son, sintomas, del, polio, ., "Por favor consulte a su medico."].
multisintomas(X, Y, Z, R):- \+multi_sintoma(X, Y, Z), R = [ X, Y, y, Z, no, son, sintomas, del, polio, ., "Si tiene sintomas, le recomiendo consultar a un medico."].
multisintomas(X, Y, Z, R):- \+multi_sintoma(X, Y, Z), R = [ X, Y, y, Z, algunos, son, sintomas, del, polio, ., "Le recomiendo consultar a un medico."].

multi_sintoma(X, Y, Z) :- sintoma(polio, X), sintoma(polio, Y), sintoma(polio, Z).




% candida multisintoma
replace0([I,J,K|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagVariosintomas,
	nth0(J, Input, Atom2),
	nth0(0, Resp, Y),
	Y == flagVariosintomas,
	nth0(K, Input, Atom3),
	nth0(0, Resp, Z),
	Z == flagVariosintomas,
	multisintomas(Atom, Atom2, Atom3, R).


% es un polio:
replace0([I|Index], Input, N, Resp, R):-
    nth0(I, Input, Atom),
    select(N, Resp, Atom, R1),
    N1 is N + 1,
    replace0(Index, Input, N1, R1, R).

replace0([], _, _, Resp, Resp).



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

% replace0/5 simplificado
replace0([], _, _, Resp, Resp).

replace0([I|Index], Input, N, Resp, R):-
    nth0(I, Input, Atom),
    select(N, Resp, Atom, R1),
    N1 is N + 1,
    replace0(Index, Input, N1, R1, R).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% pertenece personaje a la base de conocimiento
espersonaje(X, R):- personaje_destiny(X), R = ['Si', X, es, un, personaje, en, destiny].
espersonaje(X, R):- \+personaje_destiny(X), R = ['No', X, no, es, un, personaje, en, destiny].



% es un personaje:
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagpersonaje,
    espersonaje(Atom, R).





% las armas en destiny: flagelarma
esarma(X, R):- arma_excepcional(X), R = ['Si', X, es, un, arma, en, destiny].
esarma(X, R):- \+arma_excepcional(X), R = ['No', X, no, es, un, arma, en, destiny].



% es un arma:
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

