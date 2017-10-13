function s = ifrdescp(z, P)

nn = length(z);

% checking
if nargin == 1 || P > nn
   P = nn;
end


% transformation
x = 0:(nn - 1);
m = ((-1) .^ x)';


d = rouP((nn - P)/2);

z(1:d) = 0;
z(nn - d + 1:nn) = 0;

zz = ifft(z);
s(:, 1) = real(zz);


s(:, 2) = imag(zz);
s(:, 1) = m.*s(:, 1);
s(:, 2) = m.*s(:, 2);



