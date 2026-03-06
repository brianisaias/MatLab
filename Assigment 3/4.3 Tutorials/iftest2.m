 % Clear command window
 clc

 % Get user input
 y = input(' Enter a number between 1 - 10: ');

 % If y is outside the range, change its value appropriately

 if y > 10 | y < 1
     fprintf([' The number you entered is outside the range.' ...
         ' It will be changed.\n'])

     if y > 10
          y = 10; % Sets y to 10 if input entered is greater than 10
         fprintf(' The number has been changed to 10.\n');
     end 

     if y < 1
         y = 1; % Sets y to 10 if input entered is less than 1
         fprintf(' The number has been changed to 1.\n');
     end

 end
 
 y % prints the value of y

%  iftest2
%  Enter a number between 1 - 10: 0
%  The number you entered is outside the range. It will be changed.
% 
% y =
% 
%      1
% 
% iftest2
%  Enter a number between 1 - 10: 4
% 
% y =
% 
%      4
% 
% iftest2
%  Enter a number between 1 - 10: 11
%  The number you entered is outside the range. It will be changed.
%  The number has been changed to 10.
% 
% y =
% 
%     10
% 
