clear all;
clc;
close all;
pkg load image
% Read the input image
inputImage = imread('tiger.jpeg');
% Convert the image to grayscale
grayImage = rgb2gray(inputImage);
subplot(2, 2, 1);
imshow(grayImage);
grid on; axis on;
title('Original Image');
% Apply different edge detection masks
sobelEdge = edge(grayImage, 'sobel');
subplot(2, 2, 2);
imshow(sobelEdge);
axis on; grid on;
title('Sobel Edge Detection');
prewittEdge = edge(grayImage, 'prewitt');
subplot(2, 2, 3);
imshow(prewittEdge);
axis on; grid on;
title('Prewitt Edge Detection');
robertsEdge = edge(grayImage, 'roberts');
subplot(2, 2, 4);
imshow(robertsEdge);
title('Roberts Edge Detection');
grid on; axis on;
