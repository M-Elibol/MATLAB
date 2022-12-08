[data,fs]= audioread("ses_musab_elibol.mp3");
[data2,fs2]= audioread("ses_arda_turan.mp3");
[data3,fs3]= audioread("ses_semih_senturk.mp3");
t1=(1/fs:1/fs:length(data)/fs); 
figure
plot(t1,data)
t2=(1/fs:1/fs:length(data2)/fs);
figure
plot(t2,data2)
t3=(1/fs:1/fs:length(data3)/fs);
figure
plot(t3,data3)
