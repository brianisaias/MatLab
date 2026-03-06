% define resistors R1 - R5
R1 = 5;
R2 = 25;

R4 = 6;
R5 = 15;

% define the voltage sources in Volts
V1 = 110;
V2 = 45;

% Varying R3 from 0.1 to 100 ohms
for m = 1:1000;
    R3(m) = m/10;

% defines the matric coeffcients row by row
A1 = [1 -1 -1 0 0];
A2 = [0 0 1 -1 -1];
A3 = [R1 R2 0 0 0];
A4 = [0 R2 -R3(m) -R4 0];
A5 = [0 0 0 R4 -R5];

% putting the matrix together
A = [A1; A2; A3; A4; A5];

% define the the constants 
C = [0; 0; V1; 0 ;V2]

% calc the currents

I = inv(A) * C

% store I values 
I1(m) = I(1);
I2(m) = I(2);
I3(m) = I(3);
I4(m) = I(4);
I5(m) = I(5);

end

%Plot

plot(R3, I1, R3, I2, R3, I3, R3, I4, R3, I5);
