function h = rgb2hsi(f)


f = im2double(f);
r = f(:, :, 1);
g = f(:, :, 2);
b = f(:, :, 3);

% conversion
var = 0.5*((r - g) + (r - b));
d = sqrt((r - g).^2 + (r - b).*(g - b));
tt = acos(var./(d + eps));

hh = tt;
hh(b > g) = 2*pi - hh(b > g);
hh = hh/(2*pi);

var = min(min(r, g), b);
d = r + g + b;
d(d == 0) = eps;
S = 1 - 3.* var./d;

hh(S == 0) = 0;

I = (r + g + b)/3;

% result
h = cat(3, hh, S, I);