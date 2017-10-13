
im = imread('a8.tif');

im = im2bw(im);
b = bwboundaries(im);
b = b{1};

if mod(size(b,1), 2) ~= 0
    b = [b; b(end, :)];
end

%define the number of significative descriptors 

f = fourierdescriptor(b);

f_sign = getsignificativedescriptors(f, numdescr);