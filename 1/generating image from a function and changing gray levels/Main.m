out = f(21, 21);

ss = mat2gray(out)

a = gray2ind(ss,2^2)
b = gray2ind(ss,2^4)
c = gray2ind(ss,2^6)
d = gray2ind(ss,2^8)


imshow(ss)

imshow(a)
imshow(b)
imshow(c)
imshow(d)