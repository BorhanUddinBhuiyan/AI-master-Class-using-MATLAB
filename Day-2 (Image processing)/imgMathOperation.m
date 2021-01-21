clc;
clear;
close all;
i=imread('flower.tif');

%Image Addition
a= imadd(i,50);  %imadd(readFile, Intensity_unit)
subplot(2,3,1), imshow(i); 
subplot(2,3,2), imshow(a);

%Image Substract
b= imsubtract(i,50);
subplot(2,3,3), imshow(b);

%Image Divide
J = imdivide(i,3);
subplot(2,3,4), imshow(J);

%Image Multiply
K= immultiply(i,.50);
subplot(2,3,5), imshow(K);

%Image complement
I=im2bw(i);
c=imcomplement(I);
subplot(2,3,6), imshow(c);


%Image Linear Combination
C = imlincomb(2,i);
figure, imshow(C);

