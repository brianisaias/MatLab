% %In Command Window
% A = [1 0 2; 2 1 2; 0 2 1]
% 
% A =
% 
%      1     0     2
%      2     1     2
%      0     2     1
% 
% B = [1 0 1; 1 1 2; 3 3 1]
% 
% B =
% 
%      1     0     1
%      1     1     2
%      3     3     1
% 
% C = A + B
% 
% C =
% 
%      2     0     3
%      3     2     4
%      3     5     2
% 
% C = A * B
% 
% C =
% 
%      7     6     3
%      9     7     6
%      5     5     5
% 
% C = C*2
% 
% C =
% 
%     14    12     6
%     18    14    12
%     10    10    10
% 
% A = [0 1 1; 2 3 1; 1 2 1]
% 
% A =
% 
%      0     1     1
%      2     3     1
%      1     2     1
% 
% B = [1 2 2; 1 0 1]
% 
% B =
% 
%      1     2     2
%      1     0     1
% 
% C = A * B
% Error using  * 
% Incorrect dimensions for matrix multiplication. Check that the number of columns in the first matrix
% matches the number of rows in the second matrix. To operate on each element of the matrix individually,
% use TIMES (.*) for elementwise multiplication.
% 
% Related documentation
% 
% 
% B = B'
% 
% B =
% 
%      1     1
%      2     0
%      2     1
% 
% C = A * B
% 
% C =
% 
%      4     1
%     10     3
%      7     2
% 
% A = [1 2 1; 0 2 0; 2 1 1]
% 
% A =
% 
%      1     2     1
%      0     2     0
%      2     1     1
% 
% B = [1 2 3; 4 5 6; 7 8 9]
% 
% B =
% 
%      1     2     3
%      4     5     6
%      7     8     9
% 
% C = inv(A)
% 
% C =
% 
%    -1.0000    0.5000    1.0000
%          0    0.5000         0
%     2.0000   -1.5000   -1.0000
% 
% D = inv(B)
% Warning: Matrix is close to singular or badly scaled. Results may be inaccurate. RCOND =  1.541976e-18. 
% 
% 
% D =
% 
%    1.0e+16 *
% 
%    -0.4504    0.9007   -0.4504
%     0.9007   -1.8014    0.9007
%    -0.4504    0.9007   -0.4504
% 
% detA = det(A)
% 
% detA =
% 
%     -2
% 
% detB = det(B)
% 
% detB =
% 
%    6.6613e-16
% 
% A = [1 2 1; 0 1 2]
% 
% A =
% 
%      1     2     1
%      0     1     2
% 
% B = [1 2 0; 1 1 2]
% 
% B =
% 
%      1     2     0
%      1     1     2
% 
% C = inv(A*B')
% 
% C =
% 
%     0.3333   -0.3333
%    -0.1333    0.3333