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


%%Getting Matrix or vector size to iterate later
MSize = length(b);

%%Expanded matrix
Ma= [A b];


%%Iterating through matrix
for k = 1:MSize-1
    
    %%Checking if our pivot equals 0
    if Ma(k,k) == 0
        %%If Ma(1,1).. (2,2)..(n,n) (MAIN DIAGONAL) Any value equals 0 iterates next one
    else
        
    for i = k+1:MSize
        
        %%Getting pivot to work later
        pivot = Ma(i,k)/Ma(k,k);
        
        %%Getting each value in row
        Ma(i,k:MSize+1) = Ma(i,k:MSize+1)-pivot*Ma(k,k:MSize+1);
    end
    
   end
end
At = Ma(1:MSize, 1:MSize);
bt = Ma(:, end);

end