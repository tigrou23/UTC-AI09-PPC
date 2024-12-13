ordonnancement:-

    R1 #= 3, P1 #= 5, D1 #= 18,
    R2 #= 1, P2 #= 6, D2 #= 10,
    R3 #= 5, P3 #= 2, D3 #= 14,
    R4 #= 4, P4 #= 1, D4 #= 12,
    R5 #= 0, P5 #= 4, D5 #= 22,

    D1_P1 is D1 - P1,
    D2_P2 is D2 - P2,
    D3_P3 is D3 - P3,
    D4_P4 is D4 - P4,
    D5_P5 is D5 - P5,
    fd_domain([DEBUT_1], R1, D1_P1),
    fd_domain([DEBUT_2], R2, D2_P2),
    fd_domain([DEBUT_3], R3, D3_P3),
    fd_domain([DEBUT_4], R4, D4_P4),
    fd_domain([DEBUT_5], R5, D5_P5),

    fd_domain([FIN], 0, 22),

    (DEBUT_1+P1 #=< DEBUT_2) #\/ (DEBUT_2+P2 #=< DEBUT_1),
    (DEBUT_1+P1 #=< DEBUT_3) #\/ (DEBUT_3+P3 #=< DEBUT_1),
    (DEBUT_1+P1 #=< DEBUT_4) #\/ (DEBUT_4+P4 #=< DEBUT_1),
    (DEBUT_1+P1 #=< DEBUT_5) #\/ (DEBUT_5+P5 #=< DEBUT_1),
    (DEBUT_2+P2 #=< DEBUT_3) #\/ (DEBUT_3+P3 #=< DEBUT_2),
    (DEBUT_2+P2 #=< DEBUT_4) #\/ (DEBUT_4+P4 #=< DEBUT_2),
    (DEBUT_2+P2 #=< DEBUT_5) #\/ (DEBUT_5+P5 #=< DEBUT_2),
    (DEBUT_3+P3 #=< DEBUT_4) #\/ (DEBUT_4+P4 #=< DEBUT_3),
    (DEBUT_3+P3 #=< DEBUT_5) #\/ (DEBUT_5+P5 #=< DEBUT_3),
    (DEBUT_4+P4 #=< DEBUT_5) #\/ (DEBUT_5+P5 #=< DEBUT_4),

    DEBUT_1 + P1 #=< FIN,
    DEBUT_2 + P2 #=< FIN,
    DEBUT_3 + P3 #=< FIN,
    DEBUT_4 + P4 #=< FIN,
    DEBUT_5 + P5 #=< FIN,

    fd_minimize(fd_labeling([DEBUT_1, DEBUT_2, DEBUT_3, DEBUT_4, DEBUT_5, FIN]), FIN),

    nl,
    write('DEBUT_1='), write(DEBUT_1),
    nl,
    write('DEBUT_2='), write(DEBUT_2),
    nl,
    write('DEBUT_3='), write(DEBUT_3),
    nl,
    write('DEBUT_4='), write(DEBUT_4),
    nl,
    write('DEBUT_5='), write(DEBUT_5),
    nl,
    write('FIN='), write(FIN),
    nl.

%gprolog
%consult('code.pl').
%ordonnancement.
