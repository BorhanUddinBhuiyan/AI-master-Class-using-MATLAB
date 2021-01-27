clc;
clear;
close all;
video=VideoReader('xylophone.mp4');
numFrames=ceil(video.FrameRate*video.Duration);
h=axes;
str='.jpg';
for i=1:numFrames
    Frame=read(video,i);
    Frame=imresize(Frame,[350 320]);
    filename=strcat(num2str(i),str);
    imwrite(Frame,filename);
   image(Frame,'parent',h);
   pause(1/video.FrameRate);
    
end

