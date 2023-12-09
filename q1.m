#b
clear all;
pkg load image
x = imread('car2.jpeg');
subplot(2,2,1);
imshow(x);
title('Displaying Original Image');
grid on
axis on

#c
clear all;
pkg load image;
p = imread('car2.jpeg');
q = imresize(p,0.10);
subplot(2,2,1);
imshow(p);
title('Original IMAGE');
grid on; axis on;
subplot(2,2,2);
imshow(q);
title('Resized IMAGE to scale 0.10');
grid on;
axis on;


#d
clear all;
pkg load image;
p = imread('car2.jpeg');
q = rgb2gray(p);
subplot(2,2,1);
imshow(p);
title("Original COLORED Image");
grid on; axis on;
subplot(2,2,2);
imshow(q);
title("Greyscale Image");
grid on;
axis on;


#e
clear all;
pkg load image;
p = imread('car2.jpeg');
q = im2bw(p);
subplot(2,2,1);
imshow(p);
title("COLORED Image");
grid on; axis on;
subplot(2,2,2);
imshow(q);
title("BLACK & WHITE Image");
grid on;
axis on;



#g
clear all;
pkg load image;
x = imread('car2.jpeg');
r = x(:,:,1);
g = x(:,:,2);
b = x(:,:,3);
k = zeros(size(x,1),size(x,2));
only_r = cat(3,r,k,k);
only_g = cat(3,k,g,k);
only_b = cat(3,k,k,b);
subplot(2,2,1);
imshow(x);
title('ORIGINAL Image');
grid on;
axis on;
subplot(2,2,2);
imshow(only_r);
title('Image In RED PLANE');
grid on;
axis on;
subplot(2,2,3);
imshow(only_g);
title('Image In GREEN PLANE');
grid on;
axis on;
subplot(2,2,4);
imshow(only_b);
title('Image In BLUE PlANE');
grid on;
axis on;


#h
clear all;
pkg load image;
%loading original image
x = imread('car2.jpeg');
%diving image into 3 separate R G B planes
r = x(:,:,1);
g = x(:,:,2);
b = x(:,:,3);
%combining the 3 planes to get a new image
new_combined = cat(3,r,g,b);
subplot(2,1,1);
imshow(new_combined)
title('Image created by combining RGB planes');
grid on;
axis on;



#i
#if statements
x=20;
y = 10;
if x > y,
 disp("X is greater than Y")
else if y > x,
 disp("Y is greater than X")
end
 disp("X is equal to Y")
endif;
disp('');
%For Loops (With break Statement at i==8)
for i = 1:10,
 disp(i);
 if i == 8,
 break;
 endif
end;
disp('');
%While Loops (With continue Statement at i==0)
a = 5;
while i >= -2,
if i == 0,
 i = i-1;
 continue;
 endif
 disp(i);
 i = i-1;
end;
  kjdfjs




#j
clear all;
pkg load image;
%generates an array of 50x50px with random values
a = rand(50)
imwrite(a,'car2.jpeg')
b = imread('car2.jpeg')
imshow(b);







