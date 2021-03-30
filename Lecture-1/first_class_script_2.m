%% variable definitions 

a = 1; % definition of single values
b = 1 % if we do not use ; we get the information in command window
c = [1, 2, 3, 4]; % definition of vectors and its elements 
d = [5 6 7 8];

e = [10 11 12 13; 14 15 16 17];

f = [4, 5, 6, 7; 8, 9, 10, 11;12, 13, 14, 15];

g = [c;d];
h = [c,d];

l = e(:, 2);
m = e(2, :);

x=size(e);

number_of_rows = x(1,1);
number_of_columns = x(1,2);

% to write numbers while they are in string form, we can use num2str
disp(['Variable := e, Number of rows = ', num2str(number_of_rows),...
    ' Number of columns = ', num2str(number_of_columns)]);

%% Second cell - Matrix Manupilations
% matrix of zeros. 5 rows, 5 columns 
z = zeros(5,5);

% matrix of ones. 5 to 5
o = ones(5, 5);

% matrix of unit
z1 = eye(5,5);

% transpose matrix
z2 = zeros(1, 10);
z2 = z2';

% create a matrix that has the same values all the time
z3 = magic(5);

% matrix inversion
z3 = inv(z3);
% or
z4 = magic(5);
z4 = z4^(-1);