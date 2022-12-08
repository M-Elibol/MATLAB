img=imread ('resim 1.jpg');
I=rgb2gray(img);
data = im2double(I);
output=zeros(length(data),width(data));
M=input("filtre uzunlugunu giriniz:  ");
ek=zeros((M-1),width(data));
newdata=[data;ek];
x=1;
sayac2=1;
z=0;
a=0.33;
deger=length(newdata)-(M-1);
for p=1 : width(data)
for  i = 1:deger
    x=i;
    for u=1:M
        y=newdata(x,p);
        y=y*a^(u-1);
        x=x+1;
        z=z+y;
    end
    output(sayac2)= z/3; 
    sayac2=sayac2+1;
   z=0;
end
end
figure 
imshow(img);
figure 
imshow(output);
