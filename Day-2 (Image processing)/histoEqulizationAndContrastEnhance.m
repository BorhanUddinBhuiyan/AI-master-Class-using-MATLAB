clc;
clear;
close all;
a=imread('cameraman.tif');
b=imadjust(a);
c=histeq(a);
d=adapthisteq(a);
i=[a b c d];
figure, imshow(i);
title('Orginal image and Enhanced Images using "imadjust", "histeq", "adapthisteq"');