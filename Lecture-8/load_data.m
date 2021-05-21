function load_data 
 
global filename filepath text5 Wspeed Wdir AirTemp WindData

[filename, filepath]= uigetfile('*.txt');
 
%  set(text5,'string',['File: ',filepath,filename]);
% set(text5,'string',['File: ',filepath,'/',filename]);
set(text5,'string',['File: ',filename]);

 % --- Here can be the code for data processing of choosen file
 WindData = importfile2(filename);
 
Wspeed = WindData.Speedms;
Wdir = WindData.WindDir;
AirTemp = WindData.AirTempC;

 
 % --- after processing You can put and show the values on the main_program
 % window
 
end