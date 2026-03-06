% This script finds the roots of a polynomial in array form

% f(x) = 2x^3 + 10x^2 -144

p = [2 10 0 -144];

r = roots(p);
pv = polyval(p,r);

r
pv