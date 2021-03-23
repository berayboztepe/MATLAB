clc 
clear
close all; %closing all the figures

%% specifying particular range of scope and position
range = [2.02e5 2.05e5];
position = [400 225 1150 615];
range_vector = range(1):range(2);
text_position = mean(range);
%% importing the data
load('wind_data_v2.mat');

%% simple visualization of wind speed in Poland

figure
plot(wind_data.Speedms);
ylabel('Wind speed m/s');
xlabel('Samples interval - 10 minutes');
title('Wind speed in Poland 2006-2015');
% we can change location like that
 

grid on; % gives the squares to the background
axis tight; % make the axis more focused

%to set limits. let's specify the plot 
%and let's add some text

ylim([0 15]);
%xlim([2e5 2.1e5]);
xlim(range);
speed_max = max(wind_data.Speedms(range_vector));
text(text_position, speed_max, ['Exact Speed is: ', num2str(wind_data.WindDir(text_position)), ' m/s']);

hold on % first we need to hold plot to block doing smt
plot(text_position, wind_data.Speedms(text_position), 'r^');
hold off

legend('Wind speed m/s', 'Exact Wind Speed', 'Location','northwest');
set(gcf, 'Position', position);

%% visualize the temparature

figure %for showing different plots
plot(wind_data.AirTempC);
ylabel('AirTemparature C \circ');% to spesify the symbol we can use(\circ or \lambda etc.)
xlabel('Samples interval - 10 minutes');
title('Air Temperature in Poland 2006-2015');


grid on;
axis tight;

%xlim([2e5 2.05e5]);
xlim(range);
temperature_max = max(wind_data.AirTempC(range_vector));
text(text_position, temperature_max, ['Exact Temparature is: ', num2str(wind_data.WindDir(text_position)), ' C \circ']);

hold on 
plot(text_position, wind_data.AirTempC(text_position), 'r^');
hold off

legend('Air Temperature C \circ', 'Exact Temparature', 'Location','southeast');hold off
set(gcf, 'Position', position);

%% set position
%if we want to do smt about a particular figure


%gcf 
%it shows some infos about the last figure and also we have ans file to set some changes!



%for example we can to change the position of plot:


%set(gcf, 'Position', [500 1 628 400]);


%% visualize the wind direction

figure 
plot(wind_data.WindDir);
ylabel('WindDirection');% to spesify the symbol we can use(\circ or \lambda etc.)
xlabel('Samples interval - 10 minutes');
title('Wind Direction in Poland 2006-2015');

grid on;
axis tight;

%xlim([2.03e5 2.05e5]);
xlim(range);
direction_max = max(wind_data.WindDir(range_vector));
text(text_position, direction_max, ['Exact Direction is: ', num2str(wind_data.WindDir(2.034e5))]);

% if we want to add something to particular place

hold on % first we need to hold plot to block doing smt
plot(text_position, wind_data.WindDir(text_position), 'r^');
hold off

legend('Wind Direction degrees', 'Exact Wind Place', 'Location','southeast');
set(gcf, 'Position', position);



