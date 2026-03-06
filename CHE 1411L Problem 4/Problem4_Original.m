%% DEFINE VARIABLES
stream1=1000; %kg/hr Inlet
stream2 = 1000; %kg/hr (units) Inlet
% Stream 1 composition
A1= 0.5; % wt % f1 C2
B1 = 0.3; % wt % f1 C3 
C1= 0.2; % wt % f1 C4
% Stream 2 composition
A2= 0.3; 
B2 = 0.2;
C2 = 0.5;
% C2 & C3 from stream A (Stream 3)
A3= 0.8; 
B3 = 0.2;
% C3 & C2 from stream B ( Stream 4)
B4 = 0.4; 
A4 = 0.6;
% C3 & C2 from stream C (Stream 5)
B5 = 0.1;
A5= 0.9;
% C2 & C3 from stream D (stream 6)
A6 = 0.2;
B6 = 0.8;
% C3 & C4 from stream E (stream 7)
B7= 0.3; 
C7 = 0.7; 

%% Solving for streams C,D,E
syms C D E
    C3_Balance=stream1*B1 + stream2*B2 == C*B5 +D*B6+ E*B7;
    C2_Balance=stream1*A1 + stream2*A2 ==C*A5+ D*A6;
    C4_Balance=stream1*C1+ stream2*C2 ==C*0 +D*0 +E*C7;
soln=solve(C3_Balance,C2_Balance,C4_Balance,C,D,E);
C=eval(soln. C);
D=eval(soln. D);
E=eval(soln. E);
%Solving for stream B:
B=(((A3*A5*C)/A3)-(A3*C))/.2;
%Solving for stream A
A=B+C;
%Solving for stream F
F=D+E;
%Solving for the composition for Stream F
syms C2 C3 C4
    eq1=F*C2==D*A6;
    eq2=F*C4==E*C7;
    eq3=C3==1-(C2+C4);
soln=solve(eq1,eq2,eq3,C2,C3,C4);
C2=eval(soln. C2);
C3=eval(soln. C3);
C4=eval(soln. C4);
%display
FComposition= {'C2';'C3'; 'C4'};
WtFrac= [C2,C3,C4];
fprintf('Stream F Mass Fraction  \n');
fprintf('-------------------------------\n');
for i = 1:length(FComposition)
    fprintf('%s\t\t| %.2f\n', FComposition{i}, WtFrac(i)); %\t is tab
end
Stream={'A'; 'B'; 'C'; 'D'; 'E';'F'}; %Cell Array of character vectors (strings)
FlowRate= [A; B; C; D; E; F];
fprintf('\nStream\t\t| Flow Rate (kg/hr)\n');
fprintf('-------------------------------\n');
for i = 1:length(Stream)
    fprintf('%s\t\t| %.0f\n', Stream{i}, FlowRate(i)); %\t is tab
end

%%If statement
if C+D+E == stream1+stream2
    fprintf('\nMass is conserved(unique solution)')
else
    fprintf('\nNo valid solution')
end

% Stream F Mass Fraction  
% -------------------------------
% C2		| 0.03
% C3		| 0.36
% C4		| 0.61
% 
% Stream		| Flow Rate (kg/hr)
% -------------------------------
% A		| 1286
% B		| 429
% C		| 857
% D		| 143
% E		| 1000
% F		| 1143