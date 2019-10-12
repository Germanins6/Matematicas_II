function [flag, At, bt]= ownTriangulationPartialPivoting(A,b)
% [At,bt] = ownTriangulationPartialPivoting(A,b)
% Performs a forward elimination proces over the matrix [A b]
%	such that A*x = b and At*x = bt share the same solution x
%	with partial pivoting
% Inputs:
%	A: Coefficients matrix
%	b: Independent term
% Outputs:
%	flag: Flag = 0 -> The system of LE has a unique solution
%	      Flag = 1 -> The system of LE has infinite or has not a solution		 
%	At: Upper triangular matrix
% 	bt: Modified independent term

%%Getting Matrix or vector size to iterate later
MSize = length(b);

%%Expanded matrix
Ma = [A b];


%%Iterating through matrix
for k = 1:MSize-1
    
    %%Checking if our pivot equals 0
    if Ma(k,k) == 0
        for row = k+1:MSize
            if Ma(row,k) ~= 0
               Ma([k row],:) = Ma([row k],:);
               
            end
            
        end
        
          
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
flag = 0;
end