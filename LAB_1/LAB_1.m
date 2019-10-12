%%Vector b,  Independent term
b = [4 6 1]';

%%Matrix A, Coefficients matrix
A = [ 0 2 1 ; 2 -3 4; 3 -1 5];

%%Calling function
%%[At, bt] = ownTriangulation(A,b);

[flag, At, bt] = ownTriangulationPartialPivoting(A,b);

%% Not used right now
%x = backSubs(At,b)

x = backSubs(At,bt);