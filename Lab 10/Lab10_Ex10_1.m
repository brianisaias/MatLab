clc
clear

function y = objfunc(x);
y = 3*x^4 + x^3*cos(pi*x);
end

fplot(@objfunc, [-1 1])

xmin = fminsearch(@objfunc, 100)
ymin = objfunc(xmin)

% xmin =
% 
%    -0.1834
% 
% 
% ymin =
% 
%    -0.0018
%@ x = 100
% xmin =
% 
%    -0.1834
% 
% 
% ymin =
% 
%    -0.0018