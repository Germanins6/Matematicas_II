function [At, bt]= ownTriangulation(A,b)
% [At,bt] = ownTriangulation(A,b)
% Performs a forward elimination proces over the matrix [A b]
%	such that A*x = b and At*x = bt share the same solution x
% Inputs:
%	A: Coefficients matrix
%	b: Independent term
% Outputs:
%	At: Upper triangular matrix
% 	bt: Modified independent term
MatrixSize = length(b);
Ma = [A b];
for i=1:1:MatrixSize-1
    if Ma(i,i)==0
        %%do nothing
    else
 
        pivot = Ma(i,i);
        for k = i:1:MatrixSize-1
        for j=i+1:1:MatrixSize+1
      %calcular fila matriz
     
          Ma(k+1,j)=(pivot*Ma(k+1,j))-(Ma(i,j)*Ma(k+1,i));
        end
        end
       Ma(i+1:MatrixSize,i)=0;
    end
end
At = Ma(1:MatrixSize, 1:MatrixSize);
bt = Ma(:, end);

end
