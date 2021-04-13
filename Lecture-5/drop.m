function [dist, vel] = drop(g, v0, t)
vel = g*t + v0;
dist = 0.5*g*t.^2 + v0*t;


figure
plot(t, dist, t, vel);
axis tight;
grid on;
legend('distance (m)', 'velocity (m/s)');
xlabel('time');
xlim([0, 4]);
end

