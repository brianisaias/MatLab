function SUM = Ch9_Lab9_3(Z)
lower = -6;
upper = Z;
inc = (upper-lower)/1000;
SUM = 0;

x(1) = lower;
y(1) = 1/sqrt(2*pi)*exp(-x(1)^2/2);

for i = 2:(1001)
    x(i) = x(i-1)+inc;
    y(i) = 1/sqrt(2*pi)*exp(-x(i)^2/2);
    SUM = SUM + .5*(y(i)+y(i-1))*(x(i)-x(i-1));
end

% Ch9_Lab9_3(3, 100)
% 
% ans =
% 
%     0.9973

% Ch9_Lab9_3(0)
% 
% 
% ans =
% 
%     0.5000