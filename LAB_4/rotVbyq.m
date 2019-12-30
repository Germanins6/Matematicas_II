function [Vrot] = rotVbyq(v,q)

%Quaternions
qU = q;
qV = [0 v]';

qUconj = zeros(1,4);
qUconj(1) = qU(1);
qUconj(2:4) = -qU(2:4);
qUconj = qUconj';

%first product
q0 = qU(1);
p0 = qV(1);
q = [qU(2) qU(3) qU(4)];
p = [qV(2) qV(3) qV(4)];  

c = q0*p0-dot(q',p);
cv = q0*p+p0*q+cross(q,p);
%%Second product
q0 = c;
p0 = qUconj(1);
q = cv;
p = [qUconj(2) qUconj(3) qUconj(4)];

c = q0*p0-dot(q',p);
cv = q0*p+p0*q+cross(q,p);

%Rotated vector
Vrot = [cv(1) cv(2) cv(3)]';
Vrot = Vrot/norm(Vrot);

end