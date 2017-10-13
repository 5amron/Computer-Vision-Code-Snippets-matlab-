f = imread('a4i.tif');

double_image = im2double(f);

pp = paddedsize(size(f));

[U, V] = dftuv(pp(1), pp(2));

H = -4 * (pi)^2 * (U.^2 + V.^2);

pre = dftfilt(double_image, H);


out_1 = double_image - pre./max(pre(:));
imshow(out_1)