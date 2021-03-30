%% definition of initial values and call a function

clc 
clear

g = 9.81;
v0 = 0.0;
t = 5;
t1 = 0:15;

[dist, vel] = drop(g, v0, t1);

%% to plot it

figure
plot(t1, dist, t1, vel);
axis tight;
grid on;
legend('distance (m)', 'velocity (m/s)');
xlabel('time');