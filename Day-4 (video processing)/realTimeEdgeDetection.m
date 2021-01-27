clc;
clear;
close all;
 while 1
        % Acquire and display a single image frame.
        img = snapshot(webcam);
        img=rgb2gray(img);
        edgeImg1=edge(img,'canny');
        edgeImg2=edge(img,'sobel');
        edgeImg1=edgeImg1.*255;
        edgeImg2=edgeImg2.*255;
        imshow([img edgeImg1 edgeImg2]);
        
 end