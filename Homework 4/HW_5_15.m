Temp_oil = 40;
Temp_ball_i = 800;
Time_const = [50 20 100];

% FIRST GRAPH: stop when all temps < 80
t = 0;
Temp1 = [];   % store temps for plotting

while Temp_ball_i > 80
    row = []; % store one row of temps
    for i = 1:3
        tau = Time_const(i);
        Temp_ball = Temp_oil + (Temp_ball_i - Temp_oil) * exp(-t / tau);
        row = [row Temp_ball];
    end
    Temp1 = [Temp1; row];   % save temps
    t = t + 1;
    Temp_ball_i = Temp_oil + (800 - Temp_oil) * exp(-t / 50);
end

% Plot first graph
figure(1)
plot(0:t-1, Temp1(:,1), 'r-', 0:t-1, Temp1(:,2), 'b--', 0:t-1, Temp1(:,3), 'g-.')
xlabel('Time (s)')
ylabel('Temperature (°C)')
title('Cooling until all < 80°C')
legend('\tau=50', '\tau=20', '\tau=100')
grid on


% SECOND GRAPH: stop when all temps < 60
t = 0;
Temp_ball_i = 800;
Temp2 = [];

while Temp_ball_i > 60
    row = [];
    for i = 1:3
        tau = Time_const(i);
        Temp_ball = Temp_oil + (Temp_ball_i - Temp_oil) * exp(-t / tau);
        row = [row Temp_ball];
    end
    Temp2 = [Temp2; row];
    t = t + 1;
    Temp_ball_i = Temp_oil + (800 - Temp_oil) * exp(-t / 50);
end

% Plot second graph
figure(2)
plot(0:t-1, Temp2(:,1), 'r-', 0:t-1, Temp2(:,2), 'b--', 0:t-1, Temp2(:,3), 'g-.')
xlabel('Time (s)')
ylabel('Temperature (°C)')
title('Cooling until all < 60°C')
legend('\tau=50', '\tau=20', '\tau=100')
grid on
