% problem9_4.m
% Evaluates the integral of 4^(-x) from 0 to upper limits
f = @(x) 4.^(-x);   % function

a = 0;              % lower limit
upper_limits = [2 4 6 8 10];  % problem requires 2,4,6,8,10

for b = upper_limits
    I = integral(f, a, b);
    fprintf('Integral from %g to %g = %.6f\n', a, b, I);
end

% Integral from 0 to 2 = 0.676263
% Integral from 0 to 4 = 0.718530
% Integral from 0 to 6 = 0.721171
% Integral from 0 to 8 = 0.721337
% Integral from 0 to 10 = 0.721347