function out = f(M, N)
y = 0:(M - 1); % Row Coordinates.
x = 0:(N - 1); % Column Coordinates.

[X,Y] = meshgrid(x, y)

out = 255*(exp(-(((X-10).^2)+((Y-10).^2))))


