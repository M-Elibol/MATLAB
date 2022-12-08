[data,fs]= audioread("ses_musab_elibol.mp3");
[data2,fs2]= audioread("ses_arda_turan.mp3");
[data3,fs3]= audioread("ses_semih_senturk.mp3");
ek1=zeros((length(data3)-length(data)),2);
ek2=zeros((length(data3)-length(data2)),2);
newdata=[data;ek1];
newdata2=[data2;ek2];
topdata=newdata+newdata2+data3;
tt=(1/fs:1/fs:length(topdata)/fs);
figure
plot(tt,topdata)
sound(topdata,fs);
filename="top_ses.wav";
audiowrite(filename,topdata,fs)
