function [dist, vel] = drop_v2()
vel = g*t1 + v0;
dist = 0.5*g*t1.^2 + v0*t1;


figure
plot(t1, dist, t1, vel);
axis tight;
grid on;
legend('distance (m)', 'velocity (m/s)');
xlabel('time');
xlim([0, 4]);
end

