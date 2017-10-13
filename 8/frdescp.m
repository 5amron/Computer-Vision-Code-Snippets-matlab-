function z = frdescp(s)

[nn, cc] = size(s);

if cc ~= 2 
   error('error!'); 
end
if nn/2 ~= round(nn/2);
   s(end + 1, :) = s(end, :);
   nn = nn + 1;
end


% the transform
x = 0:(nn - 1);
m = ((-1) .^ x)';

% center
s(:, 1) = m .* s(:, 1);
s(:, 2) = m .* s(:, 2);

% converting
s = s(:, 1) + 1i*s(:, 2);

% descriptors
z = fft(s);





