function [R] = Eaa2rotMat(a,u)
% [R] = Eaa2rotMat(a,u)
% Computes the rotation matrix R given an angle and axis of rotation. 
% Inputs:
%	a: angle of rotation
%	u: axis of rotation 
% Outputs:
%	R: generated rotation matrix


u = u/sqrt(u'*u);
Ux = [0 u(3) -u(2); -u(3) 0 u(1); u(2) -u(1) 0]';
Identidad = eye(3);

R = Identidad*cosd(a) + (1-cosd(a))*(u*u')+Ux*sind(a);
end