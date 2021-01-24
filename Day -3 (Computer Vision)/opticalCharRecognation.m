clc;
close all;
clear;

while (1)
%ACQUIRE SINGLE IMAGE
     img=snapshot(webcam(1));
        ocrResults= ocr(img);
     
     if isempty(ocrResults)
         disp('NO text for OCR detetion');
         clc;
     else
        clc;
        disp(ocrResults.Text);
        bboxes = locateText(ocrResults, 'Machines', 'IgnoreCase', true);
        Iocr   = insertShape(img, 'FilledRectangle', bboxes);
        imshow(Iocr)
     end
     
end

 