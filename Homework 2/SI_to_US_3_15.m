%SI to US converter
% a) Centemeters to inches
cm = input('Enter the length in cm');
inches = cm / 2.54; % Convert centimeters to inches
% b) Celcius to Fareheight
celsius = input('Enter the temperature in Celsius: ');
fahrenheit = (celsius * 9/5) + 32;
% c) Newtons to pounds
newtons = input('Enter the force in Newtons: ');
pounds = newtons * 0.224809;
% d) Meters per second to miles per hour
metersPerSecond = input('Enter the speed in meters per second: ');
milesPerHour = metersPerSecond * 2.23694;
% e) Kilograms to slugs
kilograms = input('Enter the mass in kilograms: ');
slugs = kilograms * 0.0685218;
% Display the converted values
fprintf('Inches: %.2f\n', inches);
fprintf('Fahrenheit: %.2f\n', fahrenheit);
fprintf('Pounds: %.2f\n', pounds);
fprintf('Miles per hour: %.2f\n', milesPerHour);
fprintf('Slugs: %.2f\n', slugs);

%reference: Materials and Energy Banlance I textbook
