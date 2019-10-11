function [x] = backSubs(A,b)
% [x] = backSubs(A,b)
% Performs a backsubstitution process over the matrix [A b]
%	to find x such that A*x = b with A upper triangular
% Inputs:
%	A: Upper triangular coefficients matrix
%	b: Independent term
% Outputs:
%	x: Solution of A*x = b

%%x3 = b(end)/A(end)

%%b = [2 5 18];
%%A = [ 4 6 2; 0 3 1; 0 0 8];

VectorSize = length(b);
x = zeros(1,VectorSize)';

x(end) = b(end)/A(end,end);


for i = VectorSize-1:-1:1
    
    x(i) = (b(i)-(A(i,i+1:VectorSize)*x(i+1:VectorSize)))/ A(i,i);
end

end

