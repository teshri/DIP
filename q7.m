clc;
clear all;
close all;
load pkg image;
a = imread('tiger.jpeg');
subplot(3,2,1);
imshow(a);
title("Original image");
grid on; axis on;
a_img_noise= imnoise(a,'salt & pepper',0.02);
subplot(3,2,3);
imshow(a_img_noise);
title("Image Affected By SALT AND PEPPER NOISE");
grid on; axis on;
img_gaussian_noise = imnoise(a,'gaussian');
subplot(3,2,4);
imshow(img_gaussian_noise);
title("Image affected By GAUSSIAN NOISE");
grid on; axis on;
mefil=ones(3,3)/9;
img_restoration = imfilter(a_img_noise,mefil)
subplot(3,2,2);
imshow(img_restoration);
title("Image restoration using MEAN FILTER");
grid on; axis on;
mefilf=ones(3,3)/9;
img_gaussian_noise_removed = imfilter(img_gaussian_noise,mefilf)

subplot(3,2,5);
imshow(img_gaussian_noise_removed);
title('Applying MEDIAN FILTER');
grid on; axis on;
modifyJ=zeros(size(a_img_noise)+2);
B = zeros(size(a_img_noise));
for x=1:size(a_img_noise,1)
for y=1:size(a_img_noise,2)
modifyJ(x+1,y+1)=a_img_noise(x,y);
end
end
for i= 1:size(modifyJ,1)-2
for j=1:size(modifyJ,2)-2
window=zeros(9,1);
inc=1;
for x=1:3
for y=1:3
window(inc)=modifyJ(i+x-1,j+y-1);
inc=inc+1;
end
end
med=sort(window);
B(i,j)=med(5);
end
end
kv

