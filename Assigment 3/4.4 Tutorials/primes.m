
% Routine to find all prime numbers less than or equal to N
% Use sieve of Eratosthenes
% Clear memory
clear

N = input('Enter upper limit of numbers to be checked: ');
tic
A = zeros(1, N); % Initialize array A with zeros
% Initialize np. the number of prime numbers
np = 0;

% Create an array A of intergers from 1 to n
% A(1) - 0, since 1 is not a prime

for n = 2:N
    A(n) = n;
end

% Beginning with 2. find the lowest non-zero value of A
% Set all multiples of this value equal to zero in the array

for k = 2:N
    if A(k) ~= 0
        np = np + 1;
        P(np)= k;
        m = k;
        while (k+m) <= N
            m = m + k; % Move to the next multiple
            A(m) = 0; % Set all multiples of k to zero
            
        end
    end
end
m = 0;
% Print out the list of prime numbers 
% and the numbers of primes found
P;

toc
np

% P =
% 
%      2     3     5     7    11    13    17    19    23
% 
% 
% np =
% 
%      9
