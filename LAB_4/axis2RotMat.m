function [R] = axis2RotMat(a,u)

u = u/sqrt(u'*u);
Ux = [0 u(3) -u(2); -u(3) 0 u(1); u(2) -u(1) 0]';
Identidad = eye(3);

R = Identidad*cosd(a) + (1-cosd(a))*(u*u')+Ux*sind(a);
end