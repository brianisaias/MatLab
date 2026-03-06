
% this program loops through a function 
% then plots the values of a given interal
graph = [];

for x = -3:6

 y = (x^4) - (4*(x^3)) - (6*(x^2)) + 15;
graph = [graph; x y]

plot(x,y,'b-o', 'MarkerFaceColor','auto')
hold on

end

% graph =
% 
%     -3   150
%     -2    39
%     -1    14
%      0    15
%      1     6
%      2   -25
%      3   -66
%      4   -81
%      5   -10
%      6   231