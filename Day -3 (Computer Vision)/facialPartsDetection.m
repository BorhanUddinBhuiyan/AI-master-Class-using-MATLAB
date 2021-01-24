clc;
clear;
close all;
%reading image
a=imread('2.jpg');
%INITIALIZAITON OF FACE PART DETECTION ALGORITHM
detector=vision.CascadeObjectDetector; %default 'Face' %Detect Object using th Voila-Jones algorithm
eyeDetector=vision.CascadeObjectDetector('EyePairBig');
NoseDetector=vision.CascadeObjectDetector('Nose');
imshow(a); %showing the image

%DETECTING PARTS FORM THE IMAGE
BoundingBox=step(detector,a); %Step response of dynamic systems.
BoundingBoxEye=step(eyeDetector,a);
BoundingBoxNose=step(NoseDetector,a);

%CROPING & SAVING THE FACE 
I = imcrop(a,BoundingBox);
imwrite(I,'face.png');
%GIVING THE BOX & NOTATION
RGB =insertObjectAnnotation(a,'rectangle',BoundingBox, 'Face');
RGB =insertObjectAnnotation(RGB,'rectangle',BoundingBoxEye, 'Eye');
RGB =insertObjectAnnotation(RGB,'rectangle',BoundingBoxNose, 'Nose');

figure;
imshow(RGB);
impixelinfo;