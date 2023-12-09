clc;
close all;
clear;
pkg load image;
originalImage = imread('tiger.jpeg');
% Load an image
% Convert the image to grayscale if it's in color
if size(originalImage, 3) == 3
 grayImage = rgb2gray(originalImage);
else
 grayImage = originalImage;
end
% Define a low-pass filter (e.g., Gaussian filter)
sigma = 2; % Adjust the standard deviation as needed
h = fspecial('gaussian', [5 5], sigma);
% Apply the low-pass filter
smoothedImage = imfilter(double(grayImage), h, 'replicate');
% Define a high-pass filter (e.g., Laplacian filter)
h2 = fspecial('laplacian', 0);
% Apply the high-pass filter
highPassImage = imfilter(double(grayImage), h2, 'replicate');
% Display the results
subplot(1, 3, 1), imshow(grayImage), title('Original Image');
grid on; axis on;
subplot(1, 3, 2), imshow(smoothedImage, []), title('Low-Pass Filtered');
grid on; axis on;
subplot(1, 3, 3), imshow(highPassImage, []), title('High-Pass Filtered');
grid on; axis on;

