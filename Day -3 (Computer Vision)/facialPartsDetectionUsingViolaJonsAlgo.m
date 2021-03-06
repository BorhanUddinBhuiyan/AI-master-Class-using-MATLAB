clc;
clear;
close all;
detector=vision.CascadeObjectDetector; %Detect Object using th Voila-Jones algorithm
%reading image
a=imread('3.jpg');
imshow(a); %showing the image
BoundingBox=step(detector,a); %Step response of dynamic systems.
RGB =insertObjectAnnotation(a,'rectangle',BoundingBox, 'Face');
figure;
imshow(RGB);
impixelinfo;