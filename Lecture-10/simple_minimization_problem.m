%% clean up

clear; close all;


%% function to minimize

fcontour(@(x, y) 9*(x-0.2).^4 + 36*(y+1.7).^4 - 5.3', [-3 3 -3 3]); % way of showing the plot
xlabel("x");
ylabel("y");
axis equal
title("Contours of f");
hold on;

% when we are trying to minimize, we find a subject point
fimplicit(@(x,y) x.^2 + (y + 1.5).^2 - 2.25, "-r", "LineWidth",2);

% that rectangle which was inside the circle is out minimum value of
% particular calculation

%%  defining the optimization problem

p = optimproblem;

% now we see that sense is minimize and there is not any problem defined.

p.Description = "Simple NonLinear";

%% we want to create optimization variable

x = optimvar("x", "LowerBound", -3, "UpperBound",3);

y = optimvar("y", "LowerBound", -3, "UpperBound", 3);

%% Define Objective (optim problem)

p.ObjectiveSense = "Minimize";

p.Objective = 9*(x-0.2).^4 + 36*(y+1.7).^4 - 5.3; 

%% Define Constrains

p.Constraints.circle = x.^2 + (y+1.5).^2 <= 2.25;

%% showing information about p

show(p);

%% definition of starting points

initialPt.x = -0.5;
initialPt.y = -0.5;

%% solve the problem

[sol, fval, exitflag, output] = solve(p, initialPt);

%% plot the solution on the figure and inform user about values of 
% x = y and values of objective function

hold on
plot(sol.x, sol.y,'r*'); 
text(sol.x, sol.y+0.5,[num2str(sol.x), ',', num2str(sol.y)]);
hold off