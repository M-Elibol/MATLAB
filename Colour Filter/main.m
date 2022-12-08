img=imread("resim 2.jpg");
imshow(img)
red=img(:,:,1); green=img(:,:,2); blue=img(:,:,3);
out= red>140 & red<185 & green>180 & green<225 & blue>215;
% d=impixel(img) komutunu kullanarak nehir olan yerleri işaretledim ve
% değerlere baktım. Bu değerleri kullanrak üstteki değer aralıklarını
% çıkarttım.
out=uint8(out);
out2=cat(3,out,out,out);
out3=out2.*img;
imshow(out3);
