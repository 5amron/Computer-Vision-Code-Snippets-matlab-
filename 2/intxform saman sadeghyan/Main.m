% programmer : samanSadeghyan
% you should read the proper image s first

t = linspace(0, 1, 256);

map = t.^2;
s = imread('photo_2016-10-21_14-54-54.jpg');

z = intxform (s, map);

imshow(z)