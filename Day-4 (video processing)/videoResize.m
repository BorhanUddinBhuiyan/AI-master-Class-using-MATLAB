clc;
clear;
close all;

a=VideoReader('video.mp4');
disp(a);
figure;
h=axes;
for i=1:a.NumFrames
    Frame=readFrame(a,i);
    Frame=imresize(Frame,[640 420]);
    image(Frame,'Parent',h);
    h.Visible='Off';
    pause(1/a.FrameRate)
end