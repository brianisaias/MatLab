%% Function to minimize
f = @(x) 3*x.^4 - 2*x.^2 + 4*x + 1;

%% Initial guess
x0 = 0;

fplot(f, [-3 1])
hold on
plot(x_min, y_min, 'ro')   % mark the minimum point
hold off


%% Show results
fprintf('Minimum x = %.6f\n', x_min);
fprintf('Minimum y = %.6f\n', y_min);

% Minimum x = -0.851375
% Minimum y = -2.279002