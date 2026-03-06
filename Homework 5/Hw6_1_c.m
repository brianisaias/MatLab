% Hw6_1_c.m
% Find the root of f(x) = 5*(10^x) - 10*x^2 in -1 < x < 1

f = @(x) (5*(10.^x)) - (10*x.^2);    % define function

r = fzero(f, [-1, 0]);               % find root between -1 and 0

fprintf('Root ≈ %.5f\n', r);         % display result

% Hw6_1_c
% Root ≈ -0.43067