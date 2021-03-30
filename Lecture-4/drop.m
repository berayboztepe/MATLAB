%% Getting the date of today's
function [dist, vel] = drop(g, v0, t)
    % computed the distance travelled ant the
    % velocity of a dropped object
    % as functions of g (earth acceleration m/s^2),
    % the initial velocity v0, and the time t
    vel = g*t + v0;
    dist = 0.5*g*t.^2 + v0*t;
    
end

