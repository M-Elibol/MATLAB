[data,fs]= audioread("noisyspeech.wav");
M=input("filtre uzunlugunu giriniz:  ");
ek=zeros((M-1),1);
newdata=[data;ek];
t=(1/fs:1/fs:length(data)/fs);
output=zeros(length(data),1);
dongu=zeros(M,1);
g=0;
deger=length(data);
for  i = 1:deger
g=i;
N=1;
for u=1:M    
dongu(N)=newdata(g) ;
g=g+1;
N=N+1;
end
T = median(dongu);
dongu=zeros(M,1);
output(i)=T;
end
sound(output,fs)
figure
plot(t,output)
