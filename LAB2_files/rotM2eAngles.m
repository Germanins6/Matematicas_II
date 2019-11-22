function [yaw, pitch, roll] = rotM2eAngles(R)
% [yaw, pitch, roll] = rotM2eAngles(R)
% Computes the Euler angles (yaw, pitch, roll) given an input rotation matrix R.
% Inputs:
%	R: rotation matrix
% Outputs:
%	yaw: angle of rotation around the z axis
%	pitch: angle of rotation around the y axis
%	roll: angle of rotation around the x axis

%%If result matrix trace is 3 all will be OK
Rt = R*R';
ResultTrace = trace(Rt)


%%Getting pitch angle from Rotation Matrix
pitch = 180 - asind(-R(3,1));

%%We are going to use check to know if sin of pitch will be -1 or 1.
%%special case
check = sind(pitch);

if check == 1
    
    pitch = 0;
    roll = atan2d(R(3,2),R(3,3));
    yaw = atan2d(R(2,1), R(1,1));
    
end

if check == -1
    
    pitch = 0;
    roll = atan2d(R(3,2),R(3,3));
    yaw = atan2d(R(2,1), R(1,1));
    
end

%%If sin(pitch) arent equal -1 or 1 we will be doing next calculations.
roll = atan2d(R(3,2)/cosd(pitch), R(3,3)/cosd(pitch));
yaw = atan2d(R(2,1)/cosd(pitch), R(1,1)/cosd(pitch));



end




