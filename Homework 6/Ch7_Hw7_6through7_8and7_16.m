A = [1 3 0; 2 1 2; 4 1 3];
B = [0 1 1; 1 3 3; 2 0 3];

C1 = A*B;
C2 = B*A;

C1
C2

% C1 =
% 
%      3    10    10
%      5     5    11
%      7     7    16
% 
% 
% C2 =
% 
%      6     2     5
%     19     9    15
%     14     9     9

detA = det(A)
detB = det(B)

% detA =
% 
%      7
% 
% 
% detB =
% 
%     -3

% Since the det of a or b is not 0 then they each have an inverse

invA = inv(A);
invB = inv(B);

IdentityA_1 = A * invA
IdentityA_2 = invA * A
IdentityB_1 = B * invB
IdentityB_2 = invB * B

% IdentityA_1 =
% 
%     1.0000         0         0
%          0    1.0000   -0.0000
%          0    0.0000    1.0000
% 
% 
% IdentityA_2 =
% 
%     1.0000    0.0000         0
%          0    1.0000         0
%          0         0    1.0000
% 
% 
% IdentityB_1 =
% 
%      1     0     0
%      0     1     0
%      0     0     1
% 
% 
% IdentityB_2 =
% 
%      1     0     0
%      0     1     0
%      0     0     1

M = [1 3 3 6 4; 2 1 4 2 4; 6 4 1 3 8; 0 4 6 2 1; 4 2 0 4 1];

N = [20; 6; 14; 9; 5];

x = M\N

invM = inv(M);

x = invM*N

% x =
% 
%    -2.0179
%     1.7912
%    -0.6281
%     1.9429
%     1.7178
% 
% 
% x =
% 
%    -2.0179
%     1.7912
%    -0.6281
%     1.9429
%     1.7178
