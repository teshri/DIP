clc;
clear all;
close all;
pkg load image;
img1 = imread('hori.jpeg');
img2 = imread('vertical.jpeg');
subplot(3,2,1);
imshow(img1);
title('Original 1');
grid on; axis on;
subplot(3,2,2);
imshow(img2);
title('Original 2');
grid on; axis on;

#a AND operation on two images
imres1 = imresize(img1, [200,400]);
imres2 = imresize(img2, [200,400]);
result_AND = and(imres1, imres2);
subplot(3,2,3);
imshow(result_AND);
title('AND Operation');
grid on; axis on;

#b OR operation on two images
result_OR = or(imres1,imres2);
subplot(3,2,4);
imshow(result_OR);
title('OR operation');
grid on; axis on;

#c Intersection of two images.
result_Intersection = bitand(imres1,imres2);
subplot(3,2,5);
imshow(result_Intersection);
title('Intersection Operation');
grid on; axis on;

#d NOT operation(Negative Image).
result_NOT = 255 - result_Intersection;
subplot(3,2,6);
imshow(result_NOT);
title('NOT Operation');
grid on; axis on;
