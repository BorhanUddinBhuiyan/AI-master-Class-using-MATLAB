clc;
clear;
close all;

liveVideo=webcam(1);
%Preview a stream of image frames.
preview(liveVideo);
while 1
    %ACQUIRE & DISPLAY A SINGLE IMAGE FAME.
    img=snapshot(liveVideo);
    msg=readBarcode(img);
    if isempty(msg)
        disp('No Bar-code or QR-code Detected');
    else
        disp(msg);
    end
end 