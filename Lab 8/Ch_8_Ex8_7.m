% Clear and intialize 
clear all
syms x y

% define the equations

eq1 = 3*x + 2*y - 7;
eq2 = 2*x - y - 5;

soln = solve(eq1, eq2,x ,y );

x = eval(soln.x);
y = eval(soln.y);

x
y

% x =
% 
%     2.4286
% 
% 
% y =
% 
%    -0.1429