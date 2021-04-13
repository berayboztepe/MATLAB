%% set variables
% we set them as global. so even if the func is without parameters,
% we still can use these variables.
global g v0 t1
g = 9.81;
v0 = 0.0;
t = 5;
t1 = 0:0.1:10;

%% call drop
[dist, vel] = drop(g, v0, t1);

%% call drop_v2 which has not any parameters
[dist, vel] = drop_v2();

%% call f1 with @ (function handle)
fplot(@f1,[-1,4]);
axis tight;
grid on;

%% finding zero. at which point, our functions gets 0
x_g = 0; % zero initial guess
x0 = fzero(@f1,x_g); % answer is -0.5831
y0 = f1(x0); % y = 0 at the point of x0

xi = fzero(@f1, 3);
yi = f1(xi);

%% adding a triangle to x0, y0
hold on % with this command, we can hold the old plot. 
plot(x0, y0, 'r^', xi, yi, 'r^');
hold off % So that the plot is not changing. 
%We are doing some adjustments to the old plot

%% function minimization using function handle
[x2, y2] = fminbnd(@f1, -1,4);
hold on
plot(x2, y2, '*');
hold off
legend('function','Zero-cross-1', 'Zero-cross-2', 'show the minimum');

%% minimization of f2 
[x_f2, y_f2] = fminbnd(@f2, 0, 5);

%% plotting f3
figure
fplot(@f3,[-1 4]);
axis tight;
grid on;
ylim([-0.5,4]);

hold on
[xmin,ymin] = fminsearch(@f3,3); 
plot(xmin, ymin, '*');

[xmin,ymin] = fminsearch(@f3,0.01); 
plot(xmin, ymin, '*');
hold off
legend('function','local minimum', 'global minimum');
% with ctrl+shift+click, we can add information about the value 
% from a spesific point

%% plotting 2D function
y = f4([1 2]);
xmin = fminsearch(@f4,[0,0])

ymin = f4(xmin);

%% another function definition example

fun1 = 'x.^2-4';
fun1_inline = inline(fun1);
[x, value] = fzero(fun1_inline, [0 3]);

%% or
[x1, value1] = fzero('x.^2', [0 3]);

%% anonymous function
sq = @(x) x.^2;
sq1 = sq([5 7]);