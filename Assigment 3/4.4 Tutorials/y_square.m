%Clear Variables
clear;

%Wave generation Loop

for i = 1:1001

    %Create Sine Wave

    x(i) = (i-1)*(4*pi/1000);
    ysin(i)= sin(x(i));

    %Create Square Wave

    if ysin(i) > 0
        ysquare(i) = 1;

    elseif ysin(i) < 0
        ysquare(i) = -1;

    else
        ysquare(i) = 0;
        
    end

end

    %Plot data

    plot(x,ysin,'LineWidth',2);

    hold on;
    plot(x,ysquare,'r','LineWidth',2);

    axis([0 max(x) -1.2 1.2]);
    grid on



