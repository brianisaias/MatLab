% Hw6_1_b.m
% Find the root of f(x) = 3*exp(2x) - 10 in 0 < x < 1

f = @(x) (3*exp(2*x)) - 10;          % define function

r = fzero(f, [0, 1]);                % find root between 0 and 1

fprintf('Root ≈ %.5f\n', r);         % display result

% Hw6_1_b
% Root ≈ 0.60199