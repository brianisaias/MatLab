%% DEFINE VARIABLES
stream1 = 1000; %kg/hr Inlet
stream2 = 1000; %kg/hr Inlet

% Stream 1 composition
A1= 0.3;
B1= 0.3;
C1= 0.2;
D1= 0.2;      % MOD: added C5

% Stream 2 composition
A2= 0.3;
B2= 0.2;
C2= 0.4;
D2= 0.1;      % MOD: added C5

% Stream A (Stream 3)
A3= 0.6;
B3= 0.2;
D3= 0.2;      % MOD: added C5

% Stream C (Stream 5)
A5 = 0.7;
B5 = 0.1;
D5 = 0.2;     % MOD: C5 leaving through C

% Stream D (Stream 6)
A6 = 0.2;
B6 = 0.8;

% Stream E (Stream 7)
B7= 0.3;
C7 = 0.7;

%% Stream G (Recycle) NEW
Stream8 = 500;

BG = 0.6;
CG = 0.3;
DG = 0.1;

%% Solving for streams C, D, E
syms C D E

% Component balances we KEEP
C2_Balance = stream1*A1 + stream2*A2 == C*A5 + D*A6;        % C2
C3_Balance = stream1*B1 + stream2*B2 == C*B5 + D*B6 + E*B7; % C3
C4_Balance = stream1*C1 + stream2*C2 == E*C7;         %C4

soln = solve(C2_Balance, C3_Balance, C4_Balance, C, D, E);

C = eval(soln.C);
D = eval(soln.D);
E = eval(soln.E);

% Solve for stream B
B = (((A3*A5*C)/A3)-(A3*C))/.2;

% Stream A
A = B + C;

%% Stream G added
G = Stream8;     % MOD

%% Unit 3 (F = D + E + G)
F = D + E + G;   % MOD: added +G

%% Solve for F composition
syms C2_F C3_F C4_F C5_F

eq1 = F*C2_F == D*A6;
eq2 = F*C3_F == D*B6 + E*B7 + G*BG;   % MOD: +G*BG
eq3 = F*C4_F == E*C7 + G*CG;          % MOD: +G*CG
eq4 = C2_F + C3_F + C4_F + C5_F == 1; % MOD: added C5

solnF = solve(eq1,eq2,eq3,eq4,C2_F,C3_F,C4_F,C5_F);

C2_F = eval(solnF.C2_F);
C3_F = eval(solnF.C3_F);
C4_F = eval(solnF.C4_F);
C5_F = eval(solnF.C5_F);              % MOD: C5 in F

%% Display F composition
FComposition= {'C2';'C3'; 'C4'; 'C5'};
WtFrac= [C2_F,C3_F,C4_F,C5_F];

fprintf('Stream F Mass Fraction  \n');
fprintf('-------------------------------\n');
for i = 1:length(FComposition)
    fprintf('%s\t\t| %.2f\n', FComposition{i}, WtFrac(i));
end

%% Display flowrates
Stream={'A'; 'B'; 'C'; 'D'; 'E';'F';'G'}; % MOD: added G
FlowRate= [A; B; C; D; E; F; G]; % MOD: added G

fprintf('\nStream\t\t| Flow Rate (kg/hr)\n');
fprintf('-------------------------------\n');
for i = 1:length(Stream)
    fprintf('%s\t\t| %.0f\n', Stream{i}, FlowRate(i));
end

%% Checks

% NEW: Overall mass balance (ALL in = C + D + E)
if abs((C + D + E) - (stream1 + stream2)) < 1e-6
    fprintf('\nMass is conserved (System)\n')
else
    fprintf('\nMass is NOT conserved (System)\n')
end

% Unit 3 mass balance (includes recycle G)
if abs((D + E + G) - F) < 1e-6  % MOD: includes G
    fprintf('\nMass is conserved (Unit 3)\n')
else
    fprintf('\nMass is NOT conserved (Unit 3)\n')
end

% Stream F Mass Fraction  
% -------------------------------
% C2		| 0.02
% C3		| 0.43
% C4		| 0.53
% C5		| 0.03
% 
% Stream		| Flow Rate (kg/hr)
% -------------------------------
% A		| 1231
% B		| 410
% C		| 821
% D		| 128
% E		| 1051
% F		| 1679
% G		| 500
% 
% Mass is conserved (System)
% 
% Mass is conserved (Unit 3)