clc;
close all;
clear;
while 1
    %Acquire and Display a single image frame
    img=rgb2gray(snapshot(webcam));
    noisyImg=imnoise(img,'salt & pepper',0.02);
    filteringImg=medfilt2(noisyImg);
    imshow([img noisyImg filteringImg]);
end