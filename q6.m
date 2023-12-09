clear all;
pkg load image;
originalImage = imread('boy.jpeg');
% Display the original image
subplot(2, 3, 1);
imshow(originalImage);
title('Original Image');
grid on; axis on;

% Scaling
scaleFactorY = 0.4; % Scale by a factor of 0.5 in the Y direction
scaledImage = imresize(originalImage, scaleFactorY);
subplot(2, 3, 3);
imshow(scaledImage);
title('Scaled Image');
grid on; axis on;


% Rotation
angle = 45; % Rotate by 45 degrees
rotatedImage = imrotate(originalImage, angle);
subplot(2, 3, 4);
imshow(rotatedImage);
title('Rotated Image');
grid on; axis on;

% Shrinking
shrinkFactor = 0.5; % Shrink by a factor of 0.5
shrunkImage = imresize(originalImage, shrinkFactor);
subplot(2, 3, 5);
imshow(shrunkImage);
title('Shrunk Image');
grid on; axis on;

% Zooming
zoomFactor = 2; % Zoom by a factor of 2
zoomedImage = imresize(originalImage, zoomFactor);
subplot(2, 3, 6);
imshow(zoomedImage);
title('Zoomed Image');
grid on; axis on;


