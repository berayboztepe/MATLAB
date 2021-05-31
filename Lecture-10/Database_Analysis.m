%% Database data analysis -- import the data
%clear all; 

%global data
%data = readtable("data.csv");

%% check the number of measurements for single patient-id

patients = table;

% countcats = counting the categories in a particular table
% check how many different id's in the table
np = countcats(data.patient_id);

% 42 different id's there are in the database
summary(data)  

patients.id = categories(data.patient_id);
patients.measnumber = countcats(data.patient_id);
        
%% present the measurement number in the table
fig = uifigure('Position', [550 100 750 550]);
fig.Name = 'WindData Measurements';
uit = uitable('Parent', fig, 'Position', [25 50 700 450]);
uit.Data = patients;
uit.RowName = 'numbered';
uit.ColumnSortable = true;

% for clicking the rows
uit.CellSelectionCallback = @plotPatientMeasurements;

%% inline plotPatientMeasurements function
% define the below function to plot the columns: 
% gsr_s0, ibi_s0 and tmp_s0, as a function of bend_ts
% after clicking on the patient_id in the uifigure

function patient_meas = plotPatientMeasurements(src, eventdata)

% i assign the data again because otherwise, data seems null in this func.
global data text5 patient_meas fig
data = readtable("data.csv");

% this is for finding the patientid that was clicked by us
% indices holds the number of the row that was clicked
% patientid holds the patient_id value that was clicked.
indices = eventdata.Indices(1);
patientid = src.Data.id{indices, :};

% now i am comparing the real patient id with the clicked one.
% idx holds if the clicked patient_id equals to another row's patient_id or
% not. If so, that row equals to 1.

% patient_meas holds the rows that equals to 1 in idx table.
idx = strcmp(patientid, data.patient_id);
patient_meas = data(idx, :);


% now i create a figure. In the top of the figure, clicked patient_id and
% how many of this patient_id are in this data is written.
fig = figure
subplot(3,1,1)
t = title(['Patient ID: ', char(patient_meas.patient_id(1)), newline,...
    'Measurement Number: ', num2str(sum(idx))]);
set(t);

set(text5,'string',['Selected Patient_id: ',char(patient_meas.patient_id(1))]);

% i am plotting the first plot. It is gsr_s0 as a function of band_ts.
% first i tried with hold on and hold off instead of yyaxis left and right
% but the plot did not show as I want and I managed to plot it correctly
% with using yyaxis.
yyaxis left;
plot(patient_meas.band_ts, patient_meas.hours);
ylabel('Hours to Ovulation');
yyaxis right;
plot(patient_meas.band_ts, patient_meas.nanmean_gsr_s0);
legend('Hours to Ovulation', 'GSR S0', 'Location', 'best');
grid on;
axis tight;


% this is the second plot. It is ibi_s0 as a function of band_ts.
subplot(3,1,2)
yyaxis left;
plot(patient_meas.band_ts, patient_meas.hours);
ylabel('Hours to Ovulation');
yyaxis right;
plot(patient_meas.band_ts, patient_meas.nanmean_ibi_s0);
legend('Hours to Ovulation', 'IBI S0', 'Location', 'best');
grid on;
axis tight;

% and the last one. It is tmp_s0 as a function of band_ts.
subplot(3,1,3)
yyaxis left;
plot(patient_meas.band_ts, patient_meas.hours);
ylabel('Hours to Ovulation');
xlabel('Band TS');
yyaxis right;
plot(patient_meas.band_ts, patient_meas.nanmean_tmp_s0);
legend('Hours to Ovulation', 'TMP S0', 'Location', 'best');
grid on;
axis tight;

set(fig);
end