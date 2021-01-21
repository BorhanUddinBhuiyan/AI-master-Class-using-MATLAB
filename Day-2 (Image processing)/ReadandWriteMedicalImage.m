clc;
close all;
clear;
info = dicominfo('CT-MONO2-16-ankle.dcm');
       Y = dicomread(info);
       figure, imshow(Y,[]);
       imcontrast;
 dicomwrite(Y,'dicomImage.dcm');