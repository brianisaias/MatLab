
% a) for m = 1:5
%       A = A+1;
% end

% the error is that A is not yet defined.
% this means A has no inital value to even add 1 to.

% b)  for i = 0:3
%     A(i) = i+2;
% end
% the error is that A(i) cannot start at 0 

%c) for k = 1:10
%     A(i)=k;
% end

% the error is that i is not initalized or 
% given a value in this loop

% d) A = 4; 
% while A < 10
% A = A + 1;
% if A > 5;
%     A = 5;
% end
% end

% the error is that A is already set to equal 4 so
% it wont hit other conditions and just loop

%e) for m = 1:1000
%     j = m/10
%     A(j) = m
% end

% the error is that the first iteration will set the m equal
% to a value less than the the ones in the loop so it wont loop again