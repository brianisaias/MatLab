% Will calculate the surface area and volume of spheres
% with diameter inputed by user
d1 = input('Enter diameter 1 (cm): ');
d2 = input('Enter diameter 2 (cm): ');
d3 = input('Enter diameter 3 (cm): ');
d4 = input('Enter diameter 4 (cm): ');
d5 = input('Enter diameter 5 (cm): ');

% Surface areas (A = pi*d^2)
A1 = pi * d1^2;
A2 = pi * d2^2;
A3 = pi * d3^2;
A4 = pi * d4^2;
A5 = pi * d5^2;

% Volumes (V = (pi/6)*d^3)
V1 = (pi/6) * d1^3;
V2 = (pi/6) * d2^3;
V3 = (pi/6) * d3^3;
V4 = (pi/6) * d4^3;
V5 = (pi/6) * d5^3;

% Build results array
results = [A1 V1;
           A2 V2;
           A3 V3;
           A4 V4;
           A5 V5]