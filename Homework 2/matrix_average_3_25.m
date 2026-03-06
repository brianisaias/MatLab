% this will let the user initialize a matrix and 
% calculate each rows average
matrix = input('Enter a matrix: ');
averages = [0;0;0;0];
averages(1) = (matrix(1,1) + matrix(1,2) + matrix(1,3) + matrix(1,4)) / 4;

% Row 2
averages(2) = (matrix(2,1) + matrix(2,2) + matrix(2,3) + matrix(2,4)) / 4;

% Row 3
averages(3) = (matrix(3,1) + matrix(3,2) + matrix(3,3) + matrix(3,4)) / 4;

% Row 4
averages(4) = (matrix(4,1) + matrix(4,2) + matrix(4,3) + matrix(4,4)) / 4;

%Displays averages
averages
