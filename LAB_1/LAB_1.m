%%Vector b,  Independent term
b = [-4 -1 3]';

%%Matrix A, Coefficients matrix
A = [ 1 -2 1 ; 1 -3 -4 ; -2 3 -3];

%%Calling function
[At, bt] = ownTriangulation(A,b);

%% Not used right now
%x = backSubs(At,b)

x = backSubs(At,bt);