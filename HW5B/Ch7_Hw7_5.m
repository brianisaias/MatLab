% define Matrix
A = [1 3 0; 2 1 2; 4 1 3];
B = [0 1 1; 1 3 3; 2 0 3];

% Calculate the product of matrices A and B
C = A + B

% C =
% 
%      1     4     1
%      3     4     5
%      6     1     6



% By Hand
%     1 3 0
% A = 2 1 2
%     4 1 3 
% 
%     0 1 1
% B = 1 3 3
%     2 0 3 
% 
% 
%        (1 + 0) (3 + 1) (0 + 1)  
% A + B =(2 + 1) (1 + 3) (2 + 3) = C
%        (4 + 2) (1 + 0) (3 + 3)
% 
%     1     4     1
% C=  3     4     5
%     6     1     6