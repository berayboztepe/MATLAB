function show_table

global WindData

fig = uifigure('Position', [195 150 750 550]);
fig.Name = 'WindData Measurements';

uit = uitable('Parent', fig, 'Position', [25 50 700 450]);
uit.Data = WindData;

uit.RowName = 'numbered';
uit.ColumnSortable = true;
end

