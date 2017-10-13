f = imread('a4ii.tif');
% 
% A=0.25;
% B=2;
% C=2;
% D0 = min(M, N)/8;



g = homofilt(f, .25, 2, 2, 40); % multiple arguments

imshow(g, [])tam