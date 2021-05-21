function choose_years()

clear

global text5 Wspeed Wdir AirTemp WindData

list = {'Wind Data 2006','Wind Data 2007','Wind Data 2008','Wind Data 2009'...
    ,'Wind Data 2010'};    
[indx,~] = listdlg('ListString',list);


switch indx
      case 1
          WindData = importfile2('Wind_Data_2006.txt');
      case 2
          WindData = importfile2('Wind_Data_2007.txt');
      case 3
          WindData = importfile2('Wind_Data_2008.txt');
      case 4
          WindData = importfile2('Wind_Data_2009.txt');
      case 5
          WindData = importfile2('Wind_Data_2010.txt');   
end
 
% Wspeed = WindData.Speedms;
% Wdir = WindData.WindDir;
% AirTemp = WindData.AirTempC;


filename = list{indx};

set(text5,'string',['DataSet: ',filename]);
% Wspeed = WindData.Speedms;

%%
% d = dir;
% fn = {d.name};
% 
% [indx,tf] = listdlg('PromptString',{'Select a file.',...
%     'Only one file can be selected at a time.',''},...
%     'SelectionMode','single','ListString',fn);

% choice = menu('Choose Data',...
%                 'Wind Data 2006',...
%                 'Wind Data 2007',...
%                 'Wind Data 2008',...
%                 'Wind Data 2009',...
%                 'Wind Data 2010');
% 
end

