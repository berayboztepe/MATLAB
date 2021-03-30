clc 
clear

%% importing the data
load('wind_data_v2.mat');

%% simple visualization of wind speed in Poland

plot(wind_data.Speedms);
ylabel('Wind speed m/s');
xlabel('Samples interval - 10 minutes');
title('Wind speed in Poland 2006-2015');
% we can change location like that
legend('Wind speed m/s', 'Location','northwest'); 

grid on; % gives the squares to the background
axis tight; % make the axis more focused

