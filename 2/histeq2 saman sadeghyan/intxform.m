% programmer : samanSadeghyan
% intensity transformation.

function z = intxform (s, map)

classin = class(s);
s = im2double(s);


x = linspace(0, 1, numel(map))';
y = map(:);

varargin = interp1(x, y, s, 'linear');

z = changeclass(classin, varargin);
