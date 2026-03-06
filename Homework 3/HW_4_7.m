 % this program asks the user for a monthly payment amout
 % of P=1000 at 0.5 % interest and it will return how many
 % years it will take per amount input by the user

 P = 1000; % Principle

 monthlyPayment = input('Enter the monthly payment amount: ');

 interestRate = 0.005; % Monthly interest rate
months = 0; % Initialize month counter

while P > 0
    interest = P * interestRate; % Calculate interest for the month
    P = P + interest - monthlyPayment; % Update principal
    months = months + 1; % Increment month counter
end

months % displays months it takes

% HW_4_7
% Enter the monthly payment amount: 100
% 
% months =
% 
%     11
% 
% HW_4_7
% Enter the monthly payment amount: 50
% 
% months =
% 
%     22
% 
% HW_4_7
% Enter the monthly payment amount: 10
% 
% months =
% 
%    139

% If you pay less than 5 dollar per month you wouldn't cover that
% months interest

