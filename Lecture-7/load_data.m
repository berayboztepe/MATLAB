function Winddata = load_data
global filename filepath text5;

[filename, filepath] = uigetfile('*.txt');

set(text5, 'string', ['File: ', filename]);

% Here can be the data preprocessing of chosen file.
Winddata=importdata(filename);
end

