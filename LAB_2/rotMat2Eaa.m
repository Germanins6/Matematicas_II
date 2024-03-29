function [a,u] = rotMat2Eaa(R)
% [a,u] = rotMat2Eaa(R)
% Computes the angle and principal axis of rotation given a rotation matrix R. 
% Inputs:
%	R: rotation matrix
% Outputs:
%	a: angle of rotation
%	u: axis of rotation 

a = acosd((trace(R)-1)/2);

Rx = (R-R')/(2*sind(a));
u = [Rx(3,2),Rx(1,3),Rx(2,1)]';
if(a == 0)
    u = R(:,1);
end
if(a == 180)
    u(1) = sqrt((R(1,1)+1)/2);
    u(2) = -sqrt((R(2,2)+1)/2);
    u(3) = sqrt((R(3,3)+1)/2);
end

end

