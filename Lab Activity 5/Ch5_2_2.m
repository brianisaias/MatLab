% SMD.m: Plots displacement of under damped
% spring-mass-damper system

% Inputs
y0 = 3.0;   % initial displacement, inches
dr = 0.10;  % damping ratio
fr = 2*pi;  % natural frequency, radians/second
T  = 5.0;   % total time to be plotted, seconds
N  = 100;   % number of time intervals to be plotted

% Calculate damped frequency, radians/second
fd = fr*sqrt(1-dr^2);

% Calculate time interval for displacement calculations
tinc = T/N;

for i = 1:N+1
    t(i) = (i-1)*tinc;
    c = cos(fd*t(i));
    s = sin(fd*t(i));
    e = exp(-dr*fr*t(i));
    y(i) = (y0*c + y0*dr*fr/fd*s)*e;
end

plot(t,y)