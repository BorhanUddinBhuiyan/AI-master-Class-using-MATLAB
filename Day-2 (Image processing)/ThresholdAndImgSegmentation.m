clc;
clear;
close all;
%read image
a=imresize(rgb2gray(imread('coins.jpg')),[400 500]);
imhist(a);
figure, imshow(a);
%convert that to binary
b=a>200;
figure, imshow(b);
%remove the noise
c=medfilt2(b,[3 3]);
figure, imshow(c);

%segmanted coins
%convert to unsinged int
d=uint8(c);
e=d.*a; 
figure, imshow(e);
