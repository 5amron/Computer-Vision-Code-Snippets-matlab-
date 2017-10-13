% programmer : saman sadeghyan
% Histogram equalization.


function h = histeq2(f)

classin = class(f);
f = im2uint8(f);

d = numel(f);
hh = imhist(f, 256) / d;
c = cumsum(hh); 
h = intxform(f, c);

h = changeclass(classin, h);