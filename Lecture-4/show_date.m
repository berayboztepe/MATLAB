%% Getting the date of today's
function show_date
    clear 
    clc
    %disp(['Today is ', date]);
    [~, DayName] = weekday(date);
    disp(['Today is ', date, ' (', DayName, ')']);
end

