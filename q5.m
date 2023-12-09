#a
clc;
clear all;
close all;
pkg load image
a=imread('car2.jpeg');
b=rgb2gray(a);
subplot(2,2,1);
imshow(b);
title('Original Grayscale Image');
grid on; axis on;
subplot(2,2,3);
imhist(b);
title('Histogram of Original Grayscale Image');
grid on; axis on;
j=histeq(b);
subplot(2,2,2);
imshow(j);
title('Image after histogram equalization');
grid on; axis on;
subplot(2,2,4);
imhist(j);
title('Histogram of Image after histogram equalization');
grid on; axis on;

#b
pkg load image;
#function for histogram calculation 'histcalculate'
function f = histcalculate(x)
[n,m] = size(x)
freq = 1:256 #for greyscale image
count = 0
for i = 1:256
for j = 1:n
for k = 1:m
if x(j,k) == i-1
count = count + 1;
endif
endfor
endfor
freq(i) = count
count = 0
endfor
f = freq
end
#function to get new intensity values 'histequalize'
function f = histequalize(mat)
pdf = mat/sum(mat)
cdf = cumsum(pdf)
f_penult = cdf*255
f = round(f_penult)
end
#function to produce histogram equalized image
function newimg = equalizeimg(arr,x)
[n,m]=size(x)
newimg = x
for j = 1:n
for k = 1:m
newimg(j,k) = arr(1 + newimg(j,k));
endfor
endfor
end
#driver code
a = imread('C:\Users\karan\DIP Work\Karan_02\tiger.jpeg');
x = histcalculate(a); #calling function to create histogram
y = histequalize(x); #calling function to get new intensity values
b = equalizeimg(y,a); #calling function to get histogram equlized image
n = 0:255;
subplot(2,2,1);
imshow(a);
title('Original Image');
grid on; axis on;
subplot(2,2,2);
imshow(b);
title('Histogram Equalized Image');
grid on; axis on;
subplot(2,2,3);
stem(n,x);
xlabel('Frequency');
ylabel('Intensity Vals');
title('Histogram of Image');
grid on; axis on;
subplot(2,2,4);
stem(y,x);
xlabel('Frequency');
ylabel('Intensity Vals');
title('Equalized Histogram');
grid on; axis on;
