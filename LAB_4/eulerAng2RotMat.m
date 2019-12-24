function [R] = eulerAng2RotMat(yaw, pitch, roll)

%z axis
Ryaw = [cosd(yaw) sind(yaw) 0; -sind(yaw) cosd(yaw) 0; 0 0 1];

%y axis
Rpitch = [cosd(pitch) 0 -sind(pitch); 0 1 0; sind(pitch) 0 cosd(pitch)];

%x axis
Rroll = [1 0 0; 0 cosd(roll) sind(roll); 0 -sind(roll) cosd(roll)];

%rotation matrix
R = Ryaw' * Rpitch' * Rroll';

end