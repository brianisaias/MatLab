% Hw6_5_a.m
% f(x) = 3x^4 - 6x - 6

f = @(x) 3*x.^4 - 6*x - 6;

fplot(f, [-3, 3]); grid on; yline(0);
xlabel('x'); ylabel('f(x)'); title('f(x) = 3x^4 - 6x - 6');
