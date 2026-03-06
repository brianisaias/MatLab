function AP=area_perim(Dimensions)
% This function computes area and perimeter
% for a rectangle defined by base and height.
% The output variable takes the form:
% [area, perimeter]

%Compute area
AP(1)=Dimensions(1)*Dimensions(2);
%Compute perimeter
AP(2)=(2*Dimensions(1))+(2*Dimensions(2));