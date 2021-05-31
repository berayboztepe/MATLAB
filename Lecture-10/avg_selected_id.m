%% set edit positions as the mean of band_ts, gsr_s0, ibi_s0 and tmp_s0

global position1 position2 position3 position4 patient_meas

set(position1,'string',num2str(mean(patient_meas.band_ts)));
set(position2,'string',num2str(mean(patient_meas.nanmean_gsr_s0)));
set(position3,'string',num2str(mean(patient_meas.nanmean_ibi_s0)));
set(position4,'string',num2str(mean(patient_meas.nanmean_tmp_s0)));