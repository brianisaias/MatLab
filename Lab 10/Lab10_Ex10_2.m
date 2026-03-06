clc
clear

function y = objfunc(x);
y = 3*x^4 + x^3*cos(10*pi*x);
end

fplot(@objfunc, [-1 1])

xmin = fminsearch(@objfunc, -0.6)
ymin = objfunc(xmin)

%@100
% xmin =
% 
%     0.1129
% 
% 
% ymin =
% 
%   -8.3509e-04

% @ -0.2
% xmin =
% 
%    -0.2028
% 
% 
% ymin =
% 
%    -0.0032

% @ -0.6
% xmin =
% 
%    -0.5928
% 
% 
% ymin =
% 
%     0.1675