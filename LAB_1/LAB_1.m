%%Vector b,  Independent term
b = [1 0 1 2]';

%%Matrix A, Coefficients matrix
A = [-1 3 1 -4; 2 -6 -2 8; 1 1 1 1; 2 4 1 8];

%%Calling function
%%[At, bt] = ownTriangulation(A,b);

[flag,At, bt] = ownTriangulationPartialPivoting(A,b);

%% Not used right now
%x = backSubs(At,b)

x = backSubs(At,bt);