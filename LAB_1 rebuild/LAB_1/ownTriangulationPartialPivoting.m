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

MatrixSize = length(b);

Ma = [A b];
flag = 0;
for i=1:1:MatrixSize-1
   %%Checking if our pivot equals 0
   
        
        for row = i+1:MatrixSize
            %%Checking if next pivot is bigger
            if abs(Ma(row,i)) > Ma(i,i)
                
                %%If not we change row's
               Ma([i row],:) = Ma([row i],:);
               
            end
            
        end
        if Ma(i,i) == 0
        flag = -1;
        end
    
  pivot = Ma(i,i);
       
        for k = i:1:MatrixSize-1
        for j=i+1:1:MatrixSize+1
      %calcular fila matriz
     
          Ma(k+1,j)=(pivot*Ma(k+1,j))-(Ma(i,j)*Ma(k+1,i)); 
        end
        end
       Ma(i+1:MatrixSize,i)=0;
end
if Ma(end,end-1) == 0
    flag = -1;
end
At = Ma(1:MatrixSize, 1:MatrixSize);
bt = Ma(:, end);

end


