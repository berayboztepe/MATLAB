function main
%function main runs the simple Graphical User Interface - simple application
%   There are no input and output arguments

global filename filepath text5 Wspeed Wdir AirTemp

clc;
    disp(datestr(now));
    close all;
   
%% creating simple GUI --- definition of start window application

f = figure( 'units', 'pixels',...
            'position', [600 250 650 450],... 
            'menubar', 'none',...
            'name','Wind Data Application - simple weather analysis',...
            'numbertitle','off',...
            'resize','off');

%% creating application menu

menu = uimenu('Parent',f,'Label','File'); 
        uimenu(menu,'label','Load','Callback','load_data; clear ans;');
%         uimenu(menu,'label','Load','Callback',@loadFile);
        uimenu(menu,'label','Save','Callback','uisave;');
        uimenu(menu,'label','Exit','Callback','close all;clear;clc;'); % Method of putting exact string as commands or functions   
        
%% creating buttons - choose year
button1 = uicontrol('parent',f,...
    'position',[10 50 180 30],...
    'string','Chose Year / Load Data',...
    'callback','choose_years;');      

%% plotting statistics
    
button2 = uicontrol('parent',f,...
    'position',[200 50 180 30],...
    'string','Plot Statistics',...
    'callback','plot_data;');


%% presenting the info about chosen file
text5 =uicontrol('parent',f,...
    'position',[10 10 150 30],...
    'style','text',...
    'string','File:');



end

