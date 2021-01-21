clc;
clear;
close all;

a=imresize(rgb2gray(imread('rose.png')), [320 256]);
J = imnoise(a,'gaussian', 0.02);
M = imnoise(a,'salt & pepper', 0.02);
N = imnoise(a,'Speckle', 0.02);
c=medfilt2(J,[3 3]);

subplot(2,2,1), imshow(J),title('Gaussian');
subplot(2,2,2), imshow(M),title('salt & pepper');
subplot(2,2,3), imshow(N),title('speckle');
subplot(2,2,4), imshow(a),title('Filtered');