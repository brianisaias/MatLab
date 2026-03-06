% creating a funtion and plotting

f = @(x) (x^4) - (4*(x^3)) - (6*(x^2)) + 15;

fplot(f, [-3, 6]);
xlabel('x');
ylabel('f(x)');
title('Plot of the function f(x)');
grid on;