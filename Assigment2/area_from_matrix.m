%Define the base/height array
Dims=[6.5 2.1; 7.2 3; 7.5 3.3];
%Compute area and perimeter of Rectangle 1,
% and store them in the first row of Props
Props(1,:)=area_perim(Dims(1,:));
%Repeat for Rectangle 2, and store in the second row
Props(2,:)=area_perim(Dims(2,:));
%Repeat for Rectangle 3
Props(3,:)=area_perim(Dims(3,:));
%Output result
Props
