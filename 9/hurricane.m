
template = imread('a9ii.tif');
background = imread('a9i.tif');


x1 = size(background, 2); 
y1 = size(background, 1);

x2 = size(template, 2);
y2 = size(template, 1);


gg = fft2(background);

bb = fft2(template, y1, x1);

c = real(ifft2((gg.*conj(bb))./abs(gg.*conj(bb))));


[max_c, imax]   = max(abs(c(:)));
[yp, xp] = find(c == max(c(:)));

haxes = axes;

position = [xp(1), yp(1), x2, y2];


imshow(background, 'Parent', haxes);
imrect(haxes, position);


