function H = imcircle(R, M, N)
% checking R that should be at center of the rectangle
xx  = floor(M/2);
yy = floor(N/2);
if((R > N - yy - 1) | (R > M - xx - 1))
    error('Circle should be smaller!!')
end
if((floor(R) ~= R) | (R < 1))
    error('R should be equal or bigger than 1!')
end
% creating the matrix
x = 0:M-1;
y = 0:N-1;
[Y, X] = meshgrid(y, x);
A = sqrt((X - xx).^2 + (Y - yy).^2);
%output
H =(A <= (R + sqrt(2)/2))&((R - sqrt(2)/2) <= A);

