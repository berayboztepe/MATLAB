%% anonymous function definition

sq = @(x) (x.^2);

x1 = [5 7 8 9];

sq(x1)

%% poly 1

ran = [-10 15];
poly1 = @(x) 4*x.^2 - 50*x + 5;
[xmin, ymin] = fminbnd(poly1, -10, 15);

%% plot and save the plot as png
figure;
fplot(poly1, ran);
axis tight;
grid on;

xlim([-10 15]);
ylim([-200 900]);

hold on;
plot(xmin, ymin, '^');
hold off;

legend('Function Plot', 'Minimum Point');

text(xmin-0.5, ymin+150, ['xmin = ', num2str(xmin)]);
text(xmin-0.5, ymin+100, ['ymin = ', num2str(ymin)]);

set(gcf, 'Position', [351 425 1243 700]);
exportgraphics(gcf, 'anonymous_funcitons.png');

%% Another anonymous function of multiple argument

sqrtsum = @(x,y) sqrt(x.^2 + y.^2);

sqrtsum(3, 4)

%% Plane anonymous function
A = 4; B = 5;

plane = @(x, y) (A*x + B*y);

plane(2,8)

%% calling one function in another

f = @(x) x.^3;
g = @(x) 5*sin(x);
h = @(x) g(f(x));

h(2)

%% nested functions (function handle)

f = parabola(4, -50, 5);

fminbnd(f, -10, 10)

%% reading data from xls file. readtable is faster.

tic
a = xlsread('');
toc

tic 
a = readtable('');
toc
