%% MATERIAL BALANCE WITH AI (GA) AND UNKNOWN G

clc; clear; close all;

%% DEFINE VARIABLES
stream1 = 1000; % kg/hr Inlet
stream2 = 1000; % kg/hr Inlet

% Stream 1 composition (C2, C3, C4)
A1 = 0.5; % wt frac C2
B1 = 0.3; % wt frac C3
C1 = 0.2; % wt frac C4

% Stream 2 composition (C2, C3, C4)
A2   = 0.3; % C2
B2   = 0.2; % C3
C4_2 = 0.5; % C4  (renamed from C2 to avoid confusion)

% C2 & C3 from stream A (Stream 3)
A3 = 0.8;
B3 = 0.2;

% C3 & C2 from stream B (Stream 4)
B4 = 0.4;
A4 = 0.6;

% C3 & C2 from stream C (Stream 5)
B5 = 0.1;
A5 = 0.9;

% C2 & C3 from stream D (stream 6)
A6 = 0.2;
B6 = 0.8;

% C3 & C4 from stream E (stream 7)
B7 = 0.3;
C7 = 0.7;

%% New Stream G (NOW UNKNOWN, AI WILL SOLVE FOR ITS FLOWRATE)
% We still define its composition; only its flowrate G is unknown.
BG = 0.7;   % C3 in G
CG = 0.3;   % C4 in G
AG = 0.0;   % C2 in G (assumed 0)

%% ================== AI SOLUTION USING GENETIC ALGORITHM ==================
% Unknowns now: x = [C, D, E, G]
% AI will search for values of C, D, E, G that:
% - Satisfy the C2, C3, C4 balances
% - Keep G reasonably small (optimization aspect)

fitness = @(x) balance_cost_AI( ...
    x, ...
    stream1, stream2, ...
    A1, B1, C1, ...
    A2, B2, C4_2, ...
    A5, B5, A6, B6, ...
    B7, C7, ...
    AG, BG, CG);

lb = [0 0 0 0];           % Lower bounds: flows >= 0
ub = [5000 5000 5000 5000]; % Upper bounds: arbitrary large

opts = optimoptions('ga', 'Display', 'off'); % hide GA output
[x_opt, fval] = ga(fitness, 4, [], [], [], [], lb, ub, [], opts);

% Extract AI-decided values
C = x_opt(1);   % stream C (kg/hr)
D = x_opt(2);   % stream D (kg/hr)
E = x_opt(3);   % stream E (kg/hr)
G = x_opt(4);   % stream G (kg/hr)  <-- AI solved this!

%% Solving for stream B (same formula as original)
B = (((A3 * A5 * C) / A3) - (A3 * C)) / 0.2;

%% Solving for stream A
A = B + C;

%% Mixer: Solving for stream F (D + E + G)
F = D + E + G;

%% Solve for the composition for Stream F
syms C2_F C3_F C4_F

% C2 in F: only from D (A6 is C2 fraction in D)
eq1 = F*C2_F == D*A6;

% C4 in F: from E and G
eq2 = F*C4_F == E*C7 + G*CG;

% Fractions sum to 1
eq3 = C3_F == 1 - (C2_F + C4_F);

solnF = solve(eq1, eq2, eq3, C2_F, C3_F, C4_F);
C2_F = double(solnF.C2_F);
C3_F = double(solnF.C3_F);
C4_F = double(solnF.C4_F);

%% ============= DISPLAY RESULTS =================================

% Display Stream F Composition
FComposition = {'C2'; 'C3'; 'C4'};
WtFrac = [C2_F, C3_F, C4_F];

fprintf('Stream F Mass Fraction  \n');
fprintf('-------------------------------\n');
for i = 1:length(FComposition)
    fprintf('%s\t\t| %.2f\n', FComposition{i}, WtFrac(i));
end

% Display Flow Rates (include G now)
Stream   = {'A'; 'B'; 'C'; 'D'; 'E'; 'F'; 'G'};
FlowRate = [ A;   B;   C;   D;   E;   F;   G];

fprintf('\n\nStream\t\t| Flow Rate (kg/hr)\n');
fprintf('-------------------------------\n');
for i = 1:length(Stream)
    fprintf('%s\t\t| %.0f\n', Stream{i}, FlowRate(i));
end

%% Mass balance consistency check (around splitter: C + D + E vs feed)
if abs((C + D + E) - (stream1 + stream2)) < 1e-6
    fprintf('\n\nSplitter mass is conserved (unique solution for C, D, E)\n');
else
    fprintf('\n\nSplitter mass NOT conserved (check AI settings or data)\n');
end

%% ==================== LOCAL FUNCTION FOR AI BALANCE ============================
function J = balance_cost_AI(x,stream1,stream2,...
    A1,B1,C1,A2,B2,C4_2,A5,B5,A6,B6,B7,C7,AG,BG,CG)

    % Decision variables
    C = x(1);
    D = x(2);
    E = x(3);
    G = x(4);

    % C3 balance: in = out
    % In: from stream1, stream2, and G
    % Out: from C, D, E
    rC3 = (stream1*B1 + stream2*B2 + G*BG) - (C*B5 + D*B6 + E*B7);

    % C2 balance: in = out
    % In: from stream1 and stream2 (G has no C2 here)
    rC2 = (stream1*A1 + stream2*A2 + G*AG) - (C*A5 + D*A6);

    % C4 balance: in = out
    % In: from stream1, stream2, and G
    % Out: only from E (C and D don't carry C4)
    rC4 = (stream1*C1 + stream2*C4_2 + G*CG) - (E*C7);

    % Small regularization to prefer smaller G (AI optimization aspect)
    lambda = 1e-4;
    J = rC2^2 + rC3^2 + rC4^2 + lambda * G^2;
end