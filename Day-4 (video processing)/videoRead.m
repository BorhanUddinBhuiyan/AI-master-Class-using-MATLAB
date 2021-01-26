clc;
clear;
close all;
% Construct a multimedia reader object associated with file
% 'xylophone.mp4'.
video=VideoReader('xylophone.mp4');
figure;
h=axes;
%Read video Frames until availabe
while hasFrame(video)
    Frame=readFrame(video);
    image(Frame,'parent',h);
    h.Visible='Off';
    pause(1/video.FrameRate);
end