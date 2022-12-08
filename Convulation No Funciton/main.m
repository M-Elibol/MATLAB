x=input('Lütfen x matrisini [a,b,c] biçiminde giriniz:     ');
h=input('Lütfen h matrisini [a,b,c] biçiminde giriniz:   ');
a=length(x);
b=length(h);
X=[x,zeros(1,b)];
H=[h,zeros(1,a)];
for i=1:b+a-1
    Y(i)=0;
    for j=1:a
        if(i-j+1>0)
            Y(i)=Y(i)+X(j)*H(i-j+1);
        else
        end
    end
end
fprintf("sonuç matris :")
disp(Y);
