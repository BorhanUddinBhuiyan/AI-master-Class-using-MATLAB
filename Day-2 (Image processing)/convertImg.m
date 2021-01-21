clc;
clear;
close all;
a=imresize(imread('rose.png'),[320 256]);

b=rgb2gray(a);
c=im2bw(b);

subplot(1,3,1);imshow(a);
subplot(1,3,2);imshow(b);
subplot(1,3,3);imshow(c);