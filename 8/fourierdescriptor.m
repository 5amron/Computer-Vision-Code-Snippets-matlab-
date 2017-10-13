function descriptors = fourierdescriptor( boundary )
    np = size(boundary, 1);

    s = boundary(:, 1) + 1i*boundary(:, 2);

    descriptors = fft(s);

    descriptors = [descriptors((1+(np/2)):end); descriptors(1:np/2)];
end
