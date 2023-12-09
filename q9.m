clc;
clear all;
pkg load image;
pkg load signal;
% Read an input image
originalImage = imread('boy.jpeg');
img1=imread('boy.jpeg')
% Convert the image to double for processing
originalImage = im2double(originalImage);
% Display the original image
figure;
subplot(2, 3, 1);
imshow(originalImage);
title('Original Image');
% Apply FFT on the image
fftImage = fft2(originalImage);
% Shift the zero frequency component to the center
shiftedFFT = fftshift(fftImage);
% Display the magnitude spectrum
magnitudeSpectrum = log(1 + abs(shiftedFFT));
subplot(2, 3, 2);
imshow(magnitudeSpectrum);

title('Magnitude Spectrum');
[low_a,low_b]=butter(2, 0.15,'low');
[high_a,high_b]=butter(2, 0.15,'high');
low_pass_image=filter2(low_b,low_a,img1)
high_pass_image=filter2(high_b,high_a,img1)
% Create a low-pass filter in frequency domain
subplot(2, 3, 3);
imshow(low_pass_image);
title('Low-pass Filter');
subplot(2, 3, 4);
imshow(high_pass_image);
title('High-pass filter');
img2=fft2(img1)
img3=ifft2(img2)
subplot(2, 3, 5);
imshow(img3,[]);
title('Reconstructed image');
