%% Define the function
f = @(x) x.^2 .* cos(2*pi*x);

%% Minimize in the interval [0, 1]
[x_min, y_min] = fminbnd(f, 0, 1);

%% Plot the function (simple)
fplot(f, [0 1])
hold on
plot(x_min, y_min, 'ro')   % mark the minimum point
hold off

%% Show results
fprintf('Minimum x = %.6f\n', x_min);
fprintf('Minimum y = %.6f\n', y_min);

% Minimum x = 0.579900
% Minimum y = -0.294790