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

flag = 0;

%%Iterating through matrix
for k = 1:MSize-1
    
    %%Checking if our pivot equals 0
    if Ma(k,k) == 0
        
        for row = k+1:MSize
            %%Checking if next pivot equals 0
            if Ma(row,k) ~= 0
                
                %%If not we change row's
               Ma([k row],:) = Ma([row k],:);
               
            end
            
        end
    end 
    
    %%Checking if main diagonal equals 0
    if Ma(k,k) == 0
        flag = -1;
    end
    
    for i = k+1:MSize
        
        %%Getting pivot to work later
        pivot = Ma(i,k)/Ma(k,k);
        
        %%Getting each value in row
        Ma(i,k:MSize+1) = Ma(i,k:MSize+1)-pivot*Ma(k,k:MSize+1);
    end
  
   
end


if Ma(end,end-1) == 0
    flag = -1;
end

At = Ma(1:MSize, 1:MSize);
bt = Ma(:, end);
end