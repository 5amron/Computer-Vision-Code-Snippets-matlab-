function laplacian_mask = genratingLaplacian(n)

c = (n^2) - 1;
laplacian_mask = ones(n);
laplacian_mask((n + 1)/2,(n + 1)/2) = -c;