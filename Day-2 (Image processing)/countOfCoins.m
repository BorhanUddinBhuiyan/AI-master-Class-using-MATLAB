clc;
clear;
close all;
%read image
a=imresize(rgb2gray(imread('coins.jpg')),[400 500]);
imhist(a);
figure, imshow(a);
%convert that to binary
b=a>123;
figure, imshow(b);
%remove the noise
c=medfilt2(b,[3 3]);
[L, num]=bwlabel(c);
disp(num);
title(strcat('No of coins =',num2str(num)));

