img = imread('a6.tif');
% imshow(img)

background = imopen(img,strel('disk',15));
img1 = img - background;
% imshow(img1)

img2 = imadjust(img1);
% imshow(img2);

level = graythresh(img2);
bin = im2bw(img2,level);
bin = bwareaopen(bin, 50);
imshow(bin)

info = bwconncomp(bin, 4)