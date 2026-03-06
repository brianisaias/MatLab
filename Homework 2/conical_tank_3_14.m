%Will calculate the volume of water in a conical
%tank using diameter and height asked to user as rc and hc
dc = input('What is the diameter? ');
hc = input('What is the height? ');
Volume=(1/3)*(pi)*((dc/2)^2)*(hc);
Properties(1,1)=Volume;
%Will calculate the weight of the water in the tank
% assuming density of water being rho=62.4lbm/ft^3

rho = 62.4;
Properties(1,2) = Volume * rho;
Properties