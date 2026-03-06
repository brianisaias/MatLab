clc
clear
syms x y

r_1 = x^3 - 2*y + 3;
r_2 = 3*x^2 + 3*y - 6;

soln = solve(r_1,r_2,x,y);

x = eval(soln.x);
y = eval(soln.y);

x
y

% x =
% 
%    -1.0000
%    -1.6180
%     0.6180
% 
% 
% y =
% 
%     1.0000
%    -0.6180
%     1.6180