function main
% function main runs the simple Graphical User Interface - simple
% application
global filename filepath text5;
%  There are no input and output arguments
    clc;
    disp(datestr(now));
    close all;
%% Creating simple GUI -- definition of start window application
f = figure('units', 'pixels', ...
           'position', [600 250 650 450], ...
           'menubar', 'none', ...
           'name', 'Wind Data Application - simple weather analysis',...
           'numbertitle', 'off', ...
           'resize', 'off');
%% Creating Application Menu
menu = uimenu('Parent',f,'Label','File');
       uimenu(menu,'label','Load','Callback', 'Winddata=load_data; clear ans;');
       uimenu(menu,'label', 'Save', 'Callback','uisave;');
       uimenu(menu, 'label', 'Exit','Callback','close all;clear;clc;');
       
    %function loadFile
        %file = uigetfile('*.txt');
%end
%% presenting the info about chosen file
text5 = uicontrol('parent',f,...
        'position', [0 0 600 30], ...
        'style', 'text', ...
        'string', 'File: ');
end

