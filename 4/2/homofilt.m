function g = homofilt(f, varargin)


if(length(varargin) == 4)
    A = varargin{1};
    B = varargin{2};
    C = varargin{3};
    D0 = varargin{4};
    if(A >= B)
     disp('wrong A and B!')
    end

    pp = paddedsize(size(f));
    [U, V] = dftuv(pp(1), pp(2));

    D = sqrt(U.^2 + V.^2);

    H = A + C./(1 + (D0./(D + eps)).^B);
    
else
	error('error in arguments!')
end


%natural log
f = log(im2double(f) + 1);

% output
g = dftfilt(f, H);
g = exp(g) - 1;


