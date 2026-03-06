% Problem 9.14 - Flow out of a tank
% q(t) = 80 e^(-0.2 t)

q = @(t) 80*exp(-0.2*t);            % flow rate
V = @(t) 400*(1 - exp(-0.2*t));     % total drained
R = @(t) 400*exp(-0.2*t);           % remaining

% Part (a) - Time to drain half the tank (200 gallons)

target = 200;                       % gallons drained
time_half = fzero(@(t) V(t) - target, 5);  % initial guess 5 minutes

%% Part (b) - Amount of water left after 15 minutes
t = 15;
remaining_15 = R(t);

time_half
remaining_15

% time_half =
% 
%     3.4657
% 
% 
% remaining_15 =
% 
%    19.9148