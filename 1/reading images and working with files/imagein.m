function [I, map] = imagein(path)

if (nargin < 1)
path = pwd;
end

firstDirectory = pwd; 
cd(path);

[file, pathname] = uigetfile('*.*', 'Image Open');

if(isequal(pathname, 0)| isequal(file, 0) )
disp('Image input canceled.');
I = [];map = [];

else
[I, map] = imread(file);
end


cd(firstDirectory);
