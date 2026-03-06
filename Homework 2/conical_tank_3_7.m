%Will calculate the volume of water in a conical
%tank using diameter and height asked to user as rc and hc
dc = input('What is the diameter? ');
hc = input('What is the height? ');
Volume=(1/3)*(pi)*((dc/2)^2)*(hc);

%Will calculate the weight of the water in the tank
% assuming density of water being rho=62.4lbm/ft^3

rho = 62.4;
weight = Volume * rho;

fprintf('The volume of water in the tank is %.2f cubic feet.\n', Volume);
fprintf('The weight of the water in the tank is %.2f pounds.\n', weight);
