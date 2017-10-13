h = [1 1 1; 1 -8 1; 1 1 1];

H2 = ifftshift(freqz2(h, pp(1), pp(2)));

out_2 = dftfilt(f, H2);
out_3 = double_image - out_2 ./ max(out_2(:));

%imshow(out_3)

my_img = out_1 - out_2;

imshow(my_img)
