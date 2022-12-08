[data,fs]= audioread("noisyspeech.wav");
output=zeros(length(data),1);
M=input("filtre uzunlugunu giriniz:  ");
ek=zeros((M-1),1);
newdata=[data;ek];
t=(1/fs:1/fs:length(data)/fs);
x=1;
sayac2=1;
z=0;
a=0.33;
deger=length(newdata)-(M);
for  i = 1:deger
    x=i;
    for u=1:M
        y=newdata(x);
        y=y.*a^(u-1);
        x=x+1;
        z=z+y;
    end
    output(sayac2)= z/M; 
    sayac2=sayac2+1;
   z=0;
end
figure
plot(t,output)
