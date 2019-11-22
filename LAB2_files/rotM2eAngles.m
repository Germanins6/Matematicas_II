function [yaw, pitch, roll] = rotM2eAngles(R)
% [yaw, pitch, roll] = rotM2eAngles(R)
% Computes the Euler angles (yaw, pitch, roll) given an input rotation matrix R.
% Inputs:
%	R: rotation matrix
% Outputs:
%	yaw: angle of rotation around the z axis
%	pitch: angle of rotation around the y axis
%	roll: angle of rotation around the x axis

pitch = asind(-R(3,1));
pitch = pitch - 180;

roll = atan2d(R(3,2)/cosd(pitch), R(3,3)/cosd(pitch));

yaw = atan2d(R(2,1)/cosd(pitch), R(1,1)/cosd(pitch));

end




