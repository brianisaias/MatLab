% Hw6_1_a_m
% Find the root of f(x) = 4x^3 - 3x^2 - 30 in 0 < x < 5

f = @(x) (4*x.^3) - (3*x.^2) - 30;   % define function

r = fzero(f, [0, 5]);                % find root between 0 and 5

fprintf('Root ≈ %.5f\n', r); % display result

% Hw6_1_a
% Root ≈ 2.24203
