% Find root using fzero
clear;
clc;

% Inputs
P = input('Initial investment P: ');
F = input('Future value F: ');
r = input('Annual interest rate r (decimal): ');

% Function
g = @(n) P*(1+r).^n - F;

% finding root between 0-100
n = fzero(g, [0, 100]);

% Output
n
for i = 1:26
   F_values(i) = P*(1+r).^i;    % store A values
end

% Plot
plot(1:26, F_values, 'b', 'LineWidth', 1.5);
hold on;
plot(n, F, 'ro', 'MarkerFaceColor','r')

% Initial investment P: 10000
% Future value F: 100000
% Annual interest rate r (decimal): 0.10
% 
% n =
% 
%    24.1589