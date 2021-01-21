clc;
clear;
close all;
imds= imageDatastore('images');% To work with collections of images.
NumberOfImg=numel(imds.Files);
for i = 1:NumberOfImg % Read images using a for loop
    a= readimage(imds,i);
    figure;
    imshow(a); 
end