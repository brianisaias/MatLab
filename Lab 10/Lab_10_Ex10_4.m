clc
clear

function y = objfunc(x);
y = 3*x^4 + x^3*cos(10*pi*x);
end



xmin = fminbnd(@objfunc, .8, 1)
ymin = objfunc(xmin)

% xmin =
% 
%     0.8910
% 
% 
% ymin =
% 
%     1.2115