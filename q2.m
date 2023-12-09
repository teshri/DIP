#a
clear all;
pkg load image;
%Original IMAGE%
img = imread('NewCar.jpg');
subplot(2,1,1);
imshow(img);
title('ORIGINAL Image');
grid on;axis on;
%Displaying Negative image%
img_neg = 255-img;
subplot(2,1,2);
imshow(img_neg);
title('Display Negative IMAGE');
grid on; axis on;




#b
clear all;
pkg load image;
% Load the image & displaying it%
img = imread('NewCar.jpeg');
subplot(3,1,1);
imshow(img);
title('ORIGINAL Image');
grid on; axis on;
% Flip the image vertically & displaying it%
flipped_vertical = flipud(img);
subplot(3,1,2);
imshow(flipped_vertical);
title('Flipped VERTICALLY');
grid on; axis on;
% Flip the image horizontally & displaying it%
flipped_horizontal = fliplr(img);
subplot(3,1,3);
imshow(flipped_horizontal);
title('Flipped HORIZONTALLY');
grid on; axis on;



#c
clear all;
pkg load image;
%Displaying original image%
img = imread('car2.jpeg');
subplot(2,2,1);
imshow(img);
title('ORIGINAL Image');
grid on; axis on;
%convert into gray scale image%
gray_image = rgb2gray(img);
%Thresholding%
threshold_value = 50;
binary_image = im2bw(gray_image, 0.6); % Scale to [0, 1] range
subplot(2, 2, 2);
imshow(binary_image);
title('Binary Thresholded Image scale at 0.6');
imwrite(binary_image, 'thresholded_image.jpeg');
grid on; axis on;

gray_image2 = rgb2gray(img);
threshold_value = 80;
binary_image2 = im2bw(gray_image2, 0.2);
subplot(2,2,3);
imshow(binary_image2);
title('Binary Thresholded Image scale at 0.2');
imwrite(binary_image2, 'thresholded_image.jpeg');
grid on; axis on;
threshold_value = 100;
binary_image3 = im2bw(gray_image2, 0.4);
subplot(2,2,4);
imshow(binary_image3);
title('Binary Thresholded Image scale at 0.4');
imwrite(binary_image3, 'thresholded_image.jpeg');
grid on; axis on;




#d
clear all;
pkg load image;
%Load and display original Image%
a = imread('NewCar.jpg');
c=rgb2gray(a);
subplot(2,1,1);
imshow(c);
title('Original IMAGE');
grid on; axis on;
%Contrast stretched the original image%
b = imadjust(c,[0.2 0.6],[]);
subplot(2,1,2);
imshow(b);
title('Contrast STRETCHED IMAGE');
grid on; axis on;
