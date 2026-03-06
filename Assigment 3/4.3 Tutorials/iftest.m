
% Clear command window
clc

% Get user input
y = input(' Enter a number less than or equal to 10: ');

% If y is greater than 10, change its value to 10

if y > 10
    fprintf([' The number you entered is greater than 10. ' ...
        'It will be changed to 10. \n'])
    y = 10; % Sets y to 10 if value is greater than 10
end 

y % Prints the value entered if less than or equal to 10

% iftest
%  Enter a number less than or equal to 10: 0
% 
% y =
% 
%      0
% 
% iftest
%  Enter a number less than or equal to 10: 10
% 
% y =
% 
%     10
% 
% iftest
%  Enter a number less than or equal to 10: 1000
%  The number you entered is greater than 10. It will be changed to 10. 
% 
% y =
% 
%     10