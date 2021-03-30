%% Operations with complex numbers

x = -3 + 4i;
y = 6 - 8i;

mag_x = abs(x);
mag_y = abs(y);
mag_product = abs(x*y);

angle_x = angle(x);
angle_y = angle(y);
sum_angles = angle_x + angle_y;
angle_product = angle(x*y);

%% Operations on arrays

x = [5, 7, 15];
y = sqrt(x);


% Expression Function Arguments

% when we calculate power of array elements, we need to use .
% otherwise we get an error.

y2 = x.^2;
y3 = y.^y2;
y4 = (sin(x)).^2;

% matlab calculates the trigonometric functions in radian mode
% so we need to convert radian to degree, if we want to calculate degree

sin(2)
sin(x(2))

%% defining variables for function
position = [400 250 1150 615];



