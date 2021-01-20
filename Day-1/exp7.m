clc;
clear;
close all;
method = input('Enter the number (one to three): ','s');
 
switch lower(method)
  case 'one'
    disp('Method is One')
  case 'two'
    disp('Method is two')
  case 'three'
    disp('Method is three')
  otherwise
    disp('Unknown method.')
end

