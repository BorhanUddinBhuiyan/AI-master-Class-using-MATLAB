clc;
clear;
close all;
a=imread('rose.png');
b=imresize(a,[320 320]);

subplot(1,2,1);imshow(a);
subplot(1,2,2);imshow(b);

impixelinfo;
imwrite(b,'resizedRose.bmp');