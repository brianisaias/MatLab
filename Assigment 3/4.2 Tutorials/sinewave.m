%Clear out workspace
clear %Clear when working with new variables



%Generate the vetors to be plotted:
for i = 1:1001
    x(i)=(i-1)*((2*pi)/1000)
    y(i)=(sin(x(i)))
end

plot(x,y,'LineWidth',2)
grid on