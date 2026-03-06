
%Clear 
clear

% Initalize the counter 

m = 0;
num = [0 0 0];

%loop x 1-25 thats 25 steps
for x=1:25;

% loop y 1-25 thats 25 steps
for y = x:25;

% loop through the 24 steps of each at same time
h=sqrt((x^2)+(y^2)); 

if h == floor(h)
    m = m + 1; % Increment m for each iteration
    x;
    y;
    h;
    num = [x y h]
end
end
end

m

% triangle
% 
% num =
% 
%      3     4     5
% 
% 
% num =
% 
%      5    12    13
% 
% 
% num =
% 
%      6     8    10
% 
% 
% num =
% 
%      7    24    25
% 
% 
% num =
% 
%      8    15    17
% 
% 
% num =
% 
%      9    12    15
% 
% 
% num =
% 
%     10    24    26
% 
% 
% num =
% 
%     12    16    20
% 
% 
% num =
% 
%     15    20    25
% 
% 
% num =
% 
%     18    24    30
% 
% 
% num =
% 
%     20    21    29
% 
% 
% m =
% 
%     11

