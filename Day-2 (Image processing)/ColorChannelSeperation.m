clc;
clear;
close all;
i=imread('rose.png');
a=imresize(i,[320 256]);
%speration of 3 Primary colors
r=a(:,:,1); %Here colon ':' means taking all row col position matrix values
g=a(:,:,2);
b=a(:,:,3);

%Reading the speration color
R(:,:,1)=r;
R(:,:,2)=0;
R(:,:,3)=0;
%figure to show only red color's image
figure, imshow(R,[]);

%Reading the speration color
G(:,:,2)=g;
G(:,:,1)=0;
G(:,:,3)=0;
%figure to show only Green color's image
figure, imshow(G,[]);

%Reading the speration color
B(:,:,3)=b;
B(:,:,1)=0;
B(:,:,2)=0;
%figure to show only Blue color's image
figure, imshow(B,[]);

