clear all

r1=70;
r2=30;
r3=65;
r4=40;

theta1 = 0;
theta2 = 40*pi/180;

r_1 = r1*[cos(theta1) sin(theta1) 0];
r_2 = r2 * [cos(theta2) sin(theta2) 0];

syms theta3 theta4

assume(theta3 > 0 & theta3 <= 2*pi);
assume(theta4 > 0 & theta4 <= 2*pi);

r_3 = r3 * [cos(theta3) sin(theta3) 0];
r_4 = r4 * [cos(theta4) sin(theta4) 0];

r_eq = r_1 + r_4 - r_2 - r_3;
r_soln = solve(r_eq(1), r_eq(2), theta3, theta4);

theta3_d = 180/pi*eval(r_soln.theta3)
theta4_d = 180/pi*eval(r_soln.theta4)

% theta3_d =
% 
%    15.6776
%   299.7227
% 
% theta4_d =
% 
%    67.1028
%   248.2975
