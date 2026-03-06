 % Clear command window
 clc

 % Get user input
 y = input(' Enter a number between 1 - 10: ');

 % If y is outside the range, change its value to 10

 if y > 10 | y < 1
     fprintf([' The number you entered is outside the range.' ...
         ' It will be changed to 10\n'])
     y = 10 %vsets y to 10 if input entered is not in between 1-10
 end

 y % prints the value of y

 
%  iftest1
%  Enter a number between 1 - 10: 0
%  The number you entered is outside the range. It will be changed to 10
% 
% y =
% 
%     10
% 
% 
% y =
% 
%     10
% 
% iftest1
%  Enter a number between 1 - 10: 4
% 
% y =
% 
%      4
% 
% iftest1
%  Enter a number between 1 - 10: 11
%  The number you entered is outside the range. It will be changed to 10
% 
% y =
% 
%     10
% 
% 
% y =
% 
%     10
% 
