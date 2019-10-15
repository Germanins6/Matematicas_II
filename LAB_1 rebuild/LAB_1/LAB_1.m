M = [1 1 -3;2 -1 1;3 1 5];
vec = [2 -4 10]';
[Mt , vect] = ownTriangulation(M,vec)
Example = backSubs(Mt,vect)