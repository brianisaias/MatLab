% this program calculates the area under a curve 
% using the trapezoid method

function SUM = Ch9_Lab9_2(k)

% SUM(intergral value) initialization
SUM = 0;

% Increment calculator

increment = 4/k;

% Initialize endpoint
x(1) = 0;
y(1) = 0;

%Loop to calculate the Sum

for i = 2:(k+1)
    x(i) = x(i-1) + increment;
    y(i) = 3*(x(i)^2)-6*x(i);
    SUM = SUM + 0.5*(y(i)+ y(i-1))*(x(i)-x(i-1));
end

% Ch9_Lab9_2(10)
% 
% ans =
% 
%    16.3200
