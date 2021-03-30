%% Beginning of the first script - checking the installation of matlab
clc % clearing the screen
clear % clearing all the variables inside the workspace
ver % checking the matlab version

%% cell 2 - checking the actual folder
pwd % storing the working folder info in

working_folder = pwd; % set the variable as pwd result

disp(working_folder) % show the actual pwd but there is no more info 

clc

disp(['Actual folder is = ', working_folder]); % adding more spesific info


