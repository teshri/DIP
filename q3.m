#a and b
clc;
clear all;
close all;
pkg load image;
img1 = imread('boy.jpeg');
img2 = imread('ufo.jpeg');
subplot(2,2,1);
imshow(img1);
title('Original 1');
grid on; axis on;
subplot(2,2,2);
imshow(img2);
title('Original 2');
grid on; axis on;
#a add two images
imres1 = imresize(img1, [200,400]);
imres2 = imresize(img2, [200,400]);
addim = imadd(imres1,imres2);
subplot(2,2,3);
imshow(addim);
title('ADD OPERATION');
grid on; axis on;
#b subtraction two images
subim = imsubtract(imres1, imres2);
subplot(2,2,4);
imshow(subim);
title('SUBTRACTION OPERATION');
grid on; axis on;


#c mean
image_double = double(img1);
Mean = mean(img1(:));
disp(['Mean value of the Image: ',num2str(Mean)]);

