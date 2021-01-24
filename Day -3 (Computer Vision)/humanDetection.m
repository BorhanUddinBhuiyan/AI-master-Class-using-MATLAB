clc;
clear;
close all;
        % Construct a webcam object
        camObj = webcam(1);
        
        % Preview a stream of image frames.
%         preview(camObj);
        while(1)
            % Acquire and display a single image frame.
            img = snapshot(camObj);
            %DETECTING FACE PARTS FROM THE VIDEO
            BoundingBox=step(vision.CascadeObjectDetector,img);
            if isempty(BoundingBox)
                disp('Human is not detected')
            else
                disp('Human is detected')
                %GIVING THE BOX & NOTATION
                RGB =insertObjectAnnotation(img,'rectangle',BoundingBox, 'Face');
                RGB =insertObjectAnnotation(RGB,'rectangle',step(vision.CascadeObjectDetector('EyePairBig'),img), 'Eye');
                RGB =insertObjectAnnotation(RGB,'rectangle',step(vision.CascadeObjectDetector('Nose'),img), 'Nose');
                imshow(RGB);
            end
        end 