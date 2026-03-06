 % Clear command window
 clear

 % Get user input
 y = input(' Enter a number between 1 - 10: ');

 % If y is outside the range, change its value appropriately

if y > 15
     fprintf([' The number is much too high, ' ...
         'The program is terminating\n'])

elseif y > 10
            fprintf([' The number is too high. ' ...
                'It will be changed to 10.\n']);
            y = 10 % Sets y to 10 if input entered is greater than 10

            % The value is equivilant 
elseif y == 10
                fprintf(' The number is the upper limit. \n')
                y % print that value
elseif y < 1
            fprintf([' The number is too low. ' ...
                'It will be changed to 1.\n']);
            y = 1 % Sets y to 10 if input entered is less than

 else
     fprintf(' The number you entered is within the range: %d\n', y);
y  % will print the given value within range

     end 
     % No more ends needed since its going through each
     %  and checking its valid or else it moves down
 
 y % prints the value of y

%  Enter a number between 1 - 10: 0
%  The number is too low. It will be changed to 1.
% 
% y =
% 
%      1
% 
% 
% y =
% 
%      1
% 
% If_elseif_else
%  Enter a number between 1 - 10: 4
%  The number you entered is within the range: 4
% 
% y =
% 
%      4
% 
% 
% y =
% 
%      4
% 
% If_elseif_else
%  Enter a number between 1 - 10: 10
%  The number is the upper limit. 
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
% If_elseif_else
%  Enter a number between 1 - 10: 11
%  The number is too high. It will be changed to 10.
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
% If_elseif_else
%  Enter a number between 1 - 10: 16
%  The number is much too high, The program is terminating
% 
% y =
% 
%     16
% 
