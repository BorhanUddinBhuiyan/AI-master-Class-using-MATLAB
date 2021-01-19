clc
clear
close all;
a=[1 2 4 5];
b=a(3);
a=[10 23 41 42];
whos;
a(3)=45;
length(a);
max(a);
min(a);
A=a.*2;
B=a./b;
c=[1 2 4; 5 4 3; 93 5 3];
max=max(max(c));
min=min(min(c));