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

% file=VideoReader('video.mp4');
% filename=  ('video.mp4');       % to get inforamtaion abt video file
% frm_cnt = file.NumberOfFrames;          % No.of frames in the video file
% h = waitbar(0,'Please wait...');
% font = '.bmp';
% for i=1:frm_cnt
%     frm(i) = VideoReader(filename,i); % read the Video file
%     RGBimg = frame2im(frm(i));  % Convert Frame to image file
%     strNmae = num2str(i);
%     writeName = strcat(strNmae,font);
%     %     imwrite(RGBimg,writeName);
%     %figure(1), imshow(RGBimg); % Color Image
%     grayImg = rgb2gray(RGBimg); %convert gray
%     % figure(2), imshow(grayImg);
%     % median filter is applied for smoothing and unwanted noise removal
%     grayImg = medfilt2(grayImg,[3 3]);
%     %   dynamic thresholding is appiled
%     grayImg = adapthisteq(grayImg);
%     % figure(3), imshow(grayImg);
% end