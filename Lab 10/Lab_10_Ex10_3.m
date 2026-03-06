clc
clear

function y = objfunc(x);
y = x(1)^2-x(1)+x(2)^4-x(2)+x(3)^4+x(3)^2-x(3);
end

xmin = fminsearch(@objfunc, [-10 -10 -10])
ymin = objfunc(xmin)

% @ 0
% xmin =
% 
%     0.5000    0.6300    0.3855
% 
% 
% ymin =
% 
%    -0.9373

% @ -10
% xmin =
% 
%     0.5000    0.6299    0.3854
% 
% 
% ymin =
% 
%    -0.9373