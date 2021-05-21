function plot_data

global Wspeed WindData Wdir AirTemp mean_wind  max_wind  std_dev position1 position2 position3 hist 

% f = figure( 'units', 'pixels',...
%             'position', [900 100 500 400],...
%             'menubar', 'none',...
%             'name','Data Plot Panel ',...
%             'numbertitle','off',...
%             'resize','off'); 
 
 avg = mean(Wspeed);
avg2 = mean(WindData.Speedms);
mean_wind = avg2; 
max_wind = max(WindData.Speedms);
std_dev = std(WindData.Speedms);
set(position1,'string',num2str(mean_wind));
set(position2,'string',num2str(std_dev));
set(position3,'string',num2str(max_wind));
% 	mean_wind = mean(WindData.Speedms);
    
        


% mean_wind_line = zeros(size(wind.Speed));
% mean_wind_line(:,1) = mean_wind;
% min_wind_line = zeros(size(wind.Speed));
% min_wind_line(:,1) = min_wind;
% 
% plot(wind.Day, wind.Speed,'b'); hold on;
% plot(wind.Day, mean_wind_line, 'r');
% plot(wind.Day, min_wind_line, 'm');
%    title('Wind Speed Graphic');grid on;   
%    xlabel('Days of Year');
%    ylabel('Wind speed (m/s)');
%    legend('speed','mean speed','min speed');
%    
% 
% hist = figure( 'units', 'pixels',...
%             'position', [200 200 700 400],...
%             'menubar', 'none',...
%             'name','Histogram panel ',...
%             'numbertitle','off',...
%             'resize','on');
%    histogram(wind.Speed)
%    title(' Wind Speed Graphic');	
%    xlabel('Days of Year');
%    ylabel('Wind speed (m/s)');
%    legend('speed','mean speed','min speed');

end

