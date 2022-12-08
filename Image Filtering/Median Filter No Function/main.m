img=imread ('resim 1.jpg');
I=rgb2gray(img);
data = im2double(I)
M=input("filtre uzunlugunu giriniz:  ");
ek=zeros((M-1),width(data));
newdata=[data;ek];
output=zeros(length(data),width(data));
dongu=zeros(M,1);
for p=1 : (width(newdata))
for  i = 1:(length(data))
    g=i;
    N=1;
    for u=1:M    
    dongu(N)=newdata(g,p) ;
    g=g+1;
    N=N+1;
    end
    T = median(dongu);
    dongu=zeros(M,1);
output(i,p)=T;
end
end
figure 
imshow(img);
figure
imshow(output);
