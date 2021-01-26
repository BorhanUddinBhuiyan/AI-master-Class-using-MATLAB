clc;
clear;
close all;
video=VideoWriter('Output.avi','MPEG-4');
open(video); %open a file
numFrames=100;
str='.jpg';
figure;
h=axes;
for i=1:numFrames
   filename=strcat(num2str(i),str);
   Frame=imread(filename);
   image(Frame,'parent',h);
   h.Visible='Off';
   % Write each frame to the file.
       currentFrame = getframe;
       writeVideo(video,currentFrame);
   
    pause(1/video.FrameRate)
end

close(video); %close that file