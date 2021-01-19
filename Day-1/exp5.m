clc;
clear;
close all;
a=input('Enter the no a: ');

for i=1:1:10 %syntex:  for start_range:increment/decrement:End_range
    for j=1:10
        a=a+1;
    end
end
disp(a)