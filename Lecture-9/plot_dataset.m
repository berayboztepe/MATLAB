function plot_dataset
% dataset which plots the chosen winddataset

global WindData

%% Plotting and showing the dataset

f1 = figure;
subplot(3,1,1);
plot(WindData.Speedms);
axis tight;
grid on;
xlabel("Samples");
ylabel("Wind Speed m/s");

subplot(3,1,2);
plot(WindData.WindDir);
axis tight;
grid on;
xlabel("Samples");
ylabel("Wind Direction *");

subplot(3,1,3);
plot(WindData.AirTempC);
axis tight;
grid on;
xlabel("Samples");
ylabel("Air Temperature C");

set(f1, 'Position', [100 300 560 420]);

f2 = figure; 
subplot(3,1,1);
histogram(WindData.Speedms);
axis tight;
grid on;

subplot(3,1,2);
histogram(WindData.WindDir);
axis tight;
grid on;

subplot(3,1,3);
histogram(WindData.AirTempC);
axis tight;
grid on;

set(f2, 'Position', [700 300 560 420]);
end

